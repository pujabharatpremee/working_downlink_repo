############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project config_encoder
set_top config_encoder
add_files config_encoder.cpp
open_solution "din_32_dout_128"
set_part {xczu21dr-ffvd1156-2-e} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./config_encoder/din_32_dout_128/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
