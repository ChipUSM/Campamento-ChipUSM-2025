v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -90 160 -60 {lab=F}
N 40 -200 160 -200 {lab=Vdd}
N -40 10 0 10 {lab=B}
N -40 90 0 90 {lab=A}
N -160 -120 -120 -120 {lab=B}
N 200 -120 240 -120 {lab=A}
N -40 140 40 140 {lab=Vss}
N 160 -60 200 -60 {lab=F}
N -80 -90 -80 -60 {lab=F}
N 40 -60 160 -60 {lab=F}
N 40 -200 40 -120 {lab=Vdd}
N -80 -200 40 -200 {lab=Vdd}
N 40 -60 40 -20 {lab=F}
N -80 -60 40 -60 {lab=F}
N 40 40 40 60 {lab=#net1}
N 40 120 40 140 {lab=Vss}
N 40 10 110 10 {lab=Vss}
N 110 90 110 140 {lab=Vss}
N 40 140 110 140 {lab=Vss}
N 40 90 110 90 {lab=Vss}
N 110 10 110 90 {lab=Vss}
N -80 -200 -80 -150 {lab=Vdd}
N -100 -200 -80 -200 {lab=Vdd}
N 160 -200 160 -150 {lab=Vdd}
N 40 -120 160 -120 {lab=Vdd}
N -80 -120 40 -120 {lab=Vdd}
N -320 -170 -270 -170 {lab=A}
N -320 -130 -270 -130 {lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 10 0 0 {name=M1
l=0.13u
w=\{W_n\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 90 0 0 {name=M2
l=0.13u
w=\{W_n\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 -120 0 0 {name=M3
l=0.13u
w=\{W_p\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -120 0 1 {name=M4
l=0.13u
w=\{W_n\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -40 10 0 0 {name=p1 sig_type=std_logic lab=B}
C {lab_pin.sym} -40 90 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -160 -120 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} 240 -120 0 1 {name=p4 sig_type=std_logic lab=A}
C {ipin.sym} -40 140 0 0 {name=p7 lab=Vss}
C {ipin.sym} -320 -170 0 0 {name=p9 lab=A}
C {ipin.sym} -320 -130 0 0 {name=p10 lab=B}
C {ipin.sym} -100 -200 0 0 {name=p11 lab=Vdd}
C {opin.sym} 200 -60 0 0 {name=p5 lab=F}
C {lab_pin.sym} -270 -170 0 1 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} -270 -130 0 1 {name=p8 sig_type=std_logic lab=B}
