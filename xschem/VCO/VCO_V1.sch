v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -50 450 -50 {
lab=VDD}
N 260 90 450 90 {
lab=VSS}
N -240 -20 -190 -20 {
lab=V_1}
N -50 -20 0 -20 {
lab=V_2}
N 140 -20 190 -20 {
lab=V_3}
N 330 -20 380 -20 {
lab=V_4}
N -380 -100 -380 -20 {
lab=V_5}
N -380 -100 520 -100 {
lab=V_5}
N 520 -100 520 -20 {
lab=V_5}
N -440 140 -400 140 {
lab=VCONT}
N 170 140 360 140 {
lab=VCONT}
N -400 140 -210 140 {
lab=VCONT}
N -210 140 -20 140 {
lab=VCONT}
N -20 140 170 140 {
lab=VCONT}
N -310 50 -310 90 {
lab=VSS}
N -120 50 -120 90 {
lab=VSS}
N 70 50 70 90 {
lab=VSS}
N 260 50 260 90 {
lab=VSS}
N 450 50 450 90 {
lab=VSS}
N -400 0 -380 0 {
lab=VCONT}
N -210 0 -210 140 {
lab=VCONT}
N -210 0 -190 0 {
lab=VCONT}
N -20 0 -20 140 {
lab=VCONT}
N -20 0 0 -0 {
lab=VCONT}
N 170 0 170 140 {
lab=VCONT}
N 170 0 190 -0 {
lab=VCONT}
N 360 0 360 140 {
lab=VCONT}
N 360 0 380 0 {
lab=VCONT}
N 190 180 380 180 {
lab=VCONT2}
N -380 20 -380 180 {
lab=VCONT2}
N -190 20 -190 180 {
lab=VCONT2}
N -0 20 0 180 {
lab=VCONT2}
N 190 20 190 180 {
lab=VCONT2}
N 380 20 380 180 {
lab=VCONT2}
N -400 0 -400 140 {
lab=VCONT}
N -310 90 -120 90 {
lab=VSS}
N -120 90 70 90 {
lab=VSS}
N 70 90 260 90 {
lab=VSS}
N -480 180 -380 180 {
lab=VCONT2}
N -380 180 -190 180 {
lab=VCONT2}
N -190 180 0 180 {
lab=VCONT2}
N 0 180 190 180 {
lab=VCONT2}
C {devices/lab_pin.sym} -280 -50 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -280 90 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -440 140 1 0 {name=p1 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} -220 -20 1 0 {name=p2 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} -30 -20 1 0 {name=p3 sig_type=std_logic lab=V_2}
C {devices/lab_pin.sym} 160 -20 1 0 {name=p4 sig_type=std_logic lab=V_3}
C {devices/lab_pin.sym} 350 -20 1 0 {name=p5 sig_type=std_logic lab=V_4}
C {devices/lab_pin.sym} 520 -100 1 0 {name=p6 sig_type=std_logic lab=V_5}
C {devices/ipin.sym} -370 -170 0 0 {name=p7 lab=VCONT}
C {devices/iopin.sym} -325 -160 3 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -275 -210 1 0 {name=p9 lab=VSS}
C {devices/opin.sym} -220 -170 0 0 {name=p10 lab=V_1}
C {devices/opin.sym} -220 -140 0 0 {name=p11 lab=V_2}
C {devices/ipin.sym} -370 -200 0 0 {name=p12 lab=VCONT2}
C {devices/lab_pin.sym} -480 180 1 0 {name=p15 sig_type=std_logic lab=VCONT2}
C {../VCO/stage_V1.sym} -310 -10 0 0 {name=x1}
C {../VCO/stage_V1.sym} -120 -10 0 0 {name=x2}
C {../VCO/stage_V1.sym} 70 -10 0 0 {name=x3}
C {../VCO/stage_V1.sym} 260 -10 0 0 {name=x4}
C {../VCO/stage_V1.sym} 450 -10 0 0 {name=x5}
