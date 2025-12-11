v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -370 -110 -370 -90 {
lab=VSS}
N -440 -130 -400 -130 {
lab=VINR}
N -440 -410 -400 -410 {
lab=VINS}
N -440 -370 -400 -370 {
lab=VPWM}
N -370 -450 -370 -430 {
lab=VDD}
N -370 -350 -370 -330 {
lab=VSS}
N -280 -390 -230 -390 {
lab=V_N}
N -280 -150 -260 -150 {
lab=VPWM}
N -370 -210 -370 -190 {
lab=VDD}
N -440 -370 -440 -280 {
lab=VPWM}
N -440 -280 -260 -280 {
lab=VPWM}
N -260 -280 -260 -150 {
lab=VPWM}
N -230 -390 -230 -270 {
lab=V_N}
N -440 -270 -230 -270 {
lab=V_N}
N -440 -270 -440 -170 {
lab=V_N}
N -440 -170 -400 -170 {
lab=V_N}
N -260 -150 -190 -150 {
lab=VPWM}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -760 -350 0 0 {name=p5 lab=VINS}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {devices/lab_pin.sym} -370 -450 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -370 -330 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -370 -210 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -370 -90 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -440 -410 0 0 {name=p21 sig_type=std_logic lab=VINS}
C {opin.sym} -780 -300 0 0 {name=p1 lab=VPWM}
C {ipin.sym} -760 -330 0 0 {name=p2 lab=VINR}
C {devices/lab_pin.sym} -440 -130 0 0 {name=p3 sig_type=std_logic lab=VINR}
C {devices/lab_pin.sym} -190 -150 0 1 {name=p6 sig_type=std_logic lab=VPWM}
C {devices/lab_pin.sym} -230 -390 0 1 {name=p8 sig_type=std_logic lab=V_N}
C {../DigitalGates/NOR.sym} -440 -310 0 0 {name=X1}
C {../DigitalGates/NOR.sym} -440 -70 0 0 {name=X2}
