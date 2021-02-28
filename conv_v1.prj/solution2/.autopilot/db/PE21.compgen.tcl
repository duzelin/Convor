# This script segment is generated automatically by AutoPilot

set id 65
set name Systolic_Array_Cocud
set corename simcore_fadd
set op fadd
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 66
set name Systolic_Array_CodEe
set corename simcore_fmul
set op fmul
set stage_num 2
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name W_pre_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_pre_V \
    op interface \
    ports { W_pre_V_dout { I 32 vector } W_pre_V_empty_n { I 1 bit } W_pre_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name In_pre_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_In_pre_V \
    op interface \
    ports { In_pre_V_dout { I 32 vector } In_pre_V_empty_n { I 1 bit } In_pre_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name W_next_V8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_next_V8 \
    op interface \
    ports { W_next_V8_din { O 32 vector } W_next_V8_full_n { I 1 bit } W_next_V8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name In_next_V50 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_In_next_V50 \
    op interface \
    ports { In_next_V50_din { O 32 vector } In_next_V50_full_n { I 1 bit } In_next_V50_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name row \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row \
    op interface \
    ports { row_dout { I 32 vector } row_empty_n { I 1 bit } row_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name cho \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cho \
    op interface \
    ports { cho_dout { I 32 vector } cho_empty_n { I 1 bit } cho_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name O_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_O_V \
    op interface \
    ports { O_V_din { O 32 vector } O_V_full_n { I 1 bit } O_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_c_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c_s \
    op interface \
    ports { p_c_s_dout { I 32 vector } p_c_s_empty_n { I 1 bit } p_c_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_chin_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chin_s \
    op interface \
    ports { p_chin_s_dout { I 32 vector } p_chin_s_empty_n { I 1 bit } p_chin_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_k_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_k_s \
    op interface \
    ports { p_k_s_dout { I 32 vector } p_k_s_empty_n { I 1 bit } p_k_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name row_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_out \
    op interface \
    ports { row_out_din { O 32 vector } row_out_full_n { I 1 bit } row_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name cho_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out \
    op interface \
    ports { cho_out_din { O 32 vector } cho_out_full_n { I 1 bit } cho_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name cho_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out1 \
    op interface \
    ports { cho_out1_din { O 32 vector } cho_out1_full_n { I 1 bit } cho_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_c_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c_out \
    op interface \
    ports { p_c_out_din { O 32 vector } p_c_out_full_n { I 1 bit } p_c_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_c_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c_out2 \
    op interface \
    ports { p_c_out2_din { O 32 vector } p_c_out2_full_n { I 1 bit } p_c_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_chin_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chin_out \
    op interface \
    ports { p_chin_out_din { O 32 vector } p_chin_out_full_n { I 1 bit } p_chin_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_chin_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chin_out3 \
    op interface \
    ports { p_chin_out3_din { O 32 vector } p_chin_out3_full_n { I 1 bit } p_chin_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_chout_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chout_out \
    op interface \
    ports { p_chout_out_din { O 32 vector } p_chout_out_full_n { I 1 bit } p_chout_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_chout_out4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chout_out4 \
    op interface \
    ports { p_chout_out4_din { O 32 vector } p_chout_out4_full_n { I 1 bit } p_chout_out4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name p_k_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_k_out \
    op interface \
    ports { p_k_out_din { O 32 vector } p_k_out_full_n { I 1 bit } p_k_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name p_k_out5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_k_out5 \
    op interface \
    ports { p_k_out5_din { O 32 vector } p_k_out5_full_n { I 1 bit } p_k_out5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name p_r_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_r_out \
    op interface \
    ports { p_r_out_din { O 32 vector } p_r_out_full_n { I 1 bit } p_r_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_r_out6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_r_out6 \
    op interface \
    ports { p_r_out6_din { O 32 vector } p_r_out6_full_n { I 1 bit } p_r_out6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_chout_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chout_s \
    op interface \
    ports { p_chout_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_r_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_r_s \
    op interface \
    ports { p_r_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


