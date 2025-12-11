v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -520 -270 -510 -270 {
lab=VSS}
N -510 -270 -510 -240 {
lab=VSS}
N -520 -240 -510 -240 {
lab=VSS}
N -520 -360 -500 -360 {
lab=VDD}
N -500 -390 -500 -360 {
lab=VDD}
N -520 -390 -500 -390 {
lab=VDD}
N -520 -240 -520 -190 {
lab=VSS}
N -520 -410 -520 -390 {
lab=VDD}
N -580 -360 -560 -360 {
lab=X}
N -580 -310 -580 -270 {
lab=X}
N -580 -270 -560 -270 {
lab=X}
N -520 -310 -520 -300 {
lab=Y}
N -520 -310 -420 -310 {
lab=Y}
N -420 -360 -420 -310 {
lab=Y}
N -650 -310 -580 -310 {
lab=X}
N -520 -330 -520 -310 {
lab=Y}
N -580 -360 -580 -310 {
lab=X}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -750 -290 0 0 {name=p5 lab=X}
C {opin.sym} -770 -210 0 0 {name=p6 lab=Y}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {devices/lab_pin.sym} -520 -190 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -520 -410 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -420 -360 2 1 {name=p11 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -650 -310 0 0 {name=p21 sig_type=std_logic lab=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -540 -270 0 0 {name=M3
w = 0.15u
l = 0.13u
nf=1
m = 1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -540 -360 0 0 {name=M4
w= 0.15u
l= 0.13u
nf=1
m= 3
model=sg13_lv_pmos
spiceprefix=X
}
