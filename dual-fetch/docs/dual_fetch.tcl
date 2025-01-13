# Begin_DVE_Session_Save_Info
# DVE view(Wave.1 ) session
# Saved on Thu Jan 2 15:23:28 2025
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Wave.1: 19 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="View" path="/home/cc/eecs151/fa24/class/eecs151-ace/ASIC/asic-project-fa24-phhxh/docs/dual_fetch.tcl" type="Debug">

#<Database>

gui_set_time_units 1ps
#</Database>

# DVE View/pane content session: 

# Begin_DVE_Session_Save_Info (Wave.1)
# DVE wave signals session
# Saved on Thu Jan 2 15:23:28 2025
# 19 signals
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#Add ncecessay scopes
gui_load_child_values {rocketTestHarness.dut.cpu.issue_logic_2_inst}

gui_set_time_units 1ps

set _wave_session_group_1 Group6
if {[gui_sg_is_group -name "$_wave_session_group_1"]} {
    set _wave_session_group_1 [gui_sg_generate_new_name]
}
set Group1 "$_wave_session_group_1"

gui_sg_addsignal -group "$_wave_session_group_1" { {V1:rocketTestHarness.dut.clk} {V1:rocketTestHarness.dut.reset} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.PC_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.inst_in_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_fire_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_ROB_index_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.issue_ROB_index_2} {V1:rocketTestHarness.dut.cpu.bool_mispred} {V1:rocketTestHarness.dut.cpu.commit_mispred} {V1:rocketTestHarness.dut.cpu.icache_out_valid_1} {V1:rocketTestHarness.dut.cpu.icache_out_valid_2} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.ALU_ready} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.Br_ready} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.LS_ready} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.ROB_ready_1} {V1:rocketTestHarness.dut.cpu.issue_logic_2_inst.ROB_ready_2} }
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
gui_wv_zoom_timerange -id ${Wave.1} 25526191 32655892
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group1}]
gui_list_select -id ${Wave.1} {rocketTestHarness.dut.cpu.icache_out_valid_1 }
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
gui_list_set_insertion_bar  -id ${Wave.1} -group ${Group1}  -position in

gui_marker_move -id ${Wave.1} {C1} 126762419
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
#</Session>

