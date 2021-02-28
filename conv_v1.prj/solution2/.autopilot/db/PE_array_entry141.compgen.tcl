# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
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
    id 24 \
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
    id 25 \
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
    id 26 \
    name row_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_out1 \
    op interface \
    ports { row_out1_din { O 32 vector } row_out1_full_n { I 1 bit } row_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name row_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_out2 \
    op interface \
    ports { row_out2_din { O 32 vector } row_out2_full_n { I 1 bit } row_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name row_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_out3 \
    op interface \
    ports { row_out3_din { O 32 vector } row_out3_full_n { I 1 bit } row_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
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
    id 30 \
    name cho_out4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out4 \
    op interface \
    ports { cho_out4_din { O 32 vector } cho_out4_full_n { I 1 bit } cho_out4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name cho_out5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out5 \
    op interface \
    ports { cho_out5_din { O 32 vector } cho_out5_full_n { I 1 bit } cho_out5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name cho_out6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out6 \
    op interface \
    ports { cho_out6_din { O 32 vector } cho_out6_full_n { I 1 bit } cho_out6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name cho_out7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cho_out7 \
    op interface \
    ports { cho_out7_din { O 32 vector } cho_out7_full_n { I 1 bit } cho_out7_write { O 1 bit } } \
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
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


