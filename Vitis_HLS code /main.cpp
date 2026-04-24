#include <iostream>
#include <iomanip>
#include "cnn_top.h"
#include "test_samples.h"

int main() {
    int total_passed = 0;
    const int num_tests = NUM_TEST_SAMPLES;

    std::cout << "\n--- STARTING VERIFICATION ---" << std::endl;

    for (int i = 0; i < num_tests; i++) {
        int    prediction = -1;
        conf_t confidence = 0;   

        data_t dbg_in0    = 0;
        data_t dbg_l1_0   = 0;
        data_t dbg_gap0   = 0;
        data_t dbg_score0 = 0;

        street_fighter_cnn(
            (volatile data_t*)test_samples[i].data,
            prediction,
            confidence,
            dbg_in0,
            dbg_l1_0,
            dbg_gap0,
            dbg_score0
        );

        bool pass = (prediction == test_samples[i].target_label);
        total_passed += pass ? 1 : 0;

        std::cout << "Sample: " << std::setw(20) << test_samples[i].name
                  << " | Pred: "   << prediction
                  << " | Target: " << test_samples[i].target_label
                  << " | Confidence: " << std::fixed << std::setprecision(2)
                  << (float)confidence << "%"
                  << (pass ? " [PASS]" : " [FAIL]")
                  << '\n';

        std::cout << "    dbg_in0="    << std::setprecision(6) << (float)dbg_in0
                  << " | dbg_l1_0="   << (float)dbg_l1_0
                  << " | dbg_gap0="   << (float)dbg_gap0
                  << " | dbg_score0=" << (float)dbg_score0
                  << '\n';
    }

    float accuracy = (100.0f * total_passed) / num_tests;
    std::cout << "\n--- VERIFICATION COMPLETE ---" << std::endl;
    std::cout << "Accuracy: " << std::fixed << std::setprecision(2)
              << accuracy << "% (" << total_passed << "/" << num_tests << ")"
              << std::endl;

    return 0;
}
