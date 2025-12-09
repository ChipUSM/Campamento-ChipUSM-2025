v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -610 165 -610 185 {lab=GND}
N -610 75 -610 105 {lab=Vdd}
N -495 -45 -495 -25 {lab=Vdd}
N -495 45 -495 65 {lab=GND}
N -585 10 -540 10 {lab=Vin}
N -400 10 -400 30 {
lab=Vout}
N -400 90 -400 110 {
lab=GND}
N -430 10 -400 10 {lab=Vout}
C {../LogicGates/NOT.sym} -480 30 0 0 {name=x1}
C {vsource.sym} -610 135 0 0 {name=V1 value=\{Vdd\} savecurrent=false}
C {code.sym} -850 20 0 0 {name=librerias only_toplevel=true
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
C {devices/code_shown.sym} -865 -290 0 0 {name=Simulacion only_toplevel=false 
value="
* DEFINIR VOLTAJE DE ALIMENTACION
.param Vdd = 1.2
* DEFINIR SEÑALES DE ENTRADA
vin VIN 0 dc=1 
.control
save all

dc vin 0 1.2 0.01 

**********************************************
plot V(vout)
.endc
"
}
C {gnd.sym} -610 185 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -610 75 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -495 -45 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {gnd.sym} -495 65 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -585 10 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {capa-2.sym} -400 60 0 0 {name=C1
m=1
value=25f
footprint=1206
device=polarized_capacitor}
C {gnd.sym} -400 110 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -400 10 2 0 {name=p4 sig_type=std_logic lab=Vout}
