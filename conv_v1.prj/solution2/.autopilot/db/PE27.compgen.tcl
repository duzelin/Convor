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
    id 223 \
    name W_inter_1_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_inter_1_2 \
    op interface \
    ports { W_inter_1_2_dout { I 32 vector } W_inter_1_2_empty_n { I 1 bit } W_inter_1_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name In_inter_1_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_In_inter_1_2 \
    op interface \
    ports { In_inter_1_2_dout { I 32 vector } In_inter_1_2_empty_n { I 1 bit } In_inter_1_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name W_inter_2_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_inter_2_2 \
    op interface \
    ports { W_inter_2_2_din { O 32 vector } W_inter_2_2_full_n { I 1 bit } W_inter_2_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name In_inter_1_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_In_inter_1_3 \
    op interface \
    ports { In_inter_1_3_din { O 32 vector } In_inter_1_3_full_n { I 1 bit } In_inter_1_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name add_ln207_3_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln207_3_loc \
    op interface \
    ports { add_ln207_3_loc_dout { I 32 vector } add_ln207_3_loc_empty_n { I 1 bit } add_ln207_3_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name add_ln207_1_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln207_1_loc \
    op interface \
    ports { add_ln207_1_loc_dout { I 32 vector } add_ln207_1_loc_empty_n { I 1 bit } add_ln207_1_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name O_inter_1_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_O_inter_1_2 \
    op interface \
    ports { O_inter_1_2_din { O 32 vector } O_inter_1_2_full_n { I 1 bit } O_inter_1_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
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
    id 231 \
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
    id 232 \
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
    id 233 \
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
    id 234 \
    name p_r_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_r_s \
    op interface \
    ports { p_r_s_dout { I 32 vector } p_r_s_empty_n { I 1 bit } p_r_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name add_ln207_1_loc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln207_1_loc_out \
    op interface \
    ports { add_ln207_1_loc_out_din { O 32 vector } add_ln207_1_loc_out_full_n { I 1 bit } add_ln207_1_loc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
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
    id 237 \
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
    id 238 \
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
    id 239 \
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
    id 240 \
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

