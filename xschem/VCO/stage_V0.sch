v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 60 210 60 { lab=VIN}
N 170 60 170 170 { lab=VIN}
N 170 170 210 170 { lab=VIN}
N 250 110 250 140 { lab=VOUT}
N 250 60 280 60 { lab=VDD}
N 250 170 280 170 { lab=VSS}
N 250 110 310 110 { lab=VOUT}
N 250 340 250 350 {
lab=VSS}
N 250 -130 250 -120 {
lab=VDD}
N 250 -130 280 -130 {
lab=VDD}
N 250 -90 280 -90 {
lab=VDD}
N 250 340 280 340 {
lab=VSS}
N 280 300 280 340 {
lab=VSS}
N 250 300 280 300 {
lab=VSS}
N 130 -70 210 -70 {
lab=VCP}
N 0 -130 250 -130 {
lab=VDD}
N 30 340 250 340 {
lab=VSS}
N 0 330 0 340 {
lab=VSS}
N -130 300 -40 300 {
lab=VCN}
N -260 340 0 340 {
lab=VSS}
N -260 330 -260 340 {
lab=VSS}
N -260 240 -260 270 {
lab=VCN}
N -30 -130 0 -130 {
lab=VDD}
N -260 -130 -260 -120 {
lab=VDD}
N -200 240 -200 300 {
lab=VCN}
N -260 240 -200 240 {
lab=VCN}
N 0 -20 60 -20 {
lab=VCP}
N 60 -70 60 -20 {
lab=VCP}
N -330 -90 -300 -90 {
lab=VCONT}
N 0 300 30 300 {
lab=VSS}
N 30 300 30 340 {
lab=VSS}
N -40 260 -40 300 {
lab=VCN}
N -40 260 210 260 {
lab=VCN}
N 210 260 210 300 {
lab=VCN}
N -280 300 -260 300 {
lab=VSS}
N -280 300 -280 340 {
lab=VSS}
N -280 340 -260 340 {
lab=VSS}
N -260 -90 -230 -90 {
lab=VDD}
N -230 -130 -230 -90 {
lab=VDD}
N -30 -70 0 -70 {
lab=VDD}
N 250 90 250 110 { lab=VOUT}
N 250 -140 250 -130 {
lab=VDD}
N 280 -130 280 -90 {
lab=VDD}
N 250 330 250 340 {
lab=VSS}
N -220 300 -200 300 {
lab=VCN}
N 0 -40 0 -20 {
lab=VCP}
N 40 -70 60 -70 {
lab=VCP}
N 0 340 30 340 {
lab=VSS}
N -260 -130 -230 -130 {
lab=VDD}
N -230 -130 -30 -130 {
lab=VDD}
N -260 -60 -260 60 {
lab=#net1}
N 210 -90 210 -70 {
lab=VCP}
N -30 -130 -30 -70 {
lab=VDD}
N 0 -130 0 -100 {
lab=VDD}
N -130 290 -130 300 {
lab=VCN}
N 130 -80 130 -70 {
lab=VCP}
N 250 -60 250 -40 {
lab=#net2}
N 250 20 250 30 {
lab=#net3}
N 280 -90 280 60 {
lab=VDD}
N 0 -20 0 60 {
lab=VCP}
N 280 170 280 300 {
lab=VSS}
N 250 200 250 210 {
lab=#net4}
N -260 120 -260 240 {
lab=VCN}
N -0 120 -0 270 {
lab=#net5}
N -200 300 -130 300 {
lab=VCN}
N 60 -70 130 -70 {
lab=VCP}
C {devices/ipin.sym} 170 110 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} 310 110 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} 250 -140 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 250 350 1 0 {name=p4 lab=VSS}
C {devices/ipin.sym} -330 -90 0 0 {name=p3 lab=VCONT}
C {sky130_fd_pr/pfet_01v8.sym} -280 -90 0 0 {name=MP1
W= \{w_MP1\}
L= \{l_MP1\}
nf=1
mult= 1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -70 0 1 {name=MP2
W= \{w_MP2\}
L= \{l_MP2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 230 -90 0 0 {name=MP3
W=\{w_MP3\}
L=\{l_MP3\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 230 60 0 0 {name=MP4
W=\{w_MP4\}
L=\{l_MP4\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -240 300 0 1 {name=MN1
W=\{w_MN1\}
L=\{l_MN1\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 300 0 0 {name=MN2
W=\{w_MN2\}
L=\{l_MN2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 300 0 0 {name=MN3
W=\{w_MN3\}
L=\{l_MN3\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 170 0 0 {name=MN4
W=\{w_MN4\}
L=\{l_MN4\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -130 290 0 0 {name=p6 sig_type=std_logic lab=VCN}
C {lab_wire.sym} 130 -80 0 0 {name=p7 sig_type=std_logic lab=VCP}
C {ammeter.sym} -260 90 0 0 {name=VIcont savecurrent=true spice_ignore=0}
C {ammeter.sym} 250 -10 0 1 {name=VIp savecurrent=true spice_ignore=0}
C {ammeter.sym} 250 240 0 1 {name=VIn savecurrent=true spice_ignore=0}
C {ammeter.sym} 0 90 0 0 {name=VIcont1 savecurrent=true spice_ignore=0}
