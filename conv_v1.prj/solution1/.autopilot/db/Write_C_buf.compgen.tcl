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
    id 729 \
    name Out_buf \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Out_buf \
    op interface \
    ports { Out_buf_address0 { O 9 vector } Out_buf_ce0 { O 1 bit } Out_buf_we0 { O 1 bit } Out_buf_d0 { O 32 vector } Out_buf_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_buf'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name Out_ddr \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Out_ddr \
    op interface \
    ports { m_axi_Out_ddr_AWVALID { O 1 bit } m_axi_Out_ddr_AWREADY { I 1 bit } m_axi_Out_ddr_AWADDR { O 32 vector } m_axi_Out_ddr_AWID { O 1 vector } m_axi_Out_ddr_AWLEN { O 32 vector } m_axi_Out_ddr_AWSIZE { O 3 vector } m_axi_Out_ddr_AWBURST { O 2 vector } m_axi_Out_ddr_AWLOCK { O 2 vector } m_axi_Out_ddr_AWCACHE { O 4 vector } m_axi_Out_ddr_AWPROT { O 3 vector } m_axi_Out_ddr_AWQOS { O 4 vector } m_axi_Out_ddr_AWREGION { O 4 vector } m_axi_Out_ddr_AWUSER { O 1 vector } m_axi_Out_ddr_WVALID { O 1 bit } m_axi_Out_ddr_WREADY { I 1 bit } m_axi_Out_ddr_WDATA { O 32 vector } m_axi_Out_ddr_WSTRB { O 4 vector } m_axi_Out_ddr_WLAST { O 1 bit } m_axi_Out_ddr_WID { O 1 vector } m_axi_Out_ddr_WUSER { O 1 vector } m_axi_Out_ddr_ARVALID { O 1 bit } m_axi_Out_ddr_ARREADY { I 1 bit } m_axi_Out_ddr_ARADDR { O 32 vector } m_axi_Out_ddr_ARID { O 1 vector } m_axi_Out_ddr_ARLEN { O 32 vector } m_axi_Out_ddr_ARSIZE { O 3 vector } m_axi_Out_ddr_ARBURST { O 2 vector } m_axi_Out_ddr_ARLOCK { O 2 vector } m_axi_Out_ddr_ARCACHE { O 4 vector } m_axi_Out_ddr_ARPROT { O 3 vector } m_axi_Out_ddr_ARQOS { O 4 vector } m_axi_Out_ddr_ARREGION { O 4 vector } m_axi_Out_ddr_ARUSER { O 1 vector } m_axi_Out_ddr_RVALID { I 1 bit } m_axi_Out_ddr_RREADY { O 1 bit } m_axi_Out_ddr_RDATA { I 32 vector } m_axi_Out_ddr_RLAST { I 1 bit } m_axi_Out_ddr_RID { I 1 vector } m_axi_Out_ddr_RUSER { I 1 vector } m_axi_Out_ddr_RRESP { I 2 vector } m_axi_Out_ddr_BVALID { I 1 bit } m_axi_Out_ddr_BREADY { O 1 bit } m_axi_Out_ddr_BRESP { I 2 vector } m_axi_Out_ddr_BID { I 1 vector } m_axi_Out_ddr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name Out_ddr_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Out_ddr_offset \
    op interface \
    ports { Out_ddr_offset { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name Out_ddr_offset1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Out_ddr_offset1 \
    op interface \
    ports { Out_ddr_offset1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row \
    op interface \
    ports { row { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name p_c_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c_s \
    op interface \
    ports { p_c_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
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
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


