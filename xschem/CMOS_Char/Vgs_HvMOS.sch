v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -30 -80 -30 {lab=GND}
N -80 -30 -80 20 {lab=GND}
N -130 20 -80 20 {lab=GND}
N -130 0 -130 20 {lab=GND}
N -130 20 -130 40 {lab=GND}
N -170 -90 -170 -30 {lab=Vg}
N -130 -120 -130 -60 {lab=Vd}
N -400 120 -400 140 {lab=GND}
N -400 30 -400 60 {lab=Vg}
N -300 120 -300 140 {lab=GND}
N -300 30 -300 60 {lab=Vd}
N 40 -30 90 -30 {lab=GND}
N 90 -30 90 20 {lab=GND}
N 40 20 90 20 {lab=GND}
N 40 0 40 20 {lab=GND}
N 40 20 40 40 {lab=GND}
N 190 -30 240 -30 {lab=GND}
N 240 -30 240 20 {lab=GND}
N 190 20 240 20 {lab=GND}
N 190 0 190 20 {lab=GND}
N 190 20 190 40 {lab=GND}
N 0 -90 0 -30 {lab=Vg}
N 150 -90 150 -30 {lab=Vg}
N 40 -120 40 -60 {lab=Vd}
N 190 -120 190 -60 {lab=Vd}
C {sg13g2_pr/sg13_hv_nmos.sym} -150 -30 0 0 {name=M1
l=0.45u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -130 -120 0 0 {name=p5 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -170 -90 0 0 {name=p6 sig_type=std_logic lab=Vg}
C {gnd.sym} -130 40 0 0 {name=l1 lab=GND}
C {code.sym} -420 -120 0 0 {name=Simulacion only_toplevel=false value="

.control

*** ALMACENAR DATOS Y CORRER SIMULACION

save all
+ @n.xm1.nsg13_hv_nmos[vgs]
+ @n.xm1.nsg13_hv_nmos[ids]
+ @n.xm1.nsg13_hv_nmos[gm]
+ @n.xm2.nsg13_hv_nmos[vgs]
+ @n.xm2.nsg13_hv_nmos[ids]
+ @n.xm2.nsg13_hv_nmos[gm]
+ @n.xm3.nsg13_hv_nmos[vgs]
+ @n.xm3.nsg13_hv_nmos[ids]
+ @n.xm3.nsg13_hv_nmos[gm]

dc Vg 0 3.3 0.01

*** GUARDAR DATOS COMO VARIABLES Y GRAFICAR

let vgs1 = @n.xm1.nsg13_hv_nmos[vgs]
let ids1 = @n.xm1.nsg13_hv_nmos[ids]
let gm1 = @n.xm1.nsg13_hv_nmos[gm]

let vgs2 = @n.xm2.nsg13_hv_nmos[vgs]
let ids2 = @n.xm2.nsg13_hv_nmos[ids]
let gm1 = @n.xm2.nsg13_hv_nmos[gm]


let vgs3 = @n.xm3.nsg13_hv_nmos[vgs]
let ids3 = @n.xm3.nsg13_hv_nmos[ids]
let gm3 = @n.xm3.nsg13_hv_nmos[gm]

plot ids1 vs vgs1
plot ids2 vs vgs2
plot ids3 vs vgs3

print ids1[330]
print ids2[330]
print ids3[330]

*plot gm1 vs vgs1
*plot gm2 vs vgs2
*plot gm3 vs vgs3
.endc
"}
C {vsource.sym} -400 90 0 0 {name=Vg value=3.3 savecurrent=false}
C {vsource.sym} -300 90 0 0 {name=Vd value=3.3 savecurrent=false}
C {gnd.sym} -400 140 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -400 30 0 0 {name=p7 sig_type=std_logic lab=Vg}
C {gnd.sym} -300 140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -300 30 0 0 {name=p8 sig_type=std_logic lab=Vd}
C {code_shown.sym} -430 -210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 -30 0 0 {name=M2
l=0.45u
w=10u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 170 -30 0 0 {name=M3
l=0.45u
w=5u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 40 -120 0 0 {name=p1 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 0 -90 0 0 {name=p2 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 190 -120 0 0 {name=p3 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 150 -90 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {gnd.sym} 40 40 0 0 {name=l2 lab=GND}
C {gnd.sym} 190 40 0 0 {name=l3 lab=GND}
