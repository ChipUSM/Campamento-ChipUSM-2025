v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -370 -100 -370 -90 {
lab=VSS}
N -440 -130 -400 -130 {
lab=B2}
N -490 -410 -440 -410 {
lab=A1}
N -440 -460 -440 -410 {
lab=A1}
N -610 -410 -590 -410 {
lab=VPWM}
N -450 -170 -400 -170 {
lab=VPWM}
N -540 -450 -540 -430 {
lab=VDD}
N -540 -390 -540 -370 {
lab=VSS}
N -440 -410 -400 -410 {
lab=A1}
N -440 -370 -400 -370 {
lab=B1}
N -370 -450 -370 -430 {
lab=VDD}
N -370 -340 -370 -330 {
lab=VSS}
N -280 -390 -230 -390 {
lab=C1}
N -280 -150 -230 -150 {
lab=C2}
N -370 -210 -370 -190 {
lab=VDD}
N -230 -390 -190 -390 {
lab=C1}
N -230 -400 -230 -390 {
lab=C1}
N -70 -390 -40 -390 {
lab=B2}
N -320 -330 10 -330 {
lab=VSS}
N -320 -340 -320 -330 {
lab=VSS}
N -370 -340 -320 -340 {
lab=VSS}
N -230 -170 -230 -150 {
lab=C2}
N -290 -100 -290 -90 {
lab=VSS}
N -370 -100 -290 -100 {
lab=VSS}
N -230 -150 -190 -150 {
lab=C2}
N -130 -150 -80 -150 {
lab=B1}
N -290 -90 130 -90 {
lab=VSS}
N -80 -150 -40 -150 {
lab=B1}
N 10 -420 10 -410 {
lab=VDD}
N 10 -360 10 -330 {
lab=VSS}
N 60 -390 70 -390 {
lab=#net1}
N 10 -420 120 -420 {
lab=VDD}
N 120 -420 120 -410 {
lab=VDD}
N 120 -370 120 -360 {
lab=VSS}
N 10 -360 120 -360 {
lab=VSS}
N -70 -400 -70 -390 {
lab=B2}
N -80 -170 -80 -150 {
lab=B1}
N 60 -150 80 -150 {
lab=#net2}
N 180 -150 200 -150 {
lab=#net3}
N 300 -150 320 -150 {
lab=VCP}
N 170 -390 190 -390 {
lab=VCN}
N 10 -180 10 -170 {
lab=VDD}
N 130 -180 250 -180 {
lab=VDD}
N 250 -180 250 -170 {
lab=VDD}
N 130 -180 130 -170 {
lab=VDD}
N 10 -130 10 -120 {
lab=VSS}
N 130 -120 250 -120 {
lab=VSS}
N 250 -130 250 -120 {
lab=VSS}
N 130 -130 130 -120 {
lab=VSS}
N 130 -120 130 -90 {
lab=VSS}
N 130 -200 130 -180 {
lab=VDD}
N -370 -350 -370 -340 {
lab=VSS}
N -370 -110 -370 -100 {
lab=VSS}
N 10 -430 10 -420 {
lab=VDD}
N 10 -370 10 -360 {
lab=VSS}
N -130 -390 -70 -390 {
lab=B2}
N 10 -180 130 -180 {
lab=VDD}
N 10 -120 130 -120 {
lab=VSS}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -760 -350 0 0 {name=p5 lab=VPWM}
C {opin.sym} -780 -320 0 0 {name=p6 lab=VCN}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {devices/lab_pin.sym} -540 -370 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -540 -450 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -370 -450 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -370 -330 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -440 -370 2 1 {name=p8 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} -370 -210 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -370 -90 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -440 -460 2 1 {name=p11 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} -230 -400 1 0 {name=p9 sig_type=std_logic lab=C1}
C {devices/lab_pin.sym} -70 -400 1 0 {name=p22 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} -440 -130 2 1 {name=p20 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} -610 -410 0 0 {name=p21 sig_type=std_logic lab=VPWM}
C {devices/lab_pin.sym} -450 -170 0 0 {name=p26 sig_type=std_logic lab=VPWM}
C {devices/lab_pin.sym} -80 -170 1 0 {name=p19 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 190 -390 2 0 {name=p31 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 320 -150 2 0 {name=p38 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} -230 -170 1 0 {name=p44 sig_type=std_logic lab=C2}
C {capa.sym} -100 -360 0 0 {name=C3
m=1
value=\{C_del\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} -160 -150 1 0 {name=R1
value=\{R_del_fall\}
footprint=1206
device=resistor
m=1}
C {capa.sym} -100 -120 0 0 {name=C4
m=1
value=\{C_del\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} -160 -390 1 0 {name=R2
value=\{R_del_rise\}
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 10 -430 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -200 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {opin.sym} -780 -300 0 0 {name=p1 lab=VCP}
C {../DigitalGates/INV.sym} -200 -350 0 0 {name=X9}
C {../DigitalGates/NOR.sym} -440 -310 0 0 {name=X10}
C {../DigitalGates/INV.sym} -90 -350 0 0 {name=X4}
C {../DigitalGates/INV.sym} -200 -110 0 0 {name=X5}
C {../DigitalGates/INV.sym} -80 -110 0 0 {name=X6}
C {../DigitalGates/INV.sym} 40 -110 0 0 {name=X7}
C {../DigitalGates/INV.sym} -750 -370 0 0 {name=X1}
C {../DigitalGates/NOR.sym} -440 -70 0 0 {name=X2}
