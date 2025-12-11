v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 40 150 60 {
lab=GND}
N 270 -20 370 -20 {lab=Vd1}
N 370 -20 370 10 {lab=Vd1}
N 290 40 330 40 {lab=GND}
N 370 40 370 90 {lab=GND}
N 290 90 370 90 {lab=GND}
N 290 40 290 90 {lab=GND}
N 150 210 150 230 {
lab=GND}
N 370 120 370 220 {lab=GND}
N 300 150 330 150 {lab=Vg1}
N 150 150 210 150 {lab=#net1}
N 150 -20 210 -20 {lab=#net2}
N 300 150 300 220 {lab=Vg1}
N 270 150 300 150 {lab=Vg1}
N 520 40 520 60 {
lab=GND}
N 640 -20 740 -20 {lab=Vd2}
N 740 -20 740 10 {lab=Vd2}
N 660 40 700 40 {lab=GND}
N 740 40 740 90 {lab=GND}
N 660 90 740 90 {lab=GND}
N 660 40 660 90 {lab=GND}
N 520 210 520 230 {
lab=GND}
N 740 120 740 220 {lab=GND}
N 670 150 700 150 {lab=Vg2}
N 520 150 580 150 {lab=#net3}
N 520 -20 580 -20 {lab=#net4}
N 670 150 670 220 {lab=Vg2}
N 640 150 670 150 {lab=Vg2}
C {code.sym} -130 100 0 0 {name=Simulación only_toplevel=false value="

.control
tran 10p 10n
meas tran tau_d1 when v(Vd1) = 2.079 CROSS=1
meas tran tau_g1 when v(Vg1) = 2.079 CROSS=1
meas tran tau_d2 when v(Vd2) = 2.079 CROSS=1
meas tran tau_g2 when v(Vg2) = 2.079 CROSS=1

let cd1 = tau_d1/(100k)
let cg1 = tau_g1/(100k)
let cd2 = tau_d2/(100k)
let cg2 = tau_g2/(100k)

print cd1 cd2
print cg1 cg2

.endc
"}
C {code_shown.sym} -130 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/res.sym} 240 -20 1 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 150 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 150 10 0 0 {name=V2 value="PULSE (\{Vdd\} 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {sg13g2_pr/sg13_hv_nmos.sym} 350 40 0 0 {name=M1
l=0.45u
w=\{W\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 290 90 0 0 {name=l2 lab=GND}
C {code.sym} -130 -50 0 0 {name=Parametros only_toplevel=false value="
.param R = 100k
.param Vdd = 3.3
.param T = 8n
.param M = 10
.param W = \{M*1u\}
"}
C {devices/res.sym} 240 150 1 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 150 230 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 150 180 0 0 {name=V1 value="PULSE (\{Vdd\} 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {sg13g2_pr/sg13_hv_nmos.sym} 350 150 0 0 {name=M2
l=0.45u
w=\{W\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 370 220 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 370 -20 0 1 {name=p1 sig_type=std_logic lab=Vd1}
C {lab_pin.sym} 300 220 0 1 {name=p2 sig_type=std_logic lab=Vg1}
C {devices/res.sym} 610 -20 1 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 520 60 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 520 10 0 0 {name=V3 value="PULSE (\{Vdd\} 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {sg13g2_pr/sg13_hv_nmos.sym} 720 40 0 0 {name=M3
l=0.45u
w=1.0u
ng=1
m=\{M\}
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 660 90 0 0 {name=l6 lab=GND}
C {devices/res.sym} 610 150 1 0 {name=R4
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 520 230 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 520 180 0 0 {name=V4 value="PULSE (\{Vdd\} 0 0 1p 1p \{T/2\} \{T\})" savecurrent=false}
C {sg13g2_pr/sg13_hv_nmos.sym} 720 150 0 0 {name=M4
l=0.45u
w=1.0u
ng=1
m=\{M\}
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 740 220 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 740 -20 0 1 {name=p3 sig_type=std_logic lab=Vd2}
C {lab_pin.sym} 670 220 0 1 {name=p4 sig_type=std_logic lab=Vg2}
