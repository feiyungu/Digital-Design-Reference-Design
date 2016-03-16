# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.cache/wt [current_project]
set_property parent.project_path c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/HDL_source/IP_Catalog [current_project]
add_files c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_xadc_0_0/ip/xadc_wiz_0/xadc_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/ip/design_1_xadc_0_0/ip/xadc_wiz_0/xadc_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/sources_1/imports/hdl/design_1_wrapper.v
read_xdc c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/constrs_1/imports/Constraint/B3_Balltrack.xdc
set_property used_in_implementation false [get_files c:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/Basys3_Git/B3_Git_Release/Projects/4_Control_and_Measurement/Ball_Tracking/Src/prj/Basys3_BallTrack.srcs/constrs_1/imports/Constraint/B3_Balltrack.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file design_1_wrapper.hwdef }
synth_design -top design_1_wrapper -part xc7a35tcpg236-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
