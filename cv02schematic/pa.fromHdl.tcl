
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name cv02schematic -dir "H:/BI-SAP/cv02schematic/planAhead_run_2" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "bullshit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {bullshit.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top bullshit $srcset
add_files [list {bullshit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
