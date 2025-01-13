# Begin_DVE_Session_Save_Info
# DVE view(Wave.1 ) session
# Saved on Thu Dec 12 00:25:00 2024
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Wave.1: 43 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="View" path="/home/tmp/eecs151-ace/ASIC/project/docs/session.add.vpd.tcl" type="Debug">

#<Database>

gui_set_time_units 1ps
#</Database>

# DVE View/pane content session: 

# Begin_DVE_Session_Save_Info (Wave.1)
# DVE wave signals session
# Saved on Thu Dec 12 00:25:00 2024
# 43 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#Add ncecessay scopes
gui_load_child_values {rocketTestHarness.dut.cpu.fetch_logic_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.issue_logic_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.Br_unit_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.ROB_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.Branch_RS_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.issue_block_2_inst}
gui_load_child_values {rocketTestHarness.dut.cpu.PC_reg_2_inst}

gui_set_time_units 1ps

set _wave_session_group_1 Group1
if {[gui_sg_is_group -name "$_wave_session_group_1"]} {
    set _wave_session_group_1 [gui_sg_generate_new_name]
}
set Group1 "$_wave_session_group_1"

gui_sg_addsignal -group "$_wave_session_group_1" { {V1:rocketTestHarness.dut.cpu.clk} {V1:rocketTestHarness.dut.cpu.reset} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.next_ROB_index_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.next_ROB_index_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_2} {V1:rocketTestHarness.dut.cpu.bool_mispred} {V1:rocketTestHarness.dut.cpu.commit_mispred} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.Br_PC} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.Br_imm} {V1:rocketTestHarness.dut.cpu.PC_in_1} {V1:rocketTestHarness.dut.cpu.PC_out_1} {V1:rocketTestHarness.dut.cpu.PC_reg_2_inst.fetch_en} }

set _wave_session_group_2 ROB
if {[gui_sg_is_group -name "$_wave_session_group_2"]} {
    set _wave_session_group_2 [gui_sg_generate_new_name]
}
set Group2 "$_wave_session_group_2"

gui_sg_addsignal -group "$_wave_session_group_2" { {V1:rocketTestHarness.dut.cpu.ROB_2_inst.rptr_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.rptr_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.deq_fire_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.deq_fire_2} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.wptr_1} {V1:rocketTestHarness.dut.cpu.ROB_2_inst.wptr_2} }

set _wave_session_group_3 Branch_RS
if {[gui_sg_is_group -name "$_wave_session_group_3"]} {
    set _wave_session_group_3 [gui_sg_generate_new_name]
}
set Group3 "$_wave_session_group_3"

gui_sg_addsignal -group "$_wave_session_group_3" { {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.rptr} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.wptr} {V1:rocketTestHarness.dut.cpu.Br_unit_inst.branch_addr} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op1_ROB_index_table} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op1_ready_table} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op1_value_table} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op2_ROB_index_table} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op2_ready_table} {V1:rocketTestHarness.dut.cpu.Branch_RS_2_inst.op2_value_table} }

set _wave_session_group_4 Group2
if {[gui_sg_is_group -name "$_wave_session_group_4"]} {
    set _wave_session_group_4 [gui_sg_generate_new_name]
}
set Group4 "$_wave_session_group_4"

gui_sg_addsignal -group "$_wave_session_group_4" { {V1:rocketTestHarness.dut.cpu.issue_block_2_inst.enq_fire} {V1:rocketTestHarness.dut.cpu.issue_block_2_inst.PC_1} }

set _wave_session_group_5 Group3
if {[gui_sg_is_group -name "$_wave_session_group_5"]} {
    set _wave_session_group_5 [gui_sg_generate_new_name]
}
set Group5 "$_wave_session_group_5"

gui_sg_addsignal -group "$_wave_session_group_5" { {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.IMEM_in_ready} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.IMEM_out_valid} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.bool_mispred} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.fetch_en} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.issueQ_in_ready} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.jump_fire} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.opcode_5bit_1} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.opcode_5bit_2} {V1:rocketTestHarness.dut.cpu.fetch_logic_2_inst.stall} }
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
gui_wv_zoom_timerange -id ${Wave.1} 2496457 3121311
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group1}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group2}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group3}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group4}]
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group5}]
gui_list_select -id ${Wave.1} {rocketTestHarness.dut.cpu.fetch_logic_2_inst.issueQ_in_ready }
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
gui_list_set_insertion_bar  -id ${Wave.1} -group ${Group5}  -position in

gui_marker_move -id ${Wave.1} {C1} 2750000
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
#</Session>

