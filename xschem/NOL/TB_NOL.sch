v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 140 410 140 {
lab=VCP}
N 270 260 410 260 {
lab=VCN}
N 160 140 180 140 {
lab=VCP}
N 160 180 180 180 {
lab=VCN}
N 70 80 70 100 {
lab=VDD}
N 70 220 70 240 {
lab=VSS}
N -360 30 -360 40 {
lab=VIN}
N -40 160 -20 160 {
lab=VIN}
C {devices/code.sym} -570 160 0 0 {name=Tran_sim only_toplevel=false value="
.save all
.save v(vin) v(vcp) v(vcn)
.tran 10n \{3*T\}
.control
set color0 = white
run
plot v(vin) v(vcp)+2 v(vcn)+2
*plot v(vin) v(B2)+2 v(C2)+4 v(A1)+6 v(B1)+8 v(C1)+10 v(vcp)+12 v(vcn)+14
.endc

.measure tran tdead_fall
+ TRIG tran1.V(vcn) TD=0u VAL=0.9 FALL=1
+ TARG tran1.V(vcp) TD=0u VAL=0.9 FALL=1

.measure tran t_large_delay
+ TRIG tran1.V(x1.C1) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(x1.B2) TD=0u VAL=0.9 RISE=1

.measure tran tdead_rise
+ TRIG tran1.V(vcp) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(vcn) TD=0u VAL=0.9 RISE=1


"}
C {devices/vsource.sym} -210 60 0 0 {name=VDD value=\{Vdd\}}
C {devices/vsource.sym} -290 60 0 0 {name=VSS value=0}
C {devices/gnd.sym} -290 90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -210 90 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -360 30 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -360 100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 30 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 30 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 330 140 1 0 {name=p8 sig_type=std_logic lab=VCP}
C {devices/capa.sym} 410 170 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 410 200 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 260 1 0 {name=p9 sig_type=std_logic lab=VCN}
C {devices/capa.sym} 410 290 0 0 {name=C2
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 410 320 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {vsource.sym} -360 70 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {code.sym} -350 160 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
.param VH = 1.2
.param Del = 0

.param D = 0.4
.param fsw = 10Meg
.param T = 1/fsw
.csparam T = \{T\}
.param TR = 0.01*T
.param TF = 0.01*T
.param TdR = 0.01*T
.param TdF = 0.01*T


.param C_del = 0.1p
.param R_del_rise = TdR/(C_del)
.param R_del_fall = TdF/(C_del)

.param temp = 27

"}
C {code.sym} -570 300 0 0 {name=NOR_INV_Parameters only_toplevel=false 

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
C {devices/lab_pin.sym} 180 140 2 0 {name=p38 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 180 180 2 0 {name=p4 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 70 80 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 240 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -40 160 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {code.sym} -460 160 0 0 {name=MODEL only_toplevel=true
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
C {../NOL/NOL.sym} -30 240 0 0 {name=X1}
