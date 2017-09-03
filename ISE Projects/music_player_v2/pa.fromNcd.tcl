
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name sine_wave_notes -dir "C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes/planAhead_run_2" -part xc3s400ft256-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes/sine_wave_notes.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes} }
set_property target_constrs_file "nexys.ucf" [current_fileset -constrset]
add_files [list {nexys.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes/sine_wave_notes.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes/sine_wave_notes.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/Ryan/OneDrive - UNSW/Documents/2017 Semester 2/COMP3601 - Desgin Project A/Git Repositry/ISE Projects/sine_wave_notes/sine_wave_notes.twx\": $eInfo"
}
