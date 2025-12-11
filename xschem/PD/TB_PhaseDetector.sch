v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -740 -320 0 0 0.4 0.4 {}
N -70 50 -70 60 {
lab=VSS}
N -70 -40 -70 -20 {
lab=V_PWM}
N -130 -40 -70 -40 {
lab=V_PWM}
N -70 -40 -50 -40 {
lab=V_PWM}
N -230 20 -230 50 {
lab=VSS}
N -230 50 -70 50 {
lab=VSS}
N -380 -60 -340 -60 {
lab=VIN_2}
N -380 -20 -340 -20 {
lab=VIN_1}
N -230 -130 -230 -100 {
lab=VDD}
N -70 40 -70 50 {
lab=VSS}
C {code.sym} -720 -250 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 1.2
.param Del = 0

.param Vcont = 0

.param fsw = 10Meg
.param T = 1/fsw
.csparam T = \{T\}
.param TR = 1p
.param TF = 1p

.param Co= 0.28f

* Pulse width
.param PW = 1n
.param C_del= 0.28f
.param R_del = PW/(C_del*5)

*Caso 1 - Funciona bien
.param D = 0.5
.param Td = T*0.3






.param temp = 27

"}
C {devices/vsource.sym} -300 -230 0 0 {name=VCC value=\{Vdd\}}
C {devices/vsource.sym} -380 -230 0 0 {name=VSS value=0}
C {devices/gnd.sym} -380 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -300 -200 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -130 -300 0 1 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -130 -240 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -380 -260 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -300 -260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -130 -270 0 0 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} -130 -210 0 1 {name=p7 sig_type=std_logic lab=VIN_2  spice_ignore=false}
C {devices/lab_pin.sym} -130 -150 0 1 {name=p8 sig_type=std_logic lab=VSS spice_ignore=false}
C {devices/code.sym} -570 -100 0 0 {name=Transient_Simulation only_toplevel=false value="
.save all
.tran 100p \{5*T\}
.control
set color0 = white
run
plot v(VIN_1) v(VIN_2)+2 v(V_PWM)+4
plot v(VIN_1) v(x1.VP1)+2 
plot v(VIN_2) v(x1.VP2)+2 
*plot v(X) v(Y)+2 v(VIN_S)+4
.endc

*.measure tran tdead_fall
*+ TRIG tran1.V(vcn) TD=0u VAL=0.9 FALL=1
*+ TARG tran1.V(vcp) TD=0u VAL=0.9 FALL=1

*.measure tran t_large_delay
*+ TRIG tran1.V(x1.C1) TD=0u VAL=0.9 RISE=1
*+ TARG tran1.V(x1.B2) TD=0u VAL=0.9 RISE=1

"}
C {vsource.sym} -130 -180 0 0 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false spice_ignore=false}
C {devices/lab_pin.sym} -380 -20 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} -230 -130 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -380 -60 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {capa.sym} -70 10 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -70 60 3 0 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -40 2 0 {name=p64 sig_type=std_logic lab=V_PWM}
C {../PD/PD.sym} -350 40 0 0 {name=X1}
C {code.sym} -720 -100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

*.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
*.lib $::SG13G2_MODELS/cornerRES.lib res_typ
*.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
