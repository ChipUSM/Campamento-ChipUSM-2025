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
N 250 360 250 370 {
lab=VSS}
N 250 -150 250 -140 {
lab=VDD}
N 250 -150 280 -150 {
lab=VDD}
N 280 -50 280 60 {
lab=VDD}
N 250 -110 280 -110 {
lab=VDD}
N 130 -110 160 -110 {
lab=VCP}
N 250 90 250 110 { lab=VOUT}
N 250 -160 250 -150 {
lab=VDD}
N 280 -150 280 -110 {
lab=VDD}
N 250 290 250 300 {
lab=#net1}
N 250 -80 250 -60 {
lab=#net2}
N 250 20 250 30 {
lab=#net3}
N 280 170 280 190 {
lab=VSS}
N 250 200 250 210 {
lab=#net4}
N 160 -110 210 -110 {
lab=VCP}
N 250 370 250 380 {
lab=VSS}
N 250 270 250 290 {
lab=#net1}
N 280 190 280 270 {
lab=VSS}
N 250 -50 250 -40 {
lab=#net2}
N 250 -60 250 -50 {
lab=#net2}
N 140 330 210 330 {
lab=VCN}
N 280 -110 280 -50 {
lab=VDD}
N 280 270 280 370 {
lab=VSS}
N 250 370 280 370 {
lab=VSS}
N 250 330 280 330 {
lab=VSS}
C {devices/ipin.sym} 170 110 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} 310 110 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} 250 -160 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 250 380 1 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 130 -110 0 0 {name=p3 lab=VCP}
C {sky130_fd_pr/pfet_01v8.sym} 230 -110 0 0 {name=MP3
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
C {ammeter.sym} 250 -10 0 1 {name=VIp savecurrent=true spice_ignore=0}
C {ammeter.sym} 250 240 0 1 {name=VIn savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 140 330 0 0 {name=p6 lab=VCN}
C {sky130_fd_pr/nfet_01v8.sym} 230 330 0 0 {name=MN3
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
