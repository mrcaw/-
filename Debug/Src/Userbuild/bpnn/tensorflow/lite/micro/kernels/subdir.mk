################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/activations_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_n_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/add_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arg_min_max_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/assign_variable.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_matmul_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/batch_to_space_nd_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_args_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/broadcast_to_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/call_once_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cast_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceil_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.src
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/circular_buffer_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/comparisons_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/concatenation_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/conv_test_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/cumsum_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/decompress_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depth_to_space_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/depthwise_conv_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/dequantize_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/detection_postprocess_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/div_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.d
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elementwise_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/elu_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/embedding_lookup_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ethosu.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/exp_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/expand_dims_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fill_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_div_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_mod_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/floor_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/fully_connected_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_nd_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/gather_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/hard_swish_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/if_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_runner.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/kernel_util.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2_pool_2d_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/l2norm_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/leaky_relu_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/log_softmax_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logical_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/logistic_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/lstm_eval_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/maximum_minimum_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/micro_tensor_utils.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mirror_pad_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/mul_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/neg_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pack_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pad_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/pooling_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/prelu_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantization_util_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/quantize_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/read_variable.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reduce_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/reshape_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_bilinear_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/resize_nearest_neighbor_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/round_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/select_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/shape_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/slice_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/softmax_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_batch_nd_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/space_to_depth_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/split_v_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squared_difference_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/squeeze_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/strided_slice_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/sub_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/svdf_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/tanh_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_conv_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/transpose_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/unpack_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/var_handle.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/while_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/zeros_like_test.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels

