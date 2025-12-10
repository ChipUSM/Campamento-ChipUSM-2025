v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -630 -280 -630 -260 {
lab=#net1}
N -580 -170 -580 -150 {
lab=#net2}
N -630 -350 -630 -340 {
lab=VDD}
N -640 -120 -620 -120 {
lab=Y}
N -630 -310 -620 -310 {
lab=VDD}
N -620 -350 -620 -310 {
lab=VDD}
N -630 -350 -620 -350 {
lab=VDD}
N -580 -120 -570 -120 {
lab=VSS}
N -570 -120 -570 -80 {
lab=VSS}
N -580 -200 -570 -200 {
lab=VSS}
N -570 -200 -570 -120 {
lab=VSS}
N -510 -310 -500 -310 {
lab=VDD}
N -500 -350 -500 -310 {
lab=VDD}
N -510 -350 -500 -350 {
lab=VDD}
N -510 -350 -510 -340 {
lab=VDD}
N -580 -90 -580 -80 {
lab=VSS}
N -580 -80 -570 -80 {
lab=VSS}
N -580 -260 -510 -260 {
lab=#net1}
N -510 -280 -510 -260 {
lab=#net1}
N -580 -240 -580 -230 {
lab=#net1}
N -580 -70 -580 -60 {
lab=VSS}
N -570 -380 -570 -360 {
lab=VDD}
N -630 -360 -570 -360 {
lab=VDD}
N -570 -360 -510 -360 {
lab=VDD}
N -510 -360 -510 -350 {
lab=VDD}
N -560 -310 -550 -310 {
lab=Y}
N -690 -310 -670 -310 {
lab=X}
N -640 -200 -620 -200 {
lab=X}
N -330 -210 -330 -200 {
lab=F}
N -390 -250 -370 -250 {
lab=#net1}
N -390 -240 -390 -170 {
lab=#net1}
N -390 -170 -370 -170 {
lab=#net1}
N -580 -240 -390 -240 {
lab=#net1}
N -330 -290 -330 -280 {
lab=VDD}
N -510 -360 -330 -360 {
lab=VDD}
N -330 -110 -330 -70 {
lab=VSS}
N -580 -70 -330 -70 {
lab=VSS}
N -330 -250 -300 -250 {
lab=VDD}
N -300 -290 -300 -250 {
lab=VDD}
N -330 -290 -300 -290 {
lab=VDD}
N -330 -170 -300 -170 {
lab=VSS}
N -300 -170 -300 -110 {
lab=VSS}
N -330 -110 -300 -110 {
lab=VSS}
N -330 -210 -260 -210 {
lab=F}
N -630 -360 -630 -350 {
lab=VDD}
N -630 -260 -580 -260 {
lab=#net1}
N -580 -260 -580 -240 {
lab=#net1}
N -390 -250 -390 -240 {
lab=#net1}
N -580 -80 -580 -70 {
lab=VSS}
N -330 -360 -330 -290 {
lab=VDD}
N -330 -140 -330 -110 {
lab=VSS}
N -330 -220 -330 -210 {
lab=F}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -750 -290 0 0 {name=p5 lab=X}
C {opin.sym} -770 -210 0 0 {name=p6 lab=F}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {ipin.sym} -750 -260 0 0 {name=p10 lab=Y}
C {devices/lab_pin.sym} -570 -380 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -580 -60 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -690 -310 2 1 {name=p8 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} -560 -310 2 1 {name=p11 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -640 -120 2 1 {name=p12 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -640 -200 2 1 {name=p14 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} -260 -210 2 0 {name=p15 sig_type=std_logic lab=F}
C {sg13g2_pr/sg13_lv_nmos.sym} -600 -200 0 0 {name=M1
w=\{w_N_AND\}
l=\{l_N_AND\}
nf=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -350 -250 0 0 {name=M2
w=\{w_P_AND\}
l=\{l_P_AND\}
nf=1
m=\{mult*3\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -600 -120 0 0 {name=M3
w=\{w_N_AND\}
l=\{l_N_AND\}
nf=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -350 -170 0 0 {name=M4
w=\{w_N_AND\}
l=\{l_N_AND\}
nf=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -530 -310 0 0 {name=M5
w=\{w_P_AND\}
l=\{l_P_AND\}
nf=1
m=\{mult*3\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -650 -310 0 0 {name=M6
w=\{w_P_AND\}
l=\{l_P_AND\}
nf=1
m=\{mult*3\}
model=sg13_lv_pmos
spiceprefix=X
}
