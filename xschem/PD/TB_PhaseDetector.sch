v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -670 -320 0 0 0.4 0.4 {}
N 70 130 70 140 {
lab=VSS}
N 70 40 70 60 {
lab=V_PWM}
N 10 40 70 40 {
lab=V_PWM}
N 70 40 90 40 {
lab=V_PWM}
N -90 100 -90 130 {
lab=VSS}
N -90 130 70 130 {
lab=VSS}
N -240 20 -200 20 {
lab=VIN_2}
N -240 60 -200 60 {
lab=VIN_1}
N -90 -50 -90 -20 {
lab=VDD}
N 70 120 70 130 {
lab=VSS}
C {code.sym} -390 -260 0 0 {name=Simulation_Parameters only_toplevel=false 

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

* Pulse width
.param PW = 1n
.param C_del= 0.1p
.param R_del = PW/C_del

*Caso 1 - Funciona bien
.param D = 0.5
.param Td = T*0.3






.param temp = 27

"}
C {devices/vsource.sym} -120 -180 0 0 {name=VCC value=\{Vdd\}}
C {devices/vsource.sym} -200 -180 0 0 {name=VSS value=0}
C {devices/gnd.sym} -200 -150 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -120 -150 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 0 -270 0 1 {name=p1 sig_type=std_logic lab=VIN_1}
C {devices/lab_pin.sym} 0 -210 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 -210 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -120 -210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 -240 0 0 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} 0 -180 0 1 {name=p7 sig_type=std_logic lab=VIN_2  spice_ignore=false}
C {devices/lab_pin.sym} 0 -120 0 1 {name=p8 sig_type=std_logic lab=VSS spice_ignore=false}
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
C {vsource.sym} 0 -150 0 0 {name=Vg3 value="PULSE(0 \{Vdd\} \{Td\} \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false spice_ignore=false}
C {devices/lab_pin.sym} -240 60 0 0 {name=p16 sig_type=std_logic lab=VIN_1}
C {code.sym} -570 -260 0 0 {name=NOR_INV_Parameters only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param w_P_NOR =0.15u
.param l_P_NOR = 0.15u

.param w_N_NOR =0.15u
.param l_N_NOR =0.15u

.param w_inv =0.15u
.param l_inv =0.15u


"}
C {devices/lab_pin.sym} -90 -50 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {code.sym} -720 -260 0 0 {name=AND_Parameters only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param w_P_AND =0.15u
.param l_P_AND = 0.15u

.param w_N_AND =0.15u
.param l_N_AND =0.15u




"}
C {devices/lab_pin.sym} -240 20 0 0 {name=p20 sig_type=std_logic lab=VIN_2}
C {capa.sym} 70 90 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 70 140 3 0 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 40 2 0 {name=p64 sig_type=std_logic lab=V_PWM}
C {../PD/PD.sym} -210 120 0 0 {name=X1}
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
