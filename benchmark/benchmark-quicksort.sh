#!/bin/bash
gem5_path=../gem5

while getopts “a:” flag
do
     case $flag in
        a) l3_assoc=$OPTARG;;
     esac
done

arg="--cpu-type=TimingSimpleCPU --caches --l2cache --l3cache --l3_assoc=${l3_assoc} --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB --mem-type=NVMainMemory --nvmain-config=../NVmain/Config/PCM_ISSCC_2012_4GB.config"

gcc quicksort.c -o quicksort

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c quicksort ${arg}
