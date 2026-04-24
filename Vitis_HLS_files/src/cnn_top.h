#ifndef CNN_TOP_H
#define CNN_TOP_H

#include <ap_fixed.h>
#include <stdint.h>

typedef ap_fixed<16, 6>  data_t;
typedef ap_fixed<32, 10> acc_t;
typedef ap_ufixed<16, 7> conf_t;

#define IN_CH 6
#define IN_LEN 20

#define L1_CH 64
#define L2_CH 32

#define KERNEL1_SIZE 5
#define KERNEL2_SIZE 3
#define NUM_CLASSES 10

#define L1_LEN 10
#define L2_LEN 10

extern "C" {
    void street_fighter_cnn(
        volatile data_t *input,
        int     &prediction,
        conf_t  &confidence,  
        data_t  &dbg_in0,
        data_t  &dbg_l1_0,
        data_t  &dbg_gap0,
        data_t  &dbg_score0
    );
}

#endif
