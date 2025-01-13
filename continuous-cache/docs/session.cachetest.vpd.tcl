# Begin_DVE_Session_Save_Info
# DVE view(Wave.1 ) session
# Saved on Sat Dec 14 18:14:45 2024
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Wave.1: 63 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="View" path="/home/tmp/eecs151-ace/ASIC/project/docs/session.cachetest.vpd.tcl" type="Debug">

#<Database>

gui_set_time_units 1ps
#</Database>

# DVE View/pane content session: 

# Begin_DVE_Session_Save_Info (Wave.1)
# DVE wave signals session
# Saved on Sat Dec 14 18:14:45 2024
# 63 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#Add ncecessay scopes
gui_load_child_values {rocketTestHarness.dut.cpu.issue_logic_2_inst}
gui_load_child_values {rocketTestHarness.dut.mem.dcache}
gui_load_child_values {rocketTestHarness.dut.cpu.Store_buffer_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.Br_unit_inst}
gui_load_child_values {rocketTestHarness.dut.cpu}
gui_load_child_values {rocketTestHarness.dut}
gui_load_child_values {rocketTestHarness.dut.cpu.ROB_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.LS_postmem_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.commit_logic_inst}

gui_set_time_units 1ps

set _wave_session_group_15 Group1
if {[gui_sg_is_group -name "$_wave_session_group_15"]} {
    set _wave_session_group_15 [gui_sg_generate_new_name]
}
set Group1 "$_wave_session_group_15"

gui_sg_addsignal -group "$_wave_session_group_15" { {V1:rocketTestHarness.dut.clk} {V1:rocketTestHarness.dut.reset} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_ROB_index_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_ROB_index_2} {V1:rocketTestHarness.dut.cpu.bool_mispred} {V1:rocketTestHarness.dut.cpu.commit_mispred} {V1:rocketTestHarness.dut.cpu.br_pred_taken} }

set _wave_session_group_16 BR_unit
if {[gui_sg_is_group -name "$_wave_session_group_16"]} {
    set _wave_session_group_16 [gui_sg_generate_new_name]
}
set Group2 "$_wave_session_group_16"

gui_sg_addsignal -group "$_wave_session_group_16" { {V1:rocketTestHarness.dut.cpu.Br_unit_inst.input_valid} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.PC} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.op1_value} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.op2_value} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.jump_fire} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.pred_branch} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.actual_branch} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.output_valid} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.branch_addr} }

set _wave_session_group_17 store_buffer
if {[gui_sg_is_group -name "$_wave_session_group_17"]} {
    set _wave_session_group_17 [gui_sg_generate_new_name]
}
set Group3 "$_wave_session_group_17"

gui_sg_addsignal -group "$_wave_session_group_17" { {V1:rocketTestHarness.dut.cpu.Store_buffer_inst.store_valid} {V1:rocketTestHarness.dut.cpu.Store_buffer_inst.store_ready} {V1:rocketTestHarness.dut.cpu.Store_buffer_inst.store_addr} {V1:rocketTestHarness.dut.cpu.Store_buffer_inst.store_data} {V1:rocketTestHarness.dut.cpu.Store_buffer_inst.store_write} }

set _wave_session_group_18 ROB_2
if {[gui_sg_is_group -name "$_wave_session_group_18"]} {
    set _wave_session_group_18 [gui_sg_generate_new_name]
}
set Group4 "$_wave_session_group_18"

gui_sg_addsignal -group "$_wave_session_group_18" { {V1:rocketTestHarness.dut.cpu.ROB_2_inst.rptr_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.rptr_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.res_ready_table} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.res_value_table} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_ROB_index_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_ROB_index_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_opcode_5bit_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_opcode_5bit_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_rd_index_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_rd_index_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_ready_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_ready_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_valid_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_valid_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_value_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.commit_value_2} }

