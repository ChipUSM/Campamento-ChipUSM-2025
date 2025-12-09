v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -530 -320 -530 -300 {
lab=#net1}
N -530 -220 -530 -210 {
lab=F}
N -610 -210 -530 -210 {
lab=F}
N -610 -210 -610 -190 {
lab=F}
N -530 -210 -440 -210 {
lab=F}
N -440 -210 -440 -190 {
lab=F}
N -610 -120 -610 -110 {
lab=VSS}
N -530 -110 -440 -110 {
lab=VSS}
N -440 -120 -440 -110 {
lab=VSS}
N -530 -110 -530 -90 {
lab=VSS}
N -530 -390 -530 -380 {
lab=VDD}
N -650 -350 -570 -350 {
lab=X}
N -650 -350 -650 -160 {
lab=X}
N -610 -270 -570 -270 {
lab=Y}
N -500 -160 -480 -160 {
lab=Y}
N -530 -220 -310 -220 {
lab=F}
N -530 -350 -520 -350 {
lab=VDD}
N -520 -390 -520 -350 {
lab=VDD}
N -530 -390 -520 -390 {
lab=VDD}
N -530 -270 -520 -270 {
lab=VDD}
N -520 -350 -520 -270 {
lab=VDD}
N -440 -160 -430 -160 {
lab=VSS}
N -430 -160 -430 -120 {
lab=VSS}
N -440 -120 -430 -120 {
lab=VSS}
N -610 -160 -600 -160 {
lab=VSS}
N -600 -160 -600 -120 {
lab=VSS}
N -610 -120 -600 -120 {
lab=VSS}
N -610 -110 -530 -110 {
lab=VSS}
N -670 -350 -650 -350 {
lab=X}
N -530 -240 -530 -220 {
lab=F}
N -530 -400 -530 -390 {
lab=VDD}
N -440 -130 -440 -120 {
lab=VSS}
N -610 -130 -610 -120 {
lab=VSS}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -750 -290 0 0 {name=p5 lab=X}
C {opin.sym} -770 -210 0 0 {name=p6 lab=F}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {ipin.sym} -750 -260 0 0 {name=p10 lab=Y}
C {devices/lab_pin.sym} -530 -400 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -530 -90 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -670 -350 2 1 {name=p3 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} -610 -270 2 1 {name=p9 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -500 -160 2 1 {name=p13 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -310 -220 2 0 {name=p18 sig_type=std_logic lab=F}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 -160 0 0 {name=M1
w=\{w_N_NOR\}
l=\{l_N_NOR\}
nf=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -550 -350 0 0 {name=M2
w=\{w_P_NOR\}
l=\{l_P_NOR\}
nf=1
m=\{mult*3\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -550 -270 0 0 {name=M4
w=\{w_P_NOR\}
l=\{l_P_NOR\}
nf=1
m=\{mult*3\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -630 -160 0 0 {name=M3
w=\{w_N_NOR\}
l=\{l_N_NOR\}
nf=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
