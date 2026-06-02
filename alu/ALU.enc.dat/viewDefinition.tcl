if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name min\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name max\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_rc_corner -name RC\
   -cap_table ${::IMEX::libVar}/mmmc/gpdk090.lef.extended.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC/gpdk090_9l.tch
create_delay_corner -name maxdelay\
   -library_set max\
   -rc_corner RC
create_delay_corner -name mindelay\
   -library_set min\
   -rc_corner RC
create_constraint_mode -name constraint\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/output.sdc]
create_analysis_view -name wc -constraint_mode constraint -delay_corner maxdelay
create_analysis_view -name bc -constraint_mode constraint -delay_corner maxdelay
set_analysis_view -setup [list wc] -hold [list wc]
