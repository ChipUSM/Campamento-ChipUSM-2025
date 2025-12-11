v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -960 -730 0 0 0.4 0.4 {}
N 730 -640 730 -610 {
lab=Vdd}
N 730 -550 730 -530 {
lab=GND}
N 800 -510 800 -480 {
lab=Vs}
N 800 -420 800 -400 {
lab=GND}
N 840 -640 840 -610 {
lab=VH}
N 840 -550 840 -530 {
lab=GND}
N 400 -510 450 -510 {
lab=Vg}
N -220 -690 -220 -670 {
lab=VH}
N 450 -510 480 -510 {
lab=Vg}
N 480 -510 490 -510 {
lab=Vg}
N 330 -510 340 -510 {
lab=#net1}
N -150 -510 -150 -470 {
lab=#net2}
N 140 -300 310 -300 {
lab=GND}
N -30 -300 140 -300 {
lab=GND}
N -270 -510 -200 -510 {
lab=Vs}
N -20 -510 -20 -440 {
lab=Vg1}
N -150 -580 -150 -510 {
lab=#net2}
N -20 -560 -20 -510 {
lab=Vg1}
N 20 -510 20 -470 {
lab=Vg2}
N 140 -670 310 -670 {
lab=VH}
N -30 -670 140 -670 {
lab=VH}
N -220 -670 -30 -670 {
lab=VH}
N -300 -510 -270 -510 {
lab=Vs}
N 310 -300 310 -270 {
lab=GND}
N 20 -510 60 -510 {
lab=Vg2}
N 20 -580 20 -510 {
lab=Vg2}
N -150 -440 -140 -440 {
lab=GND}
N -140 -440 -140 -410 {
lab=GND}
N -150 -410 -140 -410 {
lab=GND}
N 20 -440 40 -440 {
lab=GND}
N 40 -440 40 -410 {
lab=GND}
N 20 -410 40 -410 {
lab=GND}
N -150 -610 -130 -610 {
lab=VH}
N -130 -640 -130 -610 {
lab=VH}
N -150 -640 -130 -640 {
lab=VH}
N 20 -610 40 -610 {
lab=VH}
N 40 -640 40 -610 {
lab=VH}
N 20 -640 40 -640 {
lab=VH}
N -80 -510 -20 -510 {
lab=Vg1}
N -150 -510 -140 -510 {
lab=#net2}
N -30 -560 -20 -560 {
lab=Vg1}
N -20 -610 -20 -560 {
lab=Vg1}
N -200 -610 -190 -610 {
lab=Vs}
N -200 -610 -200 -440 {
lab=Vs}
N -200 -440 -190 -440 {
lab=Vs}
N -150 -410 -150 -300 {
lab=GND}
N -150 -300 -20 -300 {
lab=GND}
N -150 -670 -150 -640 {
lab=VH}
N 20 -670 20 -640 {
lab=VH}
N 20 -410 20 -300 {
lab=GND}
N 120 -510 120 -440 {
lab=Vg2}
N 120 -560 120 -510 {
lab=Vg2}
N 160 -510 160 -470 {
lab=Vg3}
N 160 -510 200 -510 {
lab=Vg3}
N 160 -580 160 -510 {
lab=Vg3}
N 160 -440 180 -440 {
lab=GND}
N 180 -440 180 -410 {
lab=GND}
N 160 -410 180 -410 {
lab=GND}
N 160 -610 180 -610 {
lab=VH}
N 180 -640 180 -610 {
lab=VH}
N 160 -640 180 -640 {
lab=VH}
N 60 -510 120 -510 {
lab=Vg2}
N 110 -560 120 -560 {
lab=Vg2}
N 120 -610 120 -560 {
lab=Vg2}
N 160 -670 160 -640 {
lab=VH}
N 160 -410 160 -300 {
lab=GND}
N 270 -510 270 -440 {
lab=Vg3}
N 270 -560 270 -510 {
lab=Vg3}
N 310 -510 310 -470 {
lab=#net1}
N 310 -580 310 -510 {
lab=#net1}
N 310 -440 330 -440 {
lab=GND}
N 330 -440 330 -410 {
lab=GND}
N 310 -410 330 -410 {
lab=GND}
N 310 -610 330 -610 {
lab=VH}
N 330 -640 330 -610 {
lab=VH}
N 310 -640 330 -640 {
lab=VH}
N 210 -510 270 -510 {
lab=Vg3}
N 260 -560 270 -560 {
lab=Vg3}
N 270 -610 270 -560 {
lab=Vg3}
N 310 -670 310 -640 {
lab=VH}
N 310 -410 310 -300 {
lab=GND}
N 200 -510 220 -510 {
lab=Vg3}
N 310 -510 340 -510 {
lab=#net1}
N 480 -450 480 -300 {
lab=GND}
N 310 -300 480 -300 {
lab=GND}
C {vsource.sym} 730 -580 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} 730 -640 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} 730 -530 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 800 -510 0 0 {name=p4 sig_type=std_logic lab=Vs}
C {vsource.sym} 800 -450 0 1 {name=Vs value="PULSE(0 \{Vdd\} \{Del\} \{1n\} \{1n\} \{T*D\} \{T\} 0)" savecurrent=false}
C {gnd.sym} 800 -400 0 0 {name=l5 lab=GND}
C {code.sym} -640 -640 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.8
.param VH = 1.8

.param Co = 63p

.param D = 0.5
*.param T = 1u
.param T = 0.1u
.param TR = 10n
.param TF = 10n
*.param TdR = 0.1u
.param TdR = 1n
*.param TdF = 0.1u
.param TdF = 1n
.param Del = 0.05u
.param temp = 27


"}
C {devices/code.sym} -970 -450 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.control
reset
set color0 = white
tran 1n 1u

plot v(Vs) 
plot v(Vg)
plot i(VIo1)

*meas TRAN td_off_M1 TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG VsdM1 VAL=0.33 RISE=1
*meas TRAN td_on_M1 TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG VsdM1 VAL=2.97 FALL=1
*meas TRAN td_on_M2 TRIG v(Vg_M2) VAL=0.33 RISE=1 TARG VdsM2 VAL=2.97 FALL=1
*meas TRAN td_off_M2 TRIG v(Vg_M2) VAL=2.97 FALL=1 TARG VdsM2 VAL=0.33 RISE=1
*let TdR = td_off_M1 - td_on_M2 
*let TdF = td_on_M1 - td_off_M2
*print TdR TdF
.endc

.end
"}
C {code.sym} -840 -640 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

.param mult_1 = 1
.param mult_2 = 10
.param mult_3 = 30
.param mult_4 = 250

.param l_D = 0.15
.param w_DP = 0.42
.param w_DN = 0.42


"}
C {vsource.sym} 840 -580 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} 840 -640 0 0 {name=p1 sig_type=std_logic lab=VH
value=\{VH\}}
C {gnd.sym} 840 -530 0 0 {name=l1 lab=GND
value=\{VH\}}
C {capa.sym} 480 -480 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -300 -510 0 0 {name=p2 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -220 -690 0 1 {name=p6 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} 490 -510 0 1 {name=p7 sig_type=std_logic lab=Vg}
C {code.sym} -970 -640 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {ammeter.sym} 370 -510 3 0 {name=VIo1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} -30 -560 0 0 {name=p12 sig_type=std_logic lab=Vg1}
C {ammeter.sym} -110 -510 3 0 {name=VIg78 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} -170 -440 0 0 {name=M2
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{mult_1\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -170 -610 0 0 {name=M1
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{mult_1*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 0 -610 0 0 {name=M3
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{mult_2*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 -440 0 0 {name=M4
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{mult_2\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 110 -560 0 0 {name=p13 sig_type=std_logic lab=Vg2}
C {sky130_fd_pr/pfet_01v8.sym} 140 -610 0 0 {name=M5
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{mult_3*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -440 0 0 {name=M6
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{mult_3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 260 -560 0 0 {name=p14 sig_type=std_logic lab=Vg3}
C {sky130_fd_pr/pfet_01v8.sym} 290 -610 0 0 {name=M7
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{mult_4*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 -440 0 0 {name=M8
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{mult_4\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 310 -270 0 0 {name=l3 lab=GND
value=\{VH\}}
