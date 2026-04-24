# Inferred from performance & pipeline pragmas/directives
set_directive_array_partition street_fighter_cnn/local_input_0 -dim=1 -type=cyclic -factor=5 local_input_0
set_directive_loop_flatten street_fighter_cnn/CONV1_OUT
set_directive_loop_flatten street_fighter_cnn/POOL1
set_directive_array_partition street_fighter_cnn/pool1_out_0 -dim=2 -type=cyclic -factor=3 pool1_out_0
set_directive_loop_flatten street_fighter_cnn/CONV2_OUT
set_directive_array_partition street_fighter_cnn/conv2_out -dim=2 -type=complete conv2_out
