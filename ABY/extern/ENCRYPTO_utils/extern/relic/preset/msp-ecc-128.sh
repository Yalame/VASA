#!/bin/bash
CC="msp430-gcc -mmcu=msp430f1611" CXX="c++" cmake -DARITH=msp-asm -DCMAKE_SYSTEM_NAME=Generic -DALIGN=2 -DARCH=MSP -DBENCH=1 "-DBN_METHD=BASIC;MULTP;MONTY;BASIC;BASIC;BASIC" -DCHECK=OFF -DCOLOR=OFF "-DCOMP:STRING=-O2 -g -mmcu=msp430f1611 -ffunction-sections -fdata-sections -fno-inline -mdisable-watchdog" -DDOCUM=OFF -DEP_DEPTH=3 -DEP_PLAIN=ON -DEP_ENDOM=OFF "-DFP_METHD=BASIC;COMBA;COMBA;QUICK;LOWER;BASIC" -DFP_PMERS=ON "-DLINK=-Wl,-mmcu=msp430f1611 -Wl,--gc-sections" -DSEED= -DSHLIB=OFF -DSTRIP=ON -DTESTS=1 -DTIMER=CYCLE -DVERBS=OFF -DWSIZE=16 -DFP_PRIME=256 -DBN_PRECI=256 -DMD_METHD=SH256 "-DWITH=FP;EP;EC;DV;CP;MD;BN" -DEC_ENDOM=OFF -DEC_METHD=PRIME -DRAND=FIPS $1
