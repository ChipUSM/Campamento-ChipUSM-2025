v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -70 140 -30 {
lab=#net1}
N 450 140 600 140 {
lab=GND}
N 310 140 450 140 {
lab=GND}
N 270 -70 270 0 {
lab=Vg1}
N 140 -140 140 -70 {
lab=#net1}
N 270 -120 270 -70 {
lab=Vg1}
N 310 -70 310 -30 {
lab=Vg2}
N 450 -230 600 -230 {
lab=VH}
N 310 -230 450 -230 {
lab=VH}
N 140 -230 310 -230 {
lab=VH}
N 70 -250 70 -230 {
lab=VH}
N 60 -250 70 -250 {
lab=VH}
N -10 -70 90 -70 {
lab=Vs}
N 600 140 600 170 {
lab=GND}
N 310 -70 410 -70 {
lab=Vg2}
N 310 -140 310 -70 {
lab=Vg2}
N 140 0 150 0 {
lab=GND}
N 150 0 150 30 {
lab=GND}
N 140 30 150 30 {
lab=GND}
N 310 0 330 0 {
lab=GND}
N 330 0 330 30 {
lab=GND}
N 310 30 330 30 {
lab=GND}
N 140 -170 160 -170 {
lab=VH}
N 160 -200 160 -170 {
lab=VH}
N 140 -200 160 -200 {
lab=VH}
N 310 -170 330 -170 {
lab=VH}
N 330 -200 330 -170 {
lab=VH}
N 310 -200 330 -200 {
lab=VH}
N 210 -70 270 -70 {
lab=Vg1}
N 140 -70 150 -70 {
lab=#net1}
N 260 -120 270 -120 {
lab=Vg1}
N 270 -170 270 -120 {
lab=Vg1}
N 90 -170 100 -170 {
lab=Vs}
N 90 -70 90 0 {
lab=Vs}
N 90 0 100 0 {
lab=Vs}
N 140 30 140 140 {
lab=GND}
N 140 -230 140 -200 {
lab=VH}
N 310 -230 310 -200 {
lab=VH}
N 310 30 310 140 {
lab=GND}
N 410 -70 410 0 {
lab=Vg2}
N 410 -120 410 -70 {
lab=Vg2}
N 450 -70 450 -30 {
lab=Vg3}
N 450 -70 560 -70 {
lab=Vg3}
N 450 -140 450 -70 {
lab=Vg3}
N 450 0 470 0 {
lab=GND}
N 470 0 470 30 {
lab=GND}
N 450 30 470 30 {
lab=GND}
N 450 -170 470 -170 {
lab=VH}
N 470 -200 470 -170 {
lab=VH}
N 450 -200 470 -200 {
lab=VH}
N 400 -120 410 -120 {
lab=Vg2}
N 410 -170 410 -120 {
lab=Vg2}
N 450 -230 450 -200 {
lab=VH}
N 450 30 450 140 {
lab=GND}
N 560 -70 560 0 {
lab=Vg3}
N 560 -120 560 -70 {
lab=Vg3}
N 600 -70 600 -30 {
lab=Vg}
N 600 -140 600 -70 {
lab=Vg}
N 600 0 620 0 {
lab=GND}
N 620 0 620 30 {
lab=GND}
N 600 30 620 30 {
lab=GND}
N 600 -170 620 -170 {
lab=VH}
N 620 -200 620 -170 {
lab=VH}
N 600 -200 620 -200 {
lab=VH}
N 550 -120 560 -120 {
lab=Vg3}
N 560 -170 560 -120 {
lab=Vg3}
N 600 -230 600 -200 {
lab=VH}
N 600 30 600 140 {
lab=GND}
N 600 -70 630 -70 {
lab=Vg}
N 140 140 310 140 {
lab=GND}
N 90 -170 90 -70 {
lab=Vs}
N 70 -230 140 -230 {
lab=VH}
C {iopin.sym} 60 -250 0 1 {name=p1 lab=VH}
C {ipin.sym} -10 -70 0 0 {name=p3 lab=Vs}
C {opin.sym} 630 -70 0 0 {name=p4 lab=Vg}
C {iopin.sym} 600 170 0 1 {name=p5 lab=GND}
C {lab_pin.sym} 260 -120 0 0 {name=p8 sig_type=std_logic lab=Vg1}
C {ammeter.sym} 180 -70 3 0 {name=VIg78 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 120 0 0 0 {name=M2
W= 0.42
L= 0.15
nf=1
mult= 1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 120 -170 0 0 {name=M1
W= 0.42
L= 0.15
nf=1
mult= 3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -170 0 0 {name=M3
W= 0.42
L= 0.15
nf=1
mult= 30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 0 0 0 {name=M4
W= 0.42
L= 0.15
nf=1
mult= 10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 400 -120 0 0 {name=p2 sig_type=std_logic lab=Vg2}
C {sky130_fd_pr/pfet_01v8.sym} 430 -170 0 0 {name=M5
W= 0.42
L= 0.15
nf=1
mult= 90
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 0 0 0 {name=M6
W= 0.42
L= 0.15
nf=1
mult= 30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 550 -120 0 0 {name=p6 sig_type=std_logic lab=Vg3}
C {sky130_fd_pr/pfet_01v8.sym} 580 -170 0 0 {name=M7
W= 0.42
L= 0.15
nf=1
mult= 750
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 580 0 0 0 {name=M8
W= 0.42
L= 0.15
nf=1
mult= 250
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -30 -250 0 1 {name=p7 lab=Vdd}
