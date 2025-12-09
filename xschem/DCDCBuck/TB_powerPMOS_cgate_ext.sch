v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} 1160 -1650 0 0 0.4 0.4 {}
N 1790 -1490 1850 -1490 {
lab=VOUT}
N 1560 -1430 1560 -1410 {
lab=GND}
N 1560 -1490 1730 -1490 {
lab=VIN}
N 1880 -1550 1880 -1530 {
lab=V1V}
N 1820 -1550 1850 -1550 {
lab=V1V}
N 1820 -1550 1820 -1530 {
lab=V1V}
N 1850 -1550 1850 -1530 {
lab=V1V}
N 1850 -1550 1880 -1550 {
lab=V1V}
N 1980 -1380 1980 -1320 {
lab=GND}
N 1980 -1470 1980 -1440 {
lab=V1V}
N 1850 -1630 1850 -1550 {
lab=V1V}
N 1800 -1320 1860 -1320 {
lab=VOUT_C}
N 1570 -1260 1570 -1240 {
lab=GND}
N 1570 -1320 1740 -1320 {
lab=VIN_C}
N 1860 -1400 1860 -1380 {
lab=V1V}
C {devices/res.sym} 1760 -1490 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1560 -1460 0 0 {name=V1 value="PULSE (1 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1560 -1410 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1700 -1490 1 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 1820 -1490 3 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {devices/code_shown.sym} 1160 -1570 0 0 {name=s1 only_toplevel=false 
value="

.param T = 1.6u
.param Co = 119.8p
.tran 10p \{T\}
.save all
.ic v(vout) = 1
.control
run
meas tran teval WHEN v(vout) = 0.37
let res_val = 1000
let cap_val = teval/res_val
plot v(vin) v(vout) v(vout_c)
print cap_val
.endc
"}
C {vsource.sym} 1980 -1410 0 0 {name=V1V value=1 savecurrent=false}
C {lab_pin.sym} 1980 -1470 0 0 {name=p1 sig_type=std_logic lab=V1V}
C {gnd.sym} 1980 -1320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1850 -1630 0 0 {name=p2 sig_type=std_logic lab=V1V}
C {devices/res.sym} 1770 -1320 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1570 -1290 0 0 {name=V2 value="PULSE (1 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1570 -1240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1710 -1320 1 0 {name=p5 sig_type=std_logic lab=VIN_C
}
C {devices/lab_pin.sym} 1830 -1320 3 0 {name=p6 sig_type=std_logic lab=VOUT_C
}
C {lab_pin.sym} 1860 -1400 0 0 {name=p7 sig_type=std_logic lab=V1V}
C {capa.sym} 1860 -1350 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_hv_pmos.sym} 1850 -1510 1 1 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=\{ng_M1\}
m=\{mult_M1\}
model=sg13_hv_pmos
spiceprefix=X}
C {code.sym} 1150 -1260 0 0 {name=MODEL only_toplevel=true
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

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {code.sym} 1280 -1260 0 0 {name=POWER_MOS_Param only_toplevel=false spice_ignore=0

value="
.param mult = 95238
.param temp=27
.param mult_M1 = 3*mult
.param w_M1 =0.3u 
.param l_M1 = 0.45u
.param ng_M1 = 1

.param mult_M2 = 1*mult
.param w_M2 =0.3u 
.param l_M2 =0.45u
.param ng_M2 =1



"}