set _wave_session_group_19 commit_logic
if {[gui_sg_is_group -name "$_wave_session_group_19"]} {
    set _wave_session_group_19 [gui_sg_generate_new_name]
}
set Group5 "$_wave_session_group_19"

gui_sg_addsignal -group "$_wave_session_group_19" { {V1:rocketTestHarness.dut.cpu.commit_logic_inst.result_ROB_index_1} {V1:rocketTestHarness.dut.cpu.commit_logic_inst.result_ROB_index_2} {V1:rocketTestHarness.dut.cpu.commit_logic_inst.store_ready} {V1:rocketTestHarness.dut.cpu.commit_logic_inst.store_valid} }

set _wave_session_group_20 LS_postmem
if {[gui_sg_is_group -name "$_wave_session_group_20"]} {
    set _wave_session_group_20 [gui_sg_generate_new_name]
}
set Group6 "$_wave_session_group_20"

gui_sg_addsignal -group "$_wave_session_group_20" { {V1:rocketTestHarness.dut.cpu.LS_postmem_inst.DMEM_resp_valid} {V1:rocketTestHarness.dut.cpu.LS_postmem_inst.DMEM_resp_data} {V1:rocketTestHarness.dut.cpu.LS_postmem_inst.RS_index_in} }

set _wave_session_group_21 dcache
if {[gui_sg_is_group -name "$_wave_session_group_21"]} {
    set _wave_session_group_21 [gui_sg_generate_new_name]
}
set Group7 "$_wave_session_group_21"

gui_sg_addsignal -group "$_wave_session_group_21" { {V1:rocketTestHarness.dut.mem.dcache.state} {V1:rocketTestHarness.dut.mem.dcache.cpu_req_valid} {V1:rocketTestHarness.dut.mem.dcache.cpu_req_ready} {V1:rocketTestHarness.dut.mem.dcache.cpu_req_addr} {V1:rocketTestHarness.dut.mem.dcache.cpu_req_data} {V1:rocketTestHarness.dut.mem.dcache.cpu_req_write} {V1:rocketTestHarness.dut.mem.dcache.cpu_resp_data} {V1:rocketTestHarness.dut.mem.dcache.cpu_resp_valid} {V1:rocketTestHarness.dut.mem.dcache.meta_addr} {V1:rocketTestHarness.dut.mem.dcache.meta_din} {V1:rocketTestHarness.dut.mem.dcache.meta_we} {V1:rocketTestHarness.dut.mem.dcache.meta_dout} {V1:rocketTestHarness.dut.mem.dcache.dirty_col} }
if {![info exists useOldWindow]} { 
	set useOldWindow true
}
if {$useOldWindow && [string first "Wave" [gui_get_current_window -view]]==0} { 
	set Wave.1 [gui_get_current_window -view] 
} else {
	set Wave.1 [lindex [gui_get_window_ids -type Wave] 0]
if {[string first "Wave" ${Wave.1}]!=0} {
gui_open_window Wave
set Wave.1 [ gui_get_current_window -view ]
}
}

set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 2654202722 2655444024
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group1}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group2}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group3}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group4}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group5}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group6}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group7}]
gui_list_collapse -id ${Wave.1} ${Group5}
gui_list_expand -id ${Wave.1} rocketTestHarness.dut.cpu.ROB_2_inst.res_ready_table
gui_list_expand -id ${Wave.1} rocketTestHarness.dut.cpu.ROB_2_inst.res_value_table
gui_list_expand -id ${Wave.1} rocketTestHarness.dut.mem.dcache.meta_dout
gui_seek_criteria -id ${Wave.1} {Any Edge}


gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group ${Group7}  -item {rocketTestHarness.dut.mem.dcache.dirty_col[63:0][0:0]} -position below

gui_marker_move -id ${Wave.1} {C1} 2654950000
gui_view_scroll -id ${Wave.1} -vertical -set 1557
gui_show_grid -id ${Wave.1} -enable false
#</Session>

