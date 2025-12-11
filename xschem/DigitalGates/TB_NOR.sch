v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
T {- d = Vo/Vin. => Como la señal de disparo VgM1 es el negado de VsdM1, d*=1-d.
- R=Vo/Io, C= (rI)/(8*rV*R*fsw), L = Vs/(4*Io*rI*fsw)} -1070 -430 0 0 0.4 0.4 {}
N -920 10 -920 40 {
lab=VDD}
N -920 100 -920 120 {
lab=GND}
N -1200 10 -1200 40 {
lab=X}
N -1200 100 -1200 120 {
lab=GND}
N -1200 160 -1200 190 {
lab=Y}
N -1200 250 -1200 270 {
lab=GND}
N -820 10 -820 40 {
lab=VSS}
N -820 100 -820 120 {
lab=GND}
N -570 -190 -540 -190 {
lab=F}
N -720 -210 -690 -210 {
lab=X}
N -720 -170 -690 -170 {
lab=Y}
N -660 -250 -660 -230 {
lab=VDD}
N -660 -150 -660 -130 {
lab=VSS}
N -550 -130 -550 -100 {
lab=GND}
C {vsource.sym} -920 70 0 0 {name=Vin value=\{Vin\} savecurrent=false}
C {lab_pin.sym} -920 10 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -920 120 0 0 {name=l2 lab=GND}
C {vsource.sym} -1200 220 0 0 {name=VY value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{Ty*D\} \{Ty\} 0)" savecurrent=false}
C {lab_pin.sym} -1200 10 0 0 {name=p6 sig_type=std_logic lab=X}
C {gnd.sym} -1200 120 0 0 {name=l4 lab=GND}
C {vsource.sym} -1200 70 0 0 {name=VX value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{Tx*D\} \{Tx\} 0)" savecurrent=false}
C {lab_pin.sym} -1200 160 0 0 {name=p7 sig_type=std_logic lab=Y}
C {gnd.sym} -1200 270 0 0 {name=l5 lab=GND}
C {code.sym} -1010 -320 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vin = 1.2
.param VH = 1.2
.param Del = 0

*.param fsw = 10Meg
*.param fsw = 8.4Meg
.param fsw = 5Meg
*.param fsw = 1Meg

.param Tx = 1/fsw
.param Ty = Tx/5
.param D = 0.5
.param TR = 1n
.param TF = 1n
.param TdR = 0.5n
.param TdF = 0.5n

.param Co = 4*0.28f

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {launcher.sym} -740 -460 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {devices/code.sym} -1010 -170 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.param SimTime = 5*Tx
.csparam Sim_end = \{SimTime\}
*.csparam T = \{T\}

.tran 1n \{SimTime\} uic

.control
run
*meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

plot v(X) v(Y)+2 v(F)+4
*write TB_DCDCBuck.raw
.endc


.end
"}
C {launcher.sym} -510 -460 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_DCDCBuck.raw tran"
}
C {code.sym} -1231 -169 0 0 {name=IC only_toplevel=false  spice_ignore = true
value="
.ic v(Vo) = 0
*.ic i(x1.L1) = 0
*.ic v(Vc) = 0

"}
C {code.sym} -1240 -320 0 0 {name=NOR_Parameters only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param multP_NOR = 1
.param multN_NOR = 6

"}
C {vsource.sym} -820 70 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} -820 10 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {gnd.sym} -820 120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -660 -130 3 0 {name=p3 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -660 -250 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -540 -190 2 0 {name=p10 sig_type=std_logic lab=F}
C {lab_pin.sym} -720 -210 2 1 {name=p8 sig_type=std_logic lab=X}
C {lab_pin.sym} -720 -170 2 1 {name=p11 sig_type=std_logic lab=Y}
C {code.sym} -1230 -470 0 0 {name=MODEL only_toplevel=true
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
C {../DigitalGates/NOR.sym} -730 -110 0 0 {name=X2}
C {capa.sym} -550 -160 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -550 -100 0 0 {name=l3 lab=GND}
