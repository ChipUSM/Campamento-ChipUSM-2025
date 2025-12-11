v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -680 -410 -660 -410 {
lab=Vin}
N -610 -390 -610 -350 {
lab=VSS}
N -320 -410 -280 -410 {
lab=#net1}
N -220 -410 -170 -410 {
lab=B1}
N -170 -410 -110 -410 {
lab=B1}
N -170 -430 -170 -410 {
lab=B1}
N -60 -350 60 -350 {
lab=VSS}
N -430 -410 -420 -410 {
lab=B}
N -370 -390 -370 -350 {
lab=VSS}
N -370 -350 -60 -350 {
lab=VSS}
N 60 -390 60 -350 {
lab=VSS}
N -10 -410 10 -410 {
lab=#net2}
N -60 -390 -60 -350 {
lab=VSS}
N 60 -490 200 -490 {
lab=VDD}
N 200 -490 200 -430 {
lab=VDD}
N 60 -490 60 -430 {
lab=VDD}
N -60 -490 -60 -430 {
lab=VDD}
N -370 -490 -370 -430 {
lab=VDD}
N -490 -490 -490 -430 {
lab=VDD}
N -560 -410 -540 -410 {
lab=#net3}
N 60 -350 200 -350 {
lab=VSS}
N 130 -410 150 -410 {
lab=A}
N -490 -390 -490 -350 {
lab=VSS}
N -610 -350 -610 -320 {
lab=VSS}
N -490 -350 -370 -350 {
lab=VSS}
N -430 -410 -430 -400 {
lab=B}
N 120 -370 150 -370 {
lab=B}
N 130 -440 130 -410 {
lab=A}
N 270 -390 290 -390 {
lab=VP}
N -610 -490 -610 -430 {
lab=VDD}
N -610 -520 -610 -490 {
lab=VDD}
N -60 -490 60 -490 {
lab=VDD}
N -370 -490 -60 -490 {
lab=VDD}
N -490 -490 -370 -490 {
lab=VDD}
N -610 -490 -490 -490 {
lab=VDD}
N -610 -350 -490 -350 {
lab=VSS}
N -440 -410 -430 -410 {
lab=B}
N 110 -410 130 -410 {
lab=A}
C {iopin.sym} -760 -400 0 1 {name=p4 lab=VDD}
C {ipin.sym} -760 -350 0 0 {name=p5 lab=Vin}
C {opin.sym} -780 -320 0 0 {name=p6 lab=VP}
C {iopin.sym} -760 -380 0 1 {name=p7 lab=VSS
}
C {devices/lab_pin.sym} -610 -320 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -610 -520 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -680 -410 0 0 {name=p21 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -170 -430 1 0 {name=p19 sig_type=std_logic lab=B1}
C {res.sym} -250 -410 1 0 {name=R1
value=\{R_del\}
footprint=1206
device=resistor
m=1}
C {capa.sym} -190 -380 0 0 {name=C4
m=1
value=\{C_del\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -430 -400 3 0 {name=p1 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 120 -370 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 130 -440 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 290 -390 0 1 {name=p8 sig_type=std_logic lab=VP}
C {../DigitalGates/INV.sym} -820 -370 0 0 {name=X1}
C {../DigitalGates/AND.sym} 290 -340 0 0 {name=X2}
C {../DigitalGates/INV.sym} -700 -370 0 0 {name=X3}
C {../DigitalGates/INV.sym} -580 -370 0 0 {name=X4}
C {../DigitalGates/INV.sym} -270 -370 0 0 {name=X5}
C {../DigitalGates/INV.sym} -150 -370 0 0 {name=X6}
