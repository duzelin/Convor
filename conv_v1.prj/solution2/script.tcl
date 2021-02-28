############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv_v1.prj
set_top Systolic_Array_Conv
add_files conv_v1.cpp
add_files -tb conv_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_dataflow -default_channel fifo -fifo_depth 2 -scalar_fifo_depth 2 -start_fifo_depth 2 -strict_mode off
source "./conv_v1.prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
