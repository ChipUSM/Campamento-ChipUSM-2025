v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 160 -60 210 {
lab=GND}
N -60 150 -60 160 {
lab=GND}
N -130 -50 -100 -50 {
lab=VgM1}
N -130 120 -100 120 {
lab=VgM2}
N -90 -100 -60 -100 {
lab=Vin}
N -60 -90 -60 -80 {
lab=Vin}
N -60 -50 -40 -50 {
lab=Vin}
N -40 -90 -40 -50 {
lab=Vin}
N -60 -90 -40 -90 {
lab=Vin}
N -60 -100 -60 -90 {
lab=Vin}
N -60 120 -40 120 {
lab=GND}
N -40 120 -40 160 {
lab=GND}
N -60 160 -40 160 {
lab=GND}
N -90 210 -60 210 {
lab=GND}
N -80 10 -60 10 {
lab=Vc}
N -60 -20 -60 10 {
lab=Vc}
N 210 210 300 210 {
lab=GND}
N 210 10 220 10 {
lab=#net1}
N 300 10 340 10 {
lab=Vo}
N 90 10 110 10 {
lab=#net2}
N 300 120 300 210 {
lab=GND}
N 300 10 300 60 {
lab=Vo}
N 280 10 300 10 {
lab=Vo}
N 210 10 210 70 {
lab=#net1}
N 170 10 210 10 {
lab=#net1}
N 210 130 210 210 {
lab=GND}
N -60 10 30 10 {
lab=Vc}
N -60 210 210 210 {
lab=GND}
N -60 80 -60 90 {
lab=#net3}
N -60 10 -60 20 {
lab=Vc}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 120 2 1 {name=M2
l=0.45u
w=10u
ng=1
m=4080
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 -50 0 0 {name=M1
l=0.4u
w=10u
ng=1
m=12096
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} -90 -100 2 0 {name=p1 lab=Vin

}
C {ipin.sym} -130 -50 0 0 {name=p2 lab=VgM1}
C {ipin.sym} -130 120 0 0 {name=p4 lab=VgM2}
C {iopin.sym} 340 10 0 0 {name=p3 lab=Vo}
C {iopin.sym} -90 210 2 0 {name=p6 lab=GND

}
C {lab_pin.sym} -80 10 0 0 {name=p5 sig_type=std_logic lab=Vc}
C {ind.sym} 140 10 3 1 {name=L1
m=1
value=\{L\}
footprint=1206
device=inductor}
C {capa.sym} 210 100 0 0 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} 250 10 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {ammeter.sym} 60 10 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {res.sym} 300 90 0 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {ammeter.sym} -60 50 0 1 {name=V_IM2 savecurrent=true spice_ignore=0}
