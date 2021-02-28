#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dzl/VOLUME/High-Level-Synthesis-Flow-on-Zynq-using-Vivado-HLS/source/lab6/conv_v1.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
