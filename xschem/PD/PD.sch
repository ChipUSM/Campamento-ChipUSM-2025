v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -410 -430 -390 -430 {
lab=VINR}
N -250 -430 -250 -360 {
lab=VP1}
N -250 -360 -190 -360 {
lab=VP1}
N -250 -320 -190 -320 {
lab=VP2}
N -250 -320 -250 -220 {
lab=VP2}
N -320 -370 -320 -350 {
lab=VSS}
N -320 -310 -320 -270 {
lab=VDD}
N -320 -160 -320 -130 {
lab=VSS}
N -320 -510 -320 -490 {
lab=VDD}
N -410 -220 -390 -220 {
lab=VINS}
N -10 -340 10 -340 {
lab=VPWM}
N -100 -420 -100 -400 {
lab=VDD}
N -100 -280 -100 -260 {
lab=VSS}
C {iopin.sym} -460 -390 0 1 {name=p4 lab=VDD}
C {ipin.sym} -460 -340 0 0 {name=p5 lab=VINR}
C {opin.sym} -480 -290 0 0 {name=p6 lab=VPWM}
C {iopin.sym} -460 -370 0 1 {name=p7 lab=VSS
}
C {devices/lab_pin.sym} -410 -430 0 0 {name=p21 sig_type=std_logic lab=VINR}
C {ipin.sym} -460 -320 0 0 {name=p1 lab=VINS}
C {devices/lab_pin.sym} -320 -350 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -320 -310 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -320 -510 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -320 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -410 -220 0 0 {name=p10 sig_type=std_logic lab=VINS}
C {devices/lab_pin.sym} 10 -340 0 1 {name=p11 sig_type=std_logic lab=VPWM}
C {devices/lab_pin.sym} -100 -420 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -100 -260 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -410 0 1 {name=p14 sig_type=std_logic lab=VP1}
C {devices/lab_pin.sym} -250 -250 0 1 {name=p15 sig_type=std_logic lab=VP2}
C {../SR_Latch_NOR/SR_Latch.sym} -200 -260 0 0 {name=X1}
C {../SPG/SPG.sym} -400 -350 0 0 {name=X2}
C {../SPG/SPG.sym} -400 -140 0 0 {name=X3}
