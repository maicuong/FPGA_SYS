# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {2}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {3}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {4}  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {5}  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {6}  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -ruleid {7}  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/vivado-ip [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.xci
set_property is_locked true [get_files C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top fifo_8x2048 -part xc7z010clg400-1 -mode out_of_context
rename_ref -prefix_all fifo_8x2048_
write_checkpoint -noxdef fifo_8x2048.dcp
catch { report_utilization -file fifo_8x2048_utilization_synth.rpt -pb fifo_8x2048_utilization_synth.pb }
if { [catch {
  file copy -force C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.runs/fifo_8x2048_synth_1/fifo_8x2048.dcp C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.ip_user_files/ip/fifo_8x2048]} {
  catch { 
    file copy -force C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.v C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.ip_user_files/ip/fifo_8x2048
  }
}

if {[file isdir C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.ip_user_files/ip/fifo_8x2048]} {
  catch { 
    file copy -force C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.vhdl C:/FPGAPrj/VIVADO/xillinux-eval-zybo-1.3c/vhdl/vivado/xillydemo.ip_user_files/ip/fifo_8x2048
  }
}
