# Convor
A Practical Project of Accelerator on FPGA for Xilinx Winter Camp.

I have learned some technics about useing HLS to reorganize the C++ code to generate efficient accelerator on FPGA. And I am interested in accelerating the inference of CNN model on embedded platforms. In addition, the tutorial from CECA of PKU which has introduced some basic idea of convolution accelerator. So, I decide to perfect the design in the tutorial by adding some components including buffer management, pooling layer, full connection layer and so on. The target is to accelerate the tiny-yolov2 model on the ZCU104 platform since the brief architecture of tiny-yolov2 can simplify many problems. If there is enough time, I would like to try using data quantification that it can take advantage of the int8 to replace the float data type, as well as drawing support from Vitis vision library to accelerate the preprocess of input image.

# Progress
By the end of February, I have completed the construction of configurable convolution function based on systolic array for various input and output sizes. This will help me to explore the design space for specific network in the next future.

# Using Systolic Array implement flexible convolution kernel
```
Input: In_ddr, W_ddr, Out_ddr, Rin, Cin, CHin, Rout, Cout, CHout, padding, stride
/*
* In_ddr: Memory address of input feature map 
* W_ddr: Memory address of weights for convolution
* Out_ddr: Memory address of output feature map
* Rin: row # of input feature map
* Cin: col # of input feature map
* CHin: channel # of input feature map
* Rout: row # of output feature map
* Cout: col # of output feature map
* CHout: channel # of output feature map
* padding: padding pixel # on the edge of input feature map
* stride: The step size of convolution window moving
*/
Input Buffer[Input_Buffer_Size];
Weight Buffer[Input_Buffer_Size];
Output Buffer[Input_Buffer_Size];

//TODO

```
![avatar](./doc/脉冲阵列2.jpg)
![avatar](./doc/脉冲阵列1.jpg)