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
} 3360 -1170 0 0 0.4 0.4 {}
N 2410 -1040 2410 -1010 {
lab=VDD}
N 2410 -910 2410 -880 {
lab=VSS}
N 2250 -960 2280 -960 {
lab=VCONT}
N 2480 -980 2510 -980 {
lab=Vdel}
N 2510 -980 2540 -980 {
lab=Vdel}
N 2900 -980 2900 -960 {
lab=Vo}
N 2770 -980 2900 -980 {
lab=Vo}
N 2210 -960 2210 -950 {
lab=VCONT}
N 2210 -890 2210 -870 {
lab=VSS}
N 2210 -960 2250 -960 {
lab=VCONT}
N 2200 -960 2210 -960 {
lab=VCONT}
N 2410 -880 2410 -800 {
lab=VSS}
N 2900 -900 2900 -860 {
lab=VSS}
N 2350 -1120 2350 -1100 {
lab=GND}
N 2350 -1200 2350 -1180 {
lab=Vin}
N 2330 -980 2340 -980 {
lab=Vin}
N 2590 -980 2590 -940 {
lab=#net1}
N 2590 -1050 2590 -980 {
lab=#net1}
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
lab=#net1}
N 2540 -1080 2550 -1080 {
lab=Vdel}
N 2540 -1080 2540 -910 {
lab=Vdel}
N 2540 -910 2550 -910 {
lab=Vdel}
N 2590 -880 2590 -830 {
lab=VSS}
N 2590 -1130 2590 -1110 {
lab=VDD}
N 2760 -980 2760 -940 {
lab=Vo}
N 2760 -1050 2760 -980 {
lab=Vo}
N 2760 -910 2770 -910 {
lab=VSS}
N 2770 -910 2770 -880 {
lab=VSS}
N 2760 -880 2770 -880 {
lab=VSS}
N 2760 -1080 2780 -1080 {
lab=VDD}
N 2780 -1110 2780 -1080 {
lab=VDD}
N 2760 -1110 2780 -1110 {
lab=VDD}
N 2760 -980 2770 -980 {
lab=Vo}
N 2710 -1080 2720 -1080 {
lab=#net1}
N 2710 -1080 2710 -910 {
lab=#net1}
N 2710 -910 2720 -910 {
lab=#net1}
N 2760 -880 2760 -830 {
lab=VSS}
N 2760 -1130 2760 -1110 {
lab=VDD}
N 2600 -980 2710 -980 {
lab=#net1}
N 2760 -830 2900 -830 {
lab=VSS}
N 2900 -860 2900 -830 {
lab=VSS}
N 2520 -980 2520 -950 {
lab=Vdel}
N 2280 -960 2340 -960 {
lab=VCONT}
N 2310 -880 2310 -870 {
lab=VCONT2}
N 2310 -810 2310 -790 {
lab=VSS}
N 2300 -880 2310 -880 {
lab=VCONT2}
N 2310 -940 2340 -940 {
lab=VCONT2}
N 2310 -940 2310 -880 {
lab=VCONT2}
C {devices/lab_pin.sym} 2410 -1040 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2410 -800 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2200 -960 2 1 {name=p6 sig_type=std_logic lab=VCONT}
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

.param vvcont = 0
.param Vcont2 = 0.5

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
*.param fsw = 1Meg
.param fsw = 50k

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
C {devices/lab_pin.sym} 2900 -980 1 0 {name=p8 sig_type=std_logic lab=Vo}
C {capa.sym} 2900 -930 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 3110 -1150 0 0 {name=SweepVcont only_toplevel=false spice_ignore=true
value="

.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0 stop=0.9 step=0.1

let strt = 0
let stp = 0.9
let step = 0.1
let len2 = 1 + (stp-strt)/step
let f_sweep = vector(len2)
let index = 0
foreach val $&vin_var
	alter vcont $val
	let f_sum = 0
	let t_act = 0
	let period_cont = 1
	let period_cont2 = 2
	run
	while t_act le SimTime - Tmargin
		meas tran t_rise WHEN v(Vo) = \{Vtarg\} RISE = \{period_cont\}
		let t_act = t_rise
		*print t_act SimTime period_cont
		meas tran T TRIG v(Vo) VAL = \{Vtarg\} RISE = \{period_cont\} TARG v(Vo) VAL = \{Vtarg\}  RISE = \{period_cont2\}
		let f =1/T
		let f_sum = f_sum + f
		let period_cont = period_cont + 1
		let period_cont2 = period_cont2 + 1
	end
	*wrdata ../../sim_data/data_VCO_vto1p1.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1)
	let f_avg = f_sum/(period_cont-1)
	let f_sweep[index] = f_avg
	let index = index +1
end
plot tran1.v(Vo) 
plot tran9.v(Vo)
print f_sweep
plot f_sweep vs vin_var
.endc
"}
C {vsource.sym} 2210 -920 0 0 {name=Vcont value=0 savecurrent=false}
C {devices/lab_pin.sym} 2210 -870 3 0 {name=p11 sig_type=std_logic lab=VSS}
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
C {devices/code.sym} 3230 -1000 0 0 {name=TranSim only_toplevel=false spice_ignore=false
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
	alter vcont $val
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
C {gnd.sym} 2350 -1100 0 1 {name=l4 lab=GND}
C {vsource.sym} 2350 -1150 0 1 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {devices/lab_pin.sym} 2350 -1200 2 1 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 2330 -980 2 1 {name=p2 sig_type=std_logic lab=Vin}
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
C {devices/lab_pin.sym} 2760 -1130 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2590 -830 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 2740 -910 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 2740 -1080 0 0 {name=M4
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
C {devices/lab_pin.sym} 2590 -1130 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2760 -830 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2520 -950 2 1 {name=p12 sig_type=std_logic lab=Vdel}
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
C {devices/code.sym} 2530 -1340 0 0 {name=SweepVcont1 only_toplevel=false spice_ignore=true
value="

.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0 stop=0.9 step=0.1

let strt = 0
let stp = 0.9
let step = 0.1
let len2 = 1 + (stp-strt)/step
let f_sweep = vector(len2)
let index = 0
foreach val $&vin_var
	alter vcont $val
	let f_sum = 0
	let t_act = 0
	let period_cont = 1
	let period_cont2 = 2
	run
	while t_act le SimTime - Tmargin
		meas tran t_rise WHEN v(Vo) = \{Vtarg\} RISE = \{period_cont\}
		let t_act = t_rise
		*print t_act SimTime period_cont
		meas tran T TRIG v(Vo) VAL = \{Vtarg\} RISE = \{period_cont\} TARG v(Vo) VAL = \{Vtarg\}  RISE = \{period_cont2\}
		let f =1/T
		let f_sum = f_sum + f
		let period_cont = period_cont + 1
		let period_cont2 = period_cont2 + 1
	end
	*wrdata ../../sim_data/data_VCO_vto1p1.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1)
	let f_avg = f_sum/(period_cont-1)
	let f_sweep[index] = f_avg
	let index = index +1
end
plot tran1.v(Vo) 
plot tran9.v(Vo)
print f_sweep
plot f_sweep vs vin_var
.endc
"}
C {devices/code.sym} 2680 -1340 0 0 {name=s1 only_toplevel=false spice_ignore=true
value="

.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0.2 stop=0.7 step=0.05

let strt = 0.2
let stp = 0.7
let step = 0.05
let len2 = 1 + (stp-strt)/step
let f_sweep = vector(len2)
let index = 0
foreach val $&vin_var
	alter vcont $val
	let f_sum = 0
	let t_act = 0
	let period_cont = 1
	run
	while t_act le SimTime - Tmargin
		meas tran t_rise WHEN v(Vo) = \{Vtarg\} RISE = \{period_cont\}
		let t_act = t_rise
		*print t_act SimTime period_cont
		meas tran T TRIG v(Vo) VAL = \{Vtarg\} RISE = \{period_cont\} TARG v(Vo) VAL = \{Vtarg\}  FALL = \{period_cont\}
		let f =1/T
		let f_sum = f_sum + f
		let period_cont = period_cont + 1
	end
	*wrdata ../../sim_data/data_VCO_vto1p1.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1)
	let f_avg = f_sum/(period_cont-1)
	let f_sweep[index] = f_avg
	let index = index +1
end
plot tran1.v(Vo) 
plot tran9.v(Vo)
print f_sweep
plot f_sweep vs vin_var
.endc
"}
C {code.sym} 3120 -850 0 0 {name=VCO_param1 only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="

.param w_MP1a = 0.5
.param l_MP1a = 10
.param w_MP1b = 3.5
.param l_MP1b = 7
.param w_MP1 = 0.5
.param l_MP1 = 10
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
C {../VCO/stage_V1.sym} 2410 -970 0 0 {name=x1}
C {devices/lab_pin.sym} 2300 -880 2 1 {name=p13 sig_type=std_logic lab=VCONT2}
C {vsource.sym} 2310 -840 0 0 {name=Vcont2 value=\{Vcont2\} savecurrent=false}
C {devices/lab_pin.sym} 2310 -790 3 0 {name=p14 sig_type=std_logic lab=VSS}
