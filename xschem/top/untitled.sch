v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -110 -90 -30 {lab=#net1}
N 80 -110 80 -30 {lab=#net2}
N 250 -110 250 -30 {lab=Vg}
N -50 -80 -50 -60 {lab=#net3}
N 120 -80 120 -60 {lab=#net4}
N 290 -80 290 -60 {lab=#net5}
N 290 0 290 20 {lab=#net6}
N 120 0 120 20 {lab=#net7}
N -50 0 -50 20 {lab=#net8}
N -50 -30 40 -30 {lab=GND}
N 40 -30 40 100 {lab=GND}
N -50 80 -50 100 {lab=GND}
N 120 80 120 100 {lab=GND}
N 290 80 290 100 {lab=GND}
N 120 -30 210 -30 {lab=GND}
N 210 -30 210 100 {lab=GND}
N 290 -30 380 -30 {lab=GND}
N 380 -30 380 100 {lab=GND}
N 120 -160 120 -140 {lab=Vdd}
N -50 -160 -50 -140 {lab=Vdd}
N 290 -160 290 -140 {lab=Vdd}
C {sg13g2_pr/sg13_hv_nmos.sym} -70 -30 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 -30 0 0 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 270 -30 0 0 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {res.sym} -50 -110 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 120 -110 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 290 -110 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -50 50 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 120 50 0 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 290 50 0 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -50 100 0 0 {name=l1 lab=GND}
C {gnd.sym} 40 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 120 100 0 0 {name=l3 lab=GND}
C {gnd.sym} 210 100 0 0 {name=l4 lab=GND}
C {gnd.sym} 290 100 0 0 {name=l5 lab=GND}
C {gnd.sym} 380 100 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -50 -160 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 120 -160 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 290 -160 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 250 -110 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 80 -110 0 0 {name=p5 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -90 -110 0 0 {name=p6 sig_type=std_logic lab=Vg}
