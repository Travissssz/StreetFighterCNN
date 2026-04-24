#include "cnn_top.h"
#include "weights.h"
#include <cmath>

static data_t relu(data_t x) {
    return (x > (data_t)0) ? x : (data_t)0;
}

extern "C" {
void street_fighter_cnn(
    volatile data_t *input, 
    int     &prediction,
    conf_t  &confidence,
    data_t  &dbg_in0,
    data_t  &dbg_l1_0,
    data_t  &dbg_gap0,
    data_t  &dbg_score0
) {
//Inference definations
#pragma HLS INTERFACE m_axi port=input depth=120 bundle=gmem0 offset=slave max_read_burst_length=16
#pragma HLS INTERFACE s_axilite port=input      bundle=control
#pragma HLS INTERFACE s_axilite port=prediction bundle=control
#pragma HLS INTERFACE s_axilite port=confidence bundle=control
#pragma HLS INTERFACE s_axilite port=dbg_in0    bundle=control
#pragma HLS INTERFACE s_axilite port=dbg_l1_0   bundle=control
#pragma HLS INTERFACE s_axilite port=dbg_gap0   bundle=control
#pragma HLS INTERFACE s_axilite port=dbg_score0 bundle=control
#pragma HLS INTERFACE s_axilite port=return     bundle=control

#pragma HLS ALLOCATION operation instances=mul limit=200

    //Local buffers
    data_t local_input[IN_CH][IN_LEN];
    #pragma HLS ARRAY_PARTITION variable=local_input complete dim=1

    data_t conv1_out[L1_CH][IN_LEN];
    #pragma HLS ARRAY_PARTITION variable=conv1_out cyclic factor=2 dim=1

    data_t pool1_out[L1_CH][L1_LEN];
    #pragma HLS ARRAY_PARTITION variable=pool1_out cyclic factor=2 dim=1

    data_t conv2_out[L2_CH][L2_LEN];
    

    data_t final_scores[NUM_CLASSES];
    #pragma HLS ARRAY_PARTITION variable=final_scores complete dim=1

    //Load input
    LOAD_INPUT: for (int i = 0; i < (IN_CH * IN_LEN); i++) {
        #pragma HLS PIPELINE II=1
        data_t val = input[i];
        local_input[i / IN_LEN][i % IN_LEN] = val;
        if (i == 0) dbg_in0 = val;
    }

    //CONV1
    CONV1_OUT: for (int out_c = 0; out_c < L1_CH; out_c++) {
        for (int t = 0; t < IN_LEN; t++) {
            #pragma HLS PIPELINE II=1
            acc_t sum = (acc_t)CONV1_B[out_c];
            CONV1_INNER: for (int in_c = 0; in_c < IN_CH; in_c++) {
                #pragma HLS UNROLL
                for (int k = 0; k < KERNEL1_SIZE; k++) {
                    int idx = t + k - 2;
                    data_t val = (idx >= 0 && idx < IN_LEN) ? local_input[in_c][idx] : (data_t)0;
                    sum += (acc_t)val * (acc_t)CONV1_W[out_c][in_c][k];
                }
            }
            conv1_out[out_c][t] = relu((data_t)sum);
        }
    }

    //POOL1
    POOL1: for (int c = 0; c < L1_CH; c++) {
        for (int t = 0; t < L1_LEN; t++) {
            #pragma HLS PIPELINE II=1
            data_t a = conv1_out[c][2 * t];
            data_t b = conv1_out[c][2 * t + 1];
            pool1_out[c][t] = (a > b) ? a : b;
        }
    }
    dbg_l1_0 = pool1_out[0][0];

    //CONV2
    CONV2_OUT: for (int out_c = 0; out_c < L2_CH; out_c++) {
        for (int t = 0; t < L2_LEN; t++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS ALLOCATION operation instances=mul limit=96
            acc_t sum = (acc_t)CONV2_B[out_c];
            CONV2_INNER: for (int in_c = 0; in_c < L1_CH; in_c++) {
                for (int k = 0; k < KERNEL2_SIZE; k++) {
                    int idx = t + k - 1;
                    data_t val = (idx >= 0 && idx < L2_LEN) ? pool1_out[in_c][idx] : (data_t)0;
                    #pragma HLS BIND_OP variable=val op=mul impl=fabric
                    sum += (acc_t)val * (acc_t)CONV2_W[out_c][in_c][k];
                }
            }
            conv2_out[out_c][t] = relu((data_t)sum);
        }
    }

    //GAP + FC
    FC_LAYER: for (int i = 0; i < NUM_CLASSES; i++) {
        acc_t score = (acc_t)FC_B[i];
        for (int j = 0; j < L2_CH; j++) {
            #pragma HLS PIPELINE II=1
            acc_t gap_sum = 0;
            for (int t = 0; t < L2_LEN; t++) {
                #pragma HLS UNROLL
                gap_sum += (acc_t)conv2_out[j][t];
            }
            data_t gap_val = (data_t)(gap_sum / (acc_t)L2_LEN);
            score += (acc_t)gap_val * (acc_t)FC_W[i][j];
            if (i == 0 && j == 0) dbg_gap0 = gap_val;
        }
        final_scores[i] = (data_t)score;
        if (i == 0) dbg_score0 = (data_t)score;
    }

    //ARGMAX
    int best_class = 0;
    data_t max_val = final_scores[0];

    ARGMAX: for (int i = 1; i < NUM_CLASSES; i++) {
        #pragma HLS PIPELINE II=1
        data_t s = final_scores[i];
        if (s > max_val) {
            max_val    = s;
            best_class = i;
        }
    }
    prediction = best_class;

    //CONFIDENCE
    float f_scores[NUM_CLASSES];
    #pragma HLS ARRAY_PARTITION variable=f_scores complete dim=1

    SCORES_TO_FLOAT: for (int i = 0; i < NUM_CLASSES; i++) {
        #pragma HLS UNROLL
        f_scores[i] = (float)final_scores[i];
    }

    float f_max = f_scores[best_class];

    float exp_sum = 0.0f;
    SOFTMAX_SUM: for (int i = 0; i < NUM_CLASSES; i++) {
        #pragma HLS UNROLL
        exp_sum += std::exp(f_scores[i] - f_max);
    }

    float f_conf = (1.0f / exp_sum) * 100.0f;
    if (f_conf > 100.0f) f_conf = 100.0f;
    if (f_conf <   0.0f) f_conf =   0.0f;

    confidence = (conf_t)f_conf;
}
}
