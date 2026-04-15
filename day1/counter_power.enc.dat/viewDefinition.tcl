if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name SLOW\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/slow_vdd1v0_basicCells.lib]
create_library_set -name FAST\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells.lib]
create_rc_corner -name RC\
   -cap_table ${::IMEX::libVar}/mmmc/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 12\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC/gpdk045.tch
create_delay_corner -name MAXDELAY\
   -library_set SLOW\
   -rc_corner RC
create_delay_corner -name MINDELAY\
   -library_set FAST\
   -rc_corner RC
create_constraint_mode -name CONST\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name WC -constraint_mode CONST -delay_corner MAXDELAY
create_analysis_view -name BC -constraint_mode CONST -delay_corner MINDELAY
set_analysis_view -setup [list WC] -hold [list BC]
