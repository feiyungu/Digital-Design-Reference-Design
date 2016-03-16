set prj_name "MUX_Design"
set prj_path "../prj"
set prj_source "../HDL_source"
set prj_constraint "../Constraint"

create_project $prj_name $prj_path -part xc7a35tcpg236-1 -force

set_property ip_repo_paths $prj_source/IP_Catalog [current_fileset]
update_ip_catalog

create_bd_design "mux"
source mux.tcl

generate_target {synthesis implementation} [get_files $prj_path/$prj_name.srcs/sources_1/bd/mux/mux.bd]

make_wrapper -files [get_files $prj_path/$prj_name.srcs/sources_1/bd/mux/mux.bd] -top
import_files -force -norecurse -fileset sources_1 $prj_path/$prj_name.srcs/sources_1/bd/mux/hdl/mux_wrapper.v
import_files -force -norecurse -fileset constrs_1 $prj_constraint/MUX.xdc
set_property top mux_wrapper [current_fileset]


launch_runs synth_1
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
open_run impl_1



