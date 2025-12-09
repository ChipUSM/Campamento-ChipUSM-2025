v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1970 -1450 2030 -1450 {
lab=VOUT}
N 2030 -1390 2030 -1370 {
lab=GND}
N 1740 -1390 1740 -1370 {
lab=GND}
N 1740 -1450 1910 -1450 {
lab=VIN}
N 2000 -1410 2000 -1390 {
lab=GND}
N 2030 -1390 2060 -1390 {
lab=GND}
N 2060 -1410 2060 -1390 {
lab=GND}
N 2030 -1410 2030 -1390 {
lab=GND}
N 2000 -1390 2030 -1390 {
lab=GND}
N 1970 -1630 2030 -1630 {
lab=VOUT_C}
N 1740 -1570 1740 -1550 {
lab=GND}
N 1740 -1630 1910 -1630 {
lab=VIN_C}
N 2030 -1560 2030 -1550 {
lab=GND}
N 2030 -1630 2030 -1620 {
lab=VOUT_C}
N 1930 -1310 1990 -1310 {
lab=VOUT2}
N 1990 -1250 1990 -1230 {
lab=GND}
N 1700 -1250 1700 -1230 {
lab=GND}
N 1700 -1310 1870 -1310 {
lab=VIN2}
N 1960 -1270 1960 -1250 {
lab=GND}
N 1990 -1250 2020 -1250 {
lab=GND}
N 2020 -1270 2020 -1250 {
lab=GND}
N 1990 -1270 1990 -1250 {
lab=GND}
N 1960 -1250 1990 -1250 {
lab=GND}
N 1990 -1770 2050 -1770 {
lab=VOUT_C2}
N 1760 -1710 1760 -1690 {
lab=GND}
N 1760 -1770 1930 -1770 {
lab=VIN_C2}
N 2050 -1700 2050 -1690 {
lab=GND}
N 2050 -1770 2050 -1760 {
lab=VOUT_C2}
C {devices/res.sym} 1940 -1450 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1740 -1370 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2030 -1370 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1880 -1450 1 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 2000 -1450 1 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2030 -1430 3 1 {name=M2
l=\{l_M2\}
w=\{w_M2\}
ng=\{ng_M2\}
m=\{mult_M2\}
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/res.sym} 1940 -1630 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1740 -1600 0 0 {name=V2 value="PULSE (0 1 0 0.1p 0.1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1740 -1550 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2030 -1550 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1880 -1630 1 0 {name=p1 sig_type=std_logic lab=VIN_C
}
C {devices/lab_pin.sym} 2000 -1630 1 0 {name=p2 sig_type=std_logic lab=VOUT_C
}
C {capa.sym} 2030 -1590 0 0 {name=C1
m=1
value=\{C_HV\}
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 2150 -1620 0 0 {name=s2 only_toplevel=false 
value="
.param T = 10p
.param C_HV = 0.53f
.param C_LV = 0.22f

.tran 1p \{T\}
.save all
.ic v(vout) = 0
*.ic v(vout2) = 0
.ic v(vout_c) = 0
 
.control
run
meas tran teval WHEN v(vout) = 0.63
meas tran teval2 WHEN v(vout2) = 0.63
let res_val = 1000
let capHV_val = teval/res_val
let capLV_val = teval2/res_val
plot v(vin) v(vout) v(vout_c)
plot v(vin) v(vout2) v(vout_c2)
print capHV_val capLV_val
.endc
"}
C {devices/vsource.sym} 1740 -1420 0 0 {name=V3 value="PULSE (0 1 0 0.1p 0.1p \{T/2\} \{T\})" savecurrent=false}
C {code.sym} 1480 -1610 0 0 {name=POWER_MOS_Param only_toplevel=false spice_ignore=0

value="
.param mult = 1
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
C {devices/res.sym} 1900 -1310 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1700 -1230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1990 -1230 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1840 -1310 1 0 {name=p5 sig_type=std_logic lab=VIN2
}
C {devices/lab_pin.sym} 1960 -1310 1 0 {name=p6 sig_type=std_logic lab=VOUT2
}
C {devices/vsource.sym} 1700 -1280 0 0 {name=V1 value="PULSE (0 1 0 0.1p 0.1p \{T/2\} \{T\})" savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 1990 -1290 3 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {code.sym} 1480 -1470 0 0 {name=MODEL only_toplevel=true
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
C {devices/res.sym} 1960 -1770 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1760 -1740 0 0 {name=V4 value="PULSE (0 1 0 0.1p 0.1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1760 -1690 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 2050 -1690 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1900 -1770 1 0 {name=p7 sig_type=std_logic lab=VIN_C2
}
C {devices/lab_pin.sym} 2020 -1770 1 0 {name=p8 sig_type=std_logic lab=VOUT_C2
}
C {capa.sym} 2050 -1730 0 0 {name=C2
m=1
value=\{C_LV\}
footprint=1206
device="ceramic capacitor"}
