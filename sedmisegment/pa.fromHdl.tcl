
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Sedmisegment -dir "C:/Users/sykorto6/Desktop/BI-SAP/JP/BI-SAP/Projekty_XILINX_PRIPRAVA/SEDMISEGMENT/Sedmisegment/planAhead_run_1" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "decoder_7seg.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {decoder_7seg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top decoder_7seg $srcset
add_files [list {decoder_7seg.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
