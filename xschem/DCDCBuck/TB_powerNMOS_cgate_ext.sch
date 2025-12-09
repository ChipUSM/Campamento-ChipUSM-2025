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
N 1940 -1310 2000 -1310 {
lab=VOUT2}
N 2000 -1250 2000 -1230 {
lab=GND}
N 1710 -1250 1710 -1230 {
lab=GND}
N 1710 -1310 1880 -1310 {
lab=VIN2}
N 1970 -1270 1970 -1250 {
lab=GND}
N 2000 -1250 2030 -1250 {
lab=GND}
N 2030 -1270 2030 -1250 {
lab=GND}
N 2000 -1270 2000 -1250 {
lab=GND}
N 1970 -1250 2000 -1250 {
lab=GND}
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
C {code_shown.sym} 1470 -1730 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
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
C {devices/vsource.sym} 1740 -1600 0 0 {name=V2 value="PULSE (0 1 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {devices/gnd.sym} 1740 -1550 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2030 -1550 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1880 -1630 1 0 {name=p1 sig_type=std_logic lab=VIN_C
}
C {devices/lab_pin.sym} 2000 -1630 1 0 {name=p2 sig_type=std_logic lab=VOUT_C
}
C {capa.sym} 2030 -1590 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 2150 -1620 0 0 {name=s2 only_toplevel=false 
value="
.param T = 700n
.param Co = 50p

.tran 10p \{T\}
.save all
.ic v(vout) = 0
.ic v(vout2) = 0
.ic v(vout_c) = 0
 
.control
run
meas tran teval WHEN v(vout) = 0.63
meas tran teval2 WHEN v(vout2) = 0.63
let res_val = 1000
let cap_val = teval/res_val
let cap_val2 = teval2/res_val
plot v(vin) v(vout) v(vout2) v(vout_c)
print cap_val cap_val2
.endc
"}
C {devices/vsource.sym} 1740 -1420 0 0 {name=V3 value="PULSE (0 1 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {code.sym} 1480 -1610 0 0 {name=POWER_MOS_Param1 only_toplevel=false spice_ignore=0

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
C {devices/res.sym} 1910 -1310 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1710 -1230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 2000 -1230 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1850 -1310 1 0 {name=p5 sig_type=std_logic lab=VIN2
}
C {devices/lab_pin.sym} 1970 -1310 1 0 {name=p6 sig_type=std_logic lab=VOUT2
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2000 -1290 3 1 {name=M1
l=\{l_M2\}
w=\{w_M2*10\}
ng=\{ng_M2\}
m=\{mult_M2/10\}
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 1710 -1280 0 0 {name=V1 value="PULSE (0 1 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
