v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2660 -1090 2660 -1060 {
lab=VDD}
N 2660 -940 2660 -910 {
lab=VSS}
N 2570 -1000 2600 -1000 {
lab=VCONT}
N 2720 -1020 2750 -1020 {
lab=V_1}
N 2720 -980 2750 -980 {
lab=V_2}
N 2860 -1000 2860 -960 {
lab=#net1}
N 2860 -1070 2860 -1000 {
lab=#net1}
N 2860 -930 2870 -930 {
lab=VSS}
N 2870 -930 2870 -900 {
lab=VSS}
N 2860 -900 2870 -900 {
lab=VSS}
N 2860 -1100 2880 -1100 {
lab=VDD}
N 2880 -1130 2880 -1100 {
lab=VDD}
N 2860 -1130 2880 -1130 {
lab=VDD}
N 2860 -1000 2870 -1000 {
lab=#net1}
N 2810 -1100 2820 -1100 {
lab=V_1}
N 2810 -1100 2810 -930 {
lab=V_1}
N 2810 -930 2820 -930 {
lab=V_1}
N 2860 -900 2860 -850 {
lab=VSS}
N 2860 -1150 2860 -1130 {
lab=VDD}
N 3160 -920 3160 -850 {
lab=VSS}
N 2750 -1020 2780 -1020 {
lab=V_1}
N 3160 -1000 3160 -980 {
lab=Vo}
N 2780 -1020 2810 -1020 {
lab=V_1}
N 3030 -1000 3030 -960 {
lab=Vo}
N 3030 -1070 3030 -1000 {
lab=Vo}
N 3030 -930 3040 -930 {
lab=VSS}
N 3040 -930 3040 -900 {
lab=VSS}
N 3030 -900 3040 -900 {
lab=VSS}
N 3030 -1100 3050 -1100 {
lab=VDD}
N 3050 -1130 3050 -1100 {
lab=VDD}
N 3030 -1130 3050 -1130 {
lab=VDD}
N 3030 -1000 3040 -1000 {
lab=Vo}
N 2980 -1100 2990 -1100 {
lab=#net1}
N 2980 -1100 2980 -930 {
lab=#net1}
N 2980 -930 2990 -930 {
lab=#net1}
N 3030 -900 3030 -850 {
lab=VSS}
N 3030 -1150 3030 -1130 {
lab=VDD}
N 2870 -1000 2980 -1000 {
lab=#net1}
N 3030 -1000 3160 -1000 {
lab=Vo}
N 2860 -850 3160 -850 {
lab=VSS}
N 2530 -1000 2530 -990 {
lab=VCONT}
N 2530 -930 2530 -910 {
lab=VSS}
N 2530 -1000 2570 -1000 {
lab=VCONT}
C {devices/lab_pin.sym} 2660 -1090 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2660 -910 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2570 -1000 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2750 -1020 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2750 -980 1 0 {name=p1 sig_type=std_logic lab=V_2}
C {code.sym} 3220 -1130 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {sky130_fd_pr/nfet_01v8.sym} 2840 -930 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 2840 -1100 0 0 {name=M1
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
C {devices/lab_pin.sym} 3030 -1150 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2860 -850 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {code.sym} 3220 -980 0 0 {name=SimParameters only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.param Co = 1p
.param mult = 1
.param w_buf = 1
.param l_buf = 0.15

.param vvcont = 0.5

vvdd vdd 0 dc 1.8
vvss vss 0 0
*vvcont VCONT 0 dc 0
*vvcont2 VCONT2 0 dc 0
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 1.8
.save v(V_1) v(Vo)

.param SimTime =  10u
.csparam SimTime =\{Simtime\}
.csparam Tmargin = 1u


"}
C {devices/lab_pin.sym} 3160 -1000 1 0 {name=p8 sig_type=std_logic lab=Vo}
C {capa.sym} 3160 -950 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 3010 -930 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 3010 -1100 0 0 {name=M4
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
C {devices/lab_pin.sym} 2860 -1150 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code.sym} 3370 -1130 0 0 {name=SweepVcont only_toplevel=false spice_ignore=true
value="

.tran 10n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0 stop=1 step=0.2

let strt = 0
let stp = 1.1
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
C {vsource.sym} 2530 -960 0 0 {name=Vcont value=0 savecurrent=false}
C {devices/lab_pin.sym} 2530 -910 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/code.sym} 3370 -980 0 0 {name=s2 only_toplevel=false spice_ignore=true
value="

.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0 stop=1.1 step=0.5
foreach val $&vin_var
	alter vcont $val
	run
end
plot tran1.v(Vo) 
plot tran2.v(Vo)
plot tran3.v(Vo)
*print f_sweep
*plot f_sweep vs vin_var
.endc
"}
C {code.sym} 3220 -830 0 0 {name=VCO_param_Paper only_toplevel=true spice_ignore=false
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
C {../VCO/VCO_V0.sym} 2660 -1000 0 0 {name=x1}
C {devices/code.sym} 3480 -1130 0 0 {name=TranSim only_toplevel=false spice_ignore=false
value="
.save all
.tran 5n \{SimTime\}
*.tran 10n 1u
.csparam start = 10
.control
let Vtarg = 0.9
let f_sum = 0
let t_act = 0
let period_cont = 5
let period_cont2 = 6
run
meas tran T TRIG v(Vo) VAL = \{Vtarg\} RISE = \{period_cont\} TARG v(Vo) VAL = \{Vtarg\}  RISE = \{period_cont2\}
meas tran VCN AVG v(x1.x1.VCN) FROM=0 TO=\{SimTime\}
let f =1/T
plot v(Vo) 
plot v(x1.x1.VCN) v(x1.x1.VCP)
plot i(v.x1.x1.VIcont)
print f VCN
.endc
"}
C {devices/code.sym} 3590 -1130 0 0 {name=DCSim only_toplevel=false spice_ignore=true
value="
.save all
.csparam start = 10
.control

dc Vcont 0 1.8 0.1
let Icont = i(v.x1.x1.VIcont)
let Icont2 = i(v.x1.x1.VIcont1)
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)


plot Icont Icont2 vs Vcont
*plot Iout vs VCP
plot VCP vs Vcont
plot VCN vs Vcont
*plot Vin vs Vcont

.endc
"}
C {code.sym} 3480 -980 0 0 {name=VCO_param_V1 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 3
.param w_MP3 = 5
.param l_MP3 = 4
.param w_MP4 = 3
.param l_MP4 = 0.5

.param w_MN1 = 4
*.param w_MN1 = 5
.param l_MN1 = 7
.param w_MN2 = 4
.param l_MN2 = 7
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 1
.param l_MN4 = 0.15


"}
C {code.sym} 3620 -980 0 0 {name=VCO_param_V2 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 3
.param w_MP3 = 5
.param l_MP3 = 4
.param w_MP4 = 3
.param l_MP4 = 0.5

.param w_MN1 = 1
.param l_MN1 = 4
.param w_MN2 = w_MN1
.param l_MN2 = l_MN1
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 1
.param l_MN4 = 0.15


"}
C {code.sym} 3750 -980 0 0 {name=VCO_param_V3 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

.param w_MP1 = 1
.param l_MP1 = 3
.param w_MP2 = 1
.param l_MP2 = 2
.param w_MP3 = 6
.param l_MP3 = 1
.param w_MP4 = 3
.param l_MP4 = 0.15

.param w_MN1 = 1
.param l_MN1 = 4
.param w_MN2 = w_MN1
.param l_MN2 = l_MN1
.param w_MN3 = 4
.param l_MN3 = 0.5
.param w_MN4 = 1
.param l_MN4 = 0.15


"}
