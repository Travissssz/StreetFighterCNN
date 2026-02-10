# GENETARED BY NNDCT, DO NOT EDIT!

import torch
from torch import tensor
import pytorch_nndct as py_nndct

class StreetFighterCNN(py_nndct.nn.NndctQuantModel):
    def __init__(self):
        super(StreetFighterCNN, self).__init__()
        self.module_0 = py_nndct.nn.Input() #StreetFighterCNN::input_0(StreetFighterCNN::nndct_input_0)
        self.module_1 = py_nndct.nn.Conv1d(in_channels=6, out_channels=32, kernel_size=[3], stride=[1], padding=[1], dilation=[1], groups=1, bias=True) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/Conv1d[0]/ret.3(StreetFighterCNN::nndct_conv1d_1)
        self.module_2 = py_nndct.nn.BatchNorm(num_features=32, eps=0.0, momentum=0.1) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/BatchNorm1d[1]/ret.5(StreetFighterCNN::nndct_batch_norm_2)
        self.module_3 = py_nndct.nn.ReLU(inplace=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/ReLU[2]/ret.7(StreetFighterCNN::nndct_relu_3)
        self.module_4 = py_nndct.nn.MaxPool1d(kernel_size=[4], stride=[4], padding=[0], dilation=[1], ceil_mode=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/MaxPool1d[3]/ret.9(StreetFighterCNN::nndct_maxpool1d_4)
        self.module_5 = py_nndct.nn.Conv1d(in_channels=32, out_channels=128, kernel_size=[3], stride=[1], padding=[1], dilation=[1], groups=1, bias=True) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/Conv1d[5]/ret.11(StreetFighterCNN::nndct_conv1d_5)
        self.module_6 = py_nndct.nn.BatchNorm(num_features=128, eps=0.0, momentum=0.1) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/BatchNorm1d[6]/ret.13(StreetFighterCNN::nndct_batch_norm_6)
        self.module_7 = py_nndct.nn.ReLU(inplace=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/ReLU[7]/ret.15(StreetFighterCNN::nndct_relu_7)
        self.module_8 = py_nndct.nn.MaxPool1d(kernel_size=[3], stride=[3], padding=[0], dilation=[1], ceil_mode=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/MaxPool1d[8]/ret.17(StreetFighterCNN::nndct_maxpool1d_8)
        self.module_9 = py_nndct.nn.Conv1d(in_channels=128, out_channels=96, kernel_size=[3], stride=[1], padding=[1], dilation=[1], groups=1, bias=True) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/Conv1d[10]/ret.19(StreetFighterCNN::nndct_conv1d_9)
        self.module_10 = py_nndct.nn.BatchNorm(num_features=96, eps=0.0, momentum=0.1) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/BatchNorm1d[11]/ret.21(StreetFighterCNN::nndct_batch_norm_10)
        self.module_11 = py_nndct.nn.ReLU(inplace=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/ReLU[12]/ret.23(StreetFighterCNN::nndct_relu_11)
        self.module_12 = py_nndct.nn.MaxPool1d(kernel_size=[3], stride=[3], padding=[0], dilation=[1], ceil_mode=False) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/MaxPool1d[13]/ret.25(StreetFighterCNN::nndct_maxpool1d_12)
        self.module_13 = py_nndct.nn.Module('aten::adaptive_avg_pool1d') #StreetFighterCNN::StreetFighterCNN/Sequential[model]/AdaptiveAvgPool1d[15]/ret.27(StreetFighterCNN::aten_adaptive_avg_pool1d_13)
        self.module_14 = py_nndct.nn.Module('nndct_flatten') #StreetFighterCNN::StreetFighterCNN/Sequential[model]/Flatten[16]/ret.29(StreetFighterCNN::nndct_flatten_14)
        self.module_15 = py_nndct.nn.Linear(in_features=96, out_features=10, bias=True) #StreetFighterCNN::StreetFighterCNN/Sequential[model]/Linear[17]/ret(StreetFighterCNN::nndct_dense_15)

    @py_nndct.nn.forward_processor
    def forward(self, *args):
        output_module_0 = self.module_0(input=args[0])
        output_module_0 = self.module_1(output_module_0)
        output_module_0 = self.module_2(output_module_0)
        output_module_0 = self.module_3(output_module_0)
        output_module_0 = self.module_4(output_module_0)
        output_module_0 = self.module_5(output_module_0)
        output_module_0 = self.module_6(output_module_0)
        output_module_0 = self.module_7(output_module_0)
        output_module_0 = self.module_8(output_module_0)
        output_module_0 = self.module_9(output_module_0)
        output_module_0 = self.module_10(output_module_0)
        output_module_0 = self.module_11(output_module_0)
        output_module_0 = self.module_12(output_module_0)
        output_module_0 = self.module_13({'self': output_module_0,'output_size': [1]})
        output_module_0 = self.module_14(input=output_module_0, start_dim=1, end_dim=-1)
        output_module_0 = self.module_15(output_module_0)
        return output_module_0
