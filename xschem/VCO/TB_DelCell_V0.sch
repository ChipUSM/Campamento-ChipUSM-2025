v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {lv_nmos/lv_pmos 1.8V 
Vds = [0:1.95]
Vgs = [0:1.95]
Vbs = [0.3:-1.95]
l_min = 0.15u; l_max = 10u;
w_min = 0.42u; w_max = 10u?

5v0d10v0_pmos/nmos 

Vds = [0:10.5]
Vgs = [0:5]
Vbs = [0.3:-1.95]
l_min = 0.5u; l_max = 10u;
w_min = 0.42u; w_max = 10u?
} 3570 -1180 0 0 0.4 0.4 {}
N 2430 -1040 2430 -1010 {
lab=VDD}
N 2430 -930 2430 -900 {
lab=VSS}
N 2330 -960 2360 -960 {
lab=VCONT}
N 2480 -980 2510 -980 {
lab=#net1}
N 2510 -980 2540 -980 {
lab=#net1}
N 2830 -980 2830 -960 {
lab=Vdel}
N 2700 -980 2830 -980 {
lab=Vdel}
N 2290 -960 2290 -950 {
lab=VCONT}
N 2290 -890 2290 -870 {
lab=VSS}
N 2290 -960 2330 -960 {
lab=VCONT}
N 2280 -960 2290 -960 {
lab=VCONT}
N 2290 -1070 2290 -1050 {
lab=GND}
N 2290 -1150 2290 -1130 {
lab=Vin}
N 2350 -980 2360 -980 {
lab=Vin}
N 2590 -980 2590 -940 {
lab=Vdel}
N 2590 -1050 2590 -980 {
lab=Vdel}
N 2590 -910 2600 -910 {
lab=VSS}
N 2600 -910 2600 -880 {
lab=VSS}
N 2590 -880 2600 -880 {
lab=VSS}
N 2590 -1080 2610 -1080 {
lab=VDD}
N 2610 -1110 2610 -1080 {
lab=VDD}
N 2590 -1110 2610 -1110 {
lab=VDD}
N 2590 -980 2600 -980 {
lab=Vdel}
N 2540 -1080 2550 -1080 {
lab=#net1}
N 2540 -1080 2540 -910 {
lab=#net1}
N 2540 -910 2550 -910 {
lab=#net1}
N 2590 -880 2590 -830 {
lab=VSS}
N 2590 -1130 2590 -1110 {
lab=VDD}
N 2600 -980 2710 -980 {
lab=Vdel}
N 2520 -980 2520 -950 {
lab=#net1}
N 2440 -640 2440 -610 {
lab=VDD}
N 2440 -510 2440 -480 {
lab=VSS}
N 2240 -560 2270 -560 {
lab=VCP}
N 2200 -560 2200 -550 {
lab=VCP}
N 2200 -490 2200 -470 {
lab=VSS}
N 2200 -560 2240 -560 {
lab=VCP}
N 2340 -540 2370 -540 {
lab=VCN}
N 2300 -540 2300 -530 {
lab=VCN}
N 2300 -470 2300 -450 {
lab=VSS}
N 2300 -540 2340 -540 {
lab=VCN}
N 2260 -560 2370 -560 {
lab=VCP}
N 2340 -580 2370 -580 {
lab=Vin}
N 2510 -580 2540 -580 {
lab=#net2}
N 2830 -580 2830 -560 {
lab=Vdel_starved}
N 2700 -580 2830 -580 {
lab=Vdel_starved}
N 2830 -500 2830 -460 {
lab=VSS}
N 2590 -580 2590 -540 {
lab=Vdel_starved}
N 2590 -650 2590 -580 {
lab=Vdel_starved}
N 2590 -510 2600 -510 {
lab=VSS}
N 2600 -510 2600 -480 {
lab=VSS}
N 2590 -480 2600 -480 {
lab=VSS}
N 2590 -680 2610 -680 {
lab=VDD}
N 2610 -710 2610 -680 {
lab=VDD}
N 2590 -710 2610 -710 {
lab=VDD}
N 2590 -580 2600 -580 {
lab=Vdel_starved}
N 2540 -680 2550 -680 {
lab=#net2}
N 2540 -680 2540 -510 {
lab=#net2}
N 2540 -510 2550 -510 {
lab=#net2}
N 2590 -480 2590 -430 {
lab=VSS}
N 2590 -730 2590 -710 {
lab=VDD}
N 2600 -580 2710 -580 {
lab=Vdel_starved}
N 2830 -460 2830 -430 {
lab=VSS}
N 2590 -860 2830 -860 {
lab=VSS}
N 2830 -900 2830 -860 {
lab=VSS}
N 2590 -460 2830 -460 {
lab=VSS}
N 2830 -1010 2830 -980 {
lab=Vdel}
N 2790 -630 2790 -580 {
lab=Vdel_starved}
C {devices/lab_pin.sym} 2430 -1040 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2430 -900 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2280 -960 2 1 {name=p6 sig_type=std_logic lab=VCONT}
C {code.sym} 2980 -1150 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {code.sym} 2980 -1000 0 0 {name=SimParameters only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.param Co = 0.1p
*.param Co = 0.1p
.param mult = 1
.param w_buf = 1
.param l_buf = 0.15

.param Vcont = 0
.param VCP = 0
.param VCN =1.8

vvdd vdd 0 dc 1.8
vvss vss 0 0
*vvcont VCONT 0 dc 0
*vvcont2 VCONT2 0 dc 0
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 1.8
.save v(V_1) v(Vo)


.param VH = 1.8

.ic v(Vo) = 0

*.param fsw = 10Meg
*.param fsw = 8.4Meg
.param fsw = 1Meg
*.param fsw = 100k

.param T = 1/fsw

.param D = 0.5
.param TR = 1n
.param TF = 1n
.param TdR = 0.5n
.param TdF = 0.5n

.param SimTime =  30*T
.csparam SimTime =\{Simtime\}
.csparam Tmargin = 10u


"}
C {capa.sym} 2830 -930 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 3110 -1150 0 0 {name=SweepVcont only_toplevel=false spice_ignore=false
value="
.save all
.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0 stop=0.8 step=0.1

let strt = 0
let stp = 0.8
let step = 0.1
let len2 = 1 + (stp-strt)/step
let Del_sweep = vector(len2)
let DelStarv_sweep = vector(len2)
let index = 0
foreach val $&vin_var
	alter vcont $val
	let f_sum = 0
	let t_act = 0
	let period_cont = 1
	let period_cont2 = 2
	run
	meas tran Tdel TRIG v(Vin) VAL = \{Vtarg\} RISE = 20 TARG v(Vdel) VAL = \{Vtarg\}  RISE = 20
	meas tran TdelStarved TRIG v(Vin) VAL = \{Vtarg\} RISE = 20 TARG v(Vdel_starved) VAL = \{Vtarg\}  RISE = 20

	let Del_sweep[index] = Tdel
	let DelStarv_sweep[index] = TdelStarved
	let index = index +1
end
plot tran1.v(Vdel) 
plot tran8.v(Vdel)
plot tran1.v(Vdel_starved)
print Del_sweep DelStarv_sweep
plot Del_sweep vs vin_var
plot DelStarv_sweep vs vin_var
.endc
"}
C {vsource.sym} 2290 -920 0 0 {name=Vcont value=\{Vcont\} savecurrent=false}
C {devices/lab_pin.sym} 2290 -870 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {code.sym} 2980 -850 0 0 {name=VCO_param only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 0.5
.param l_MP1 = 7
.param w_MP2 = 8
.param l_MP2 = 4
.param w_MP3 = 5
.param l_MP3 = 4
.param w_MP4 = 3
.param l_MP4 = 0.15

.param w_MN1 = 5
.param l_MN1 = 0.5
.param w_MN2 = 5
.param l_MN2 = 0.5
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 1
.param l_MN4 = 0.15


"}
C {devices/code.sym} 3230 -1000 0 0 {name=TranSim only_toplevel=false spice_ignore=true
value="
.save all
.tran 5n \{SimTime\}
.control
let Vtarg = 0.9

compose Vcont_sweep start = 0 stop = 1 step =0.1

let strt = 0
let stp = 1
let step = 0.1
let len = 1 + (stp-strt)/step

let VCN_sweep = vector(len)
let VCP_sweep = vector(len)
let Icont_sweep = vector(len)
let Iout_sweep = vector(len)
let Tdel_Sweep = vector(len)

let Index = 0

foreach val $&Vcont_sweep
	run
	alter Vcont $val
	let Vo = v(Vo)
	let VCN_tran = v(x1.VCN)
	let VCP_tran = v(x1.VCP)
	let Icont_tran = i(v.x1.VIcont)
	let Iout_tran = i(v.x1.VIp)
	let In_tran  = i(v.x1.VIn)

	meas tran VCN AVG VCN_tran FROM=0 TO=\{SimTime\}
	meas tran VCP AVG VCP_tran FROM=0 TO=\{SimTime\}
	meas tran Icont AVG Icont_tran FROM=0 TO=\{SimTime\}
	meas tran Iout AVG Iout_tran FROM=0 TO=\{SimTime\}

	meas tran Tdel TRIG Vin VAL = \{Vtarg\} RISE = 20 TARG v(Vdel) VAL = \{Vtarg\}  RISE = 20
	
	*plot Vo Vin
	*plot VCN_tran VCP_tran
	*plot Icont_tran 
	*plot Iout_tran
	print VCN VCP Icont Iout
	
	let VCN_sweep[index] = VCN
	let VCP_sweep[index] = VCP
	let Icont_sweep[index] = Icont
	let Iout_sweep[index] = Iout
	let Tdel_sweep[index] = Tdel	
	let index = index +1
end

plot Icont_sweep vs Vcont_sweep
plot Iout_sweep vs VCP_sweep 
plot Iout_sweep vs Vcont_sweep
plot VCP_sweep vs Vcont_sweep
plot Tdel_sweep vs Vcont_sweep
print VCN_sweep VCP_sweep Icont_sweep Iout_sweep Tdel_sweep 

.endc
"}
C {../VCO/stage_V0.sym} 2430 -970 0 0 {name=x1}
C {gnd.sym} 2290 -1050 0 1 {name=l4 lab=GND}
C {vsource.sym} 2290 -1100 0 1 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} 2290 -1150 2 1 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 2350 -980 2 1 {name=p2 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} 2570 -910 0 0 {name=M2
W=\{w_buf\}
L=\{l_buf\}
nf=1
mult=\{mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2570 -1080 0 0 {name=M1
W=\{w_buf\}
L=\{l_buf\}
nf=1
mult=\{mult*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2590 -830 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2590 -1130 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2830 -1010 2 1 {name=p12 sig_type=std_logic lab=Vdel}
C {devices/code.sym} 3120 -1000 0 0 {name=DCSim only_toplevel=false spice_ignore=true
value="
.save all
.csparam start = 10
.control
alter Vg1 = 0
dc Vcont 0 1 0.01 
let Icont = i(v.x1.VIcont)
let Iout = i(v.x1.VIout)
let VCN = v(x1.VCN)
let VCP = v(x1.VCP)
let  Vin = v(Vin)

plot Icont vs Vcont
plot Iout vs VCP
plot VCP vs Vcont
plot VCN vs Vcont
*plot Vin vs Vcont

.endc
"}
C {code.sym} 3120 -850 0 0 {name=VCO_param1 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 4
.param l_MP1 = 7
.param w_MP2 = 8
.param l_MP2 = 4
.param w_MP3 = 5
.param l_MP3 = 4
.param w_MP4 = 5
.param l_MP4 = 5

.param w_MN1 = 5
.param l_MN1 = 0.5
.param w_MN2 = 5
.param l_MN2 = 0.5
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 2
.param l_MN4 = 5


"}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} 2440 -570 0 0 {name=x2}
C {devices/lab_pin.sym} 2440 -640 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2440 -480 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2240 -560 1 0 {name=p15 sig_type=std_logic lab=VCP}
C {vsource.sym} 2200 -520 0 0 {name=VCP value=\{VCP\} savecurrent=false}
C {devices/lab_pin.sym} 2200 -470 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2340 -540 1 1 {name=p17 sig_type=std_logic lab=VCN}
C {vsource.sym} 2300 -500 0 1 {name=VCN value=\{VCN\} savecurrent=false}
C {devices/lab_pin.sym} 2300 -450 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2340 -580 2 1 {name=p19 sig_type=std_logic lab=Vin}
C {capa.sym} 2830 -530 0 0 {name=C2
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 2570 -510 0 0 {name=M5
W=\{w_buf\}
L=\{l_buf\}
nf=1
mult=\{mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2570 -680 0 0 {name=M6
W=\{w_buf\}
L=\{l_buf\}
nf=1
mult=\{mult*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2590 -430 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2590 -730 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2790 -630 2 1 {name=p25 sig_type=std_logic lab=Vdel_starved}
C {devices/code.sym} 3340 -1000 0 0 {name=TranSim1 only_toplevel=false spice_ignore=true
value="
.save all
.tran 5n \{SimTime\}
.control
run
let Vtarg = 0.9
let Vo = v(Vo)
let VCN_tran = v(x1.VCN)
let VCP_tran = v(x1.VCP)
let Icont_tran = i(v.x1.VIcont)
let Iout_tran = i(v.x1.VIp)
let In_tran  = i(v.x1.VIn)

meas tran VCN AVG VCN_tran FROM=0 TO=\{SimTime\}
meas tran VCP AVG VCP_tran FROM=0 TO=\{SimTime\}
meas tran Icont AVG Icont_tran FROM=0 TO=\{SimTime\}
meas tran Iout AVG Iout_tran FROM=0 TO=\{SimTime\}

meas tran Tdel TRIG Vin VAL = \{Vtarg\} RISE = 20 TARG v(Vdel) VAL = \{Vtarg\}  RISE = 20
meas tran TdelStarved TRIG Vin VAL = \{Vtarg\} RISE = 20 TARG v(Vdel_starved) VAL = \{Vtarg\}  RISE = 20
*plot v(Vo_starved)	
*plot Vo
plot Vdel+2 Vin
*plot VCN_tran VCP_tran
*plot Icont_tran 
*plot Iout_tran
print VCN VCP Icont Iout
	
.endc
"}
C {code.sym} 3250 -850 0 0 {name=VCO_param_V4 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 2
.param w_MP3 = 50
.param l_MP3 = 1
.param w_MP4 = 5
.param l_MP4 = 5

.param w_MN1 = 1
.param l_MN1 = 4
.param w_MN2 = w_MN1
.param l_MN2 = l_MN1
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 2
.param l_MN4 = 5


"}
C {code.sym} 3390 -850 0 0 {name=VCO_param_V3 only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 2
.param w_MP3 = 2
.param l_MP3 = 2
.param w_MP4 = 2
.param l_MP4 = 2

.param w_MN1 = 1
.param l_MN1 = 4
.param w_MN2 = w_MN1
.param l_MN2 = l_MN1
.param w_MN3 = 2
.param l_MN3 = 4
.param w_MN4 = 2
.param l_MN4 = 4


"}
C {code.sym} 2980 -700 0 0 {name=VCO_param_DelayCell only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 2
.param w_MP3 = 10
.param l_MP3 = 0.15
.param w_MP4 = 3
.param l_MP4 = 0.15

.param w_MN1 = 1
.param l_MN1 = 4
.param w_MN2 = w_MN1
.param l_MN2 = l_MN1
.param w_MN3 = 2
.param l_MN3 = 4
.param w_MN4 = 1
.param l_MN4 = 0.15


"}
