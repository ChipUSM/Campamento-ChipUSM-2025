v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -820 -760 0 0 0.4 0.4 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -1510 -760 0 0 0.4 0.4 {}
N -550 -480 -550 -450 {
lab=Vdd}
N -550 -390 -550 -370 {
lab=GND}
N -550 -330 -550 -300 {
lab=Vs}
N -550 -240 -550 -220 {
lab=GND}
N -440 -480 -440 -450 {
lab=VH}
N -440 -390 -440 -370 {
lab=GND}
N -160 -490 -110 -490 {
lab=VgM1}
N -230 -420 -230 -410 {
lab=GND}
N -110 -430 -110 -420 {
lab=GND}
N -230 -420 -110 -420 {
lab=GND}
N -230 -440 -230 -420 {
lab=GND}
N -260 -560 -260 -540 {
lab=Vdd}
N -230 -560 -230 -540 {
lab=VH}
N -160 -290 -110 -290 {
lab=VgM2}
N -230 -220 -230 -210 {
lab=GND}
N -110 -230 -110 -220 {
lab=GND}
N -230 -220 -110 -220 {
lab=GND}
N -230 -240 -230 -220 {
lab=GND}
N -260 -360 -260 -340 {
lab=Vdd}
N -230 -360 -230 -340 {
lab=VH}
C {vsource.sym} -550 -420 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -550 -480 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -550 -370 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -550 -330 0 0 {name=p4 sig_type=std_logic lab=Vs}
C {vsource.sym} -550 -270 0 1 {name=Vs value="PULSE(0 \{Vdd\} \{Del\} \{1n\} \{1n\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} -550 -220 0 0 {name=l5 lab=GND}
C {code.sym} -830 -670 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -500 -670 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 3.3

.param C_M1 = 108p
.param C_M2 = 46p

.param D = 0.5
*.param T = 1u
.param T = 0.1u
.param TR = 10n
.param TF = 10n
*.param TdR = 0.1u
.param TdR = 1n
*.param TdF = 0.1u
.param TdF = 1n
.param Del = 0.05u
.param temp = 27


"}
C {devices/code.sym} -830 -480 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.control
reset
set color0 = white
tran 1n 1u
plot v(Vs) v(VgM1) 
plot v(Vs) v(VgM2)
plot v(VgM1)
plot v(VgM2)
plot v(x1.VgMD2)
plot v(x1.VgMD5)

*meas TRAN td_off_M1 TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG VsdM1 VAL=0.33 RISE=1
*meas TRAN td_on_M1 TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG VsdM1 VAL=2.97 FALL=1
*meas TRAN td_on_M2 TRIG v(Vg_M2) VAL=0.33 RISE=1 TARG VdsM2 VAL=2.97 FALL=1
*meas TRAN td_off_M2 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1
*let TdR = td_off_M1 - td_on_M2 
*let TdF = td_on_M1 - td_off_M2
*print TdR TdF
.endc

.end
"}
C {code.sym} -700 -670 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

.param w_hv = 0.3u
.param l_hv = 0.45u

.param mult1_GD1 = 1
.param mult2_GD1 = 4
.param mult3_GD1 = 14
.param mult4_GD1 = 51
.param mult5_GD1 = 190
.param mult6_GD1 = 704
.param mult7_GD1 = 2614
.param mult8_GD1 = 9700

.param mult1_GD2 = 1
.param mult2_GD2 = 3
.param mult3_GD2 = 11
.param mult4_GD2 = 37
.param mult5_GD2 = 124
.param mult6_GD2 = 413
.param mult7_GD2 = 1378
.param mult8_GD2 = 4597


"}
C {vsource.sym} -440 -420 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -440 -480 0 0 {name=p1 sig_type=std_logic lab=VH
value=\{VH\}}
C {gnd.sym} -440 -370 0 0 {name=l1 lab=GND
value=\{VH\}}
C {capa.sym} -110 -460 0 0 {name=C1
m=1
value=\{C_M1\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -310 -490 0 0 {name=p2 sig_type=std_logic lab=Vs}
C {gnd.sym} -230 -410 0 0 {name=l3 lab=GND
value=\{VH\}}
C {lab_pin.sym} -260 -560 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -230 -560 0 1 {name=p6 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -110 -490 0 1 {name=p7 sig_type=std_logic lab=VgM1}
C {../GD/GDM1.sym} -280 -450 0 0 {name=X1}
C {../GD/GDM2.sym} -280 -250 0 0 {name=X2}
C {capa.sym} -110 -260 0 0 {name=C2
m=1
value=\{C_M2\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -310 -290 0 0 {name=p8 sig_type=std_logic lab=Vs}
C {gnd.sym} -230 -210 0 0 {name=l4 lab=GND
value=\{VH\}}
C {lab_pin.sym} -260 -360 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -230 -360 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -110 -290 0 1 {name=p11 sig_type=std_logic lab=VgM2}
