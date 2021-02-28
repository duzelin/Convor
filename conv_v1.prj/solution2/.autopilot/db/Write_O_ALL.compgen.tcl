# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 429 \
    name Out_buf \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_buf \
    op interface \
    ports { Out_buf_address0 { O 9 vector } Out_buf_ce0 { O 1 bit } Out_buf_we0 { O 1 bit } Out_buf_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_buf'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name O_0_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_0_0_V \
    op interface \
    ports { O_0_0_V_dout { I 32 vector } O_0_0_V_empty_n { I 1 bit } O_0_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name O_0_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_0_1_V \
    op interface \
    ports { O_0_1_V_dout { I 32 vector } O_0_1_V_empty_n { I 1 bit } O_0_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name O_0_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_0_2_V \
    op interface \
    ports { O_0_2_V_dout { I 32 vector } O_0_2_V_empty_n { I 1 bit } O_0_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name O_0_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_0_3_V \
    op interface \
    ports { O_0_3_V_dout { I 32 vector } O_0_3_V_empty_n { I 1 bit } O_0_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name O_1_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_1_0_V \
    op interface \
    ports { O_1_0_V_dout { I 32 vector } O_1_0_V_empty_n { I 1 bit } O_1_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name O_1_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_1_1_V \
    op interface \
    ports { O_1_1_V_dout { I 32 vector } O_1_1_V_empty_n { I 1 bit } O_1_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name O_1_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_1_2_V \
    op interface \
    ports { O_1_2_V_dout { I 32 vector } O_1_2_V_empty_n { I 1 bit } O_1_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name O_1_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_1_3_V \
    op interface \
    ports { O_1_3_V_dout { I 32 vector } O_1_3_V_empty_n { I 1 bit } O_1_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name O_2_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_2_0_V \
    op interface \
    ports { O_2_0_V_dout { I 32 vector } O_2_0_V_empty_n { I 1 bit } O_2_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name O_2_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_2_1_V \
    op interface \
    ports { O_2_1_V_dout { I 32 vector } O_2_1_V_empty_n { I 1 bit } O_2_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name O_2_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_2_2_V \
    op interface \
    ports { O_2_2_V_dout { I 32 vector } O_2_2_V_empty_n { I 1 bit } O_2_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name O_2_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_2_3_V \
    op interface \
    ports { O_2_3_V_dout { I 32 vector } O_2_3_V_empty_n { I 1 bit } O_2_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name O_3_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_3_0_V \
    op interface \
    ports { O_3_0_V_dout { I 32 vector } O_3_0_V_empty_n { I 1 bit } O_3_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name O_3_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_3_1_V \
    op interface \
    ports { O_3_1_V_dout { I 32 vector } O_3_1_V_empty_n { I 1 bit } O_3_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name O_3_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_3_2_V \
    op interface \
    ports { O_3_2_V_dout { I 32 vector } O_3_2_V_empty_n { I 1 bit } O_3_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name O_3_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_O_3_3_V \
    op interface \
    ports { O_3_3_V_dout { I 32 vector } O_3_3_V_empty_n { I 1 bit } O_3_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
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
    id 447 \
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
    id 448 \
    name p_chout_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_chout_s \
    op interface \
    ports { p_chout_s_dout { I 32 vector } p_chout_s_empty_n { I 1 bit } p_chout_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name Out_buf_cho \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Out_buf_cho \
    op interface \
    ports { Out_buf_cho { I 32 vector } } \
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


