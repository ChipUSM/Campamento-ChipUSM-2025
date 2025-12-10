v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -50 -30 -50 {lab=GND}
N -30 -50 -30 -0 {lab=GND}
N -80 0 -30 -0 {lab=GND}
N -80 -20 -80 -0 {lab=GND}
N -80 -0 -80 20 {lab=GND}
N 80 -50 130 -50 {lab=GND}
N 130 -50 130 0 {lab=GND}
N 80 0 130 0 {lab=GND}
N 80 -20 80 0 {lab=GND}
N 80 0 80 20 {lab=GND}
N 230 -50 280 -50 {lab=GND}
N 280 -50 280 0 {lab=GND}
N 230 0 280 0 {lab=GND}
N 230 -20 230 0 {lab=GND}
N 230 0 230 20 {lab=GND}
N 40 -110 40 -50 {lab=Vg}
N -120 -110 -120 -50 {lab=Vg}
N 190 -110 190 -50 {lab=Vg}
N 80 -140 80 -80 {lab=Vd}
N 230 -140 230 -80 {lab=Vd}
N -80 -140 -80 -80 {lab=Vd}
N -440 100 -440 120 {lab=GND}
N -440 10 -440 40 {lab=Vg}
N -340 100 -340 120 {lab=GND}
N -340 10 -340 40 {lab=Vd}
C {sg13g2_pr/sg13_hv_nmos.sym} -100 -50 0 0 {name=M1
l=0.45u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 60 -50 0 0 {name=M2
l=0.45u
w=10u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 210 -50 0 0 {name=M3
l=0.45u
w=5u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -80 -140 0 0 {name=p5 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -120 -110 0 0 {name=p6 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 80 -140 0 0 {name=p1 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 40 -110 0 0 {name=p2 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 230 -140 0 0 {name=p3 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 190 -110 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {gnd.sym} -80 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 20 0 0 {name=l2 lab=GND}
C {gnd.sym} 230 20 0 0 {name=l3 lab=GND}
C {code.sym} -460 -140 0 0 {name=Simulacion only_toplevel=false value="

.control

*** ALMACENAR DATOS Y CORRER SIMULACION

save all
+ @n.xm1.nsg13_hv_nmos[vds]
+ @n.xm1.nsg13_hv_nmos[ids]
+ @n.xm1.nsg13_hv_nmos[gds]
+ @n.xm1.nsg13_hv_nmos[weff]
+ @n.xm2.nsg13_hv_nmos[vds]
+ @n.xm2.nsg13_hv_nmos[ids]
+ @n.xm2.nsg13_hv_nmos[gds]
+ @n.xm2.nsg13_hv_nmos[weff]
+ @n.xm3.nsg13_hv_nmos[vds]
+ @n.xm3.nsg13_hv_nmos[ids]
+ @n.xm3.nsg13_hv_nmos[gds]
+ @n.xm3.nsg13_hv_nmos[weff]

dc Vd 0 3.3 0.01 Vg 1.32 3.3 0.66

*** GUARDAR DATOS COMO VARIABLES Y GRAFICAR

let vds1 = @n.xm1.nsg13_hv_nmos[vds]
let ids1 = @n.xm1.nsg13_hv_nmos[ids]
let vds2 = @n.xm2.nsg13_hv_nmos[vds]
let ids2 = @n.xm2.nsg13_hv_nmos[ids]

let vds3 = @n.xm3.nsg13_hv_nmos[vds]
let ids3 = @n.xm3.nsg13_hv_nmos[ids]
let rds3 = 1/@n.xm3.nsg13_hv_nmos[gds]

plot rds3 vs vds3
plot ids1 vs vds1
plot ids2 vs vds2
plot ids3 vs vds3

op
let ids1 = @n.xm1.nsg13_hv_nmos[ids]
let ids2 = @n.xm2.nsg13_hv_nmos[ids]
let ids3 = @n.xm3.nsg13_hv_nmos[ids]

let weff1 = @n.xm1.nsg13_hv_nmos[weff]
let weff2 = @n.xm2.nsg13_hv_nmos[weff]
let weff3 = @n.xm3.nsg13_hv_nmos[weff]
print weff1 weff2 weff3
.endc
"}
C {vsource.sym} -440 70 0 0 {name=Vg value=3.3 savecurrent=false}
C {vsource.sym} -340 70 0 0 {name=Vd value=3.3 savecurrent=false}
C {gnd.sym} -440 120 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -440 10 0 0 {name=p7 sig_type=std_logic lab=Vg}
C {gnd.sym} -340 120 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -340 10 0 0 {name=p8 sig_type=std_logic lab=Vd}
C {code_shown.sym} -470 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
