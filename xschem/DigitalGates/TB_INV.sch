v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -920 -80 -920 -50 {
lab=VDD}
N -920 10 -920 30 {
lab=GND}
N -1090 0 -1090 30 {
lab=X}
N -1090 90 -1090 110 {
lab=GND}
N -820 -80 -820 -50 {
lab=VSS}
N -820 10 -820 30 {
lab=GND}
N -800 -240 -800 -220 {
lab=VDD}
N -870 -200 -850 -200 {
lab=X}
N -800 -180 -800 -160 {
lab=VSS}
N -750 -200 -720 -200 {
lab=F}
N -730 -140 -730 -110 {
lab=GND}
C {vsource.sym} -920 -20 0 0 {name=Vin value=\{Vin\} savecurrent=false}
C {lab_pin.sym} -920 -80 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -920 30 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -1090 0 0 0 {name=p6 sig_type=std_logic lab=X}
C {gnd.sym} -1090 110 0 0 {name=l4 lab=GND}
C {vsource.sym} -1090 60 0 0 {name=VX value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{Tx*D\} \{Tx\} 0)" savecurrent=false}
C {code.sym} -1100 -300 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vin = 1.2
.param VH = 1.2
.param Del = 0

*.param fsw = 10Meg
*.param fsw = 8.4Meg
.param fsw = 5Meg
*.param fsw = 1Meg

.param Co = 4*0.28f

.param Tx = 1/fsw
.param Ty = Tx/5
.param D = 0.5
.param TR = 1n
.param TF = 1n
.param TdR = 0.5n
.param TdF = 0.5n

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {devices/code.sym} -1100 -160 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.param SimTime = 5*Tx
.csparam Sim_end = \{SimTime\}
*.csparam T = \{T\}

.tran 1n \{SimTime\} uic

.control
run
*meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

plot v(X) v(F)+2
*write TB_DCDCBuck.raw
.endc


.end
"}
C {devices/lab_pin.sym} -800 -240 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -800 -160 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -870 -200 2 1 {name=p1 sig_type=std_logic lab=X}
C {vsource.sym} -820 -20 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} -820 -80 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {gnd.sym} -820 30 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -720 -200 2 0 {name=p10 sig_type=std_logic lab=F}
C {code.sym} -1240 -300 0 0 {name=MODEL only_toplevel=true
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
C {../DigitalGates/INV.sym} -1010 -160 0 0 {name=X1}
C {capa.sym} -730 -170 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -730 -110 0 0 {name=l3 lab=GND}
