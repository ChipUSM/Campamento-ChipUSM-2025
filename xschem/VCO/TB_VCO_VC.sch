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
N 2570 -1010 2600 -1010 {
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
N 2570 -990 2600 -990 {
lab=VCONT2}
N 2400 -1010 2570 -1010 {
lab=VCONT}
N 2400 -1010 2400 -1000 {
lab=VCONT}
N 2490 -990 2570 -990 {
lab=VCONT2}
N 2490 -990 2490 -980 {
lab=VCONT2}
N 2490 -920 2490 -900 {
lab=VSS}
N 2400 -900 2490 -900 {
lab=VSS}
N 2400 -940 2400 -900 {
lab=VSS}
N 2430 -900 2430 -880 {
lab=VSS}
C {devices/lab_pin.sym} 2660 -1090 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2660 -910 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2570 -1010 1 0 {name=p6 sig_type=std_logic lab=VCONT}
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
W=\{w\}
L=\{l\}
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
W=\{w\}
L=\{l\}
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
.param Co = 0.1p
.param mult = 1
.param w = 1
.param l = 0.15

.param vvcont = 0
.param vvcont2 = 0.5

vvdd vdd 0 dc 1.8
vvss vss 0 0
*vvcont VCONT 0 dc 0
*vvcont2 VCONT2 0 dc 0
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 1.8
.save v(V_1) v(Vo)

.param SimTime =  150u
.csparam SimTime =\{Simtime\}
.csparam Tmargin = 50u


"}
C {devices/lab_pin.sym} 3160 -1000 1 0 {name=p8 sig_type=std_logic lab=Vo}
C {capa.sym} 3160 -950 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 3010 -930 0 0 {name=M3
W=\{w\}
L=\{l\}
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
W=\{w\}
L=\{l\}
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
C {devices/code.sym} 3340 -1130 0 0 {name=s1 only_toplevel=false spice_ignore=false
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
C {devices/lab_pin.sym} 2570 -990 1 1 {name=p10 sig_type=std_logic lab=VCONT2}
C {devices/simulator_commands_shown.sym} 3600 -1130 0 0 {name=COMMANDS spice_ignore =true
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param W=1
.options savecurrents
.dc v2 0 1.8 0.01
.control
  let start_w = 1
  let stop_w = 90
  let delta_w = 5
  let w_act = start_w
  while w_act le stop_w
    alterparam W = $&w_act
    reset
    save all
    save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
    save @m.xm1.msky130_fd_pr__nfet_01v8[W] 
    run
    remzerovec
    write test_sweep_mos_w.raw
    let w_act = w_act + delta_w
    set appendwrite
  end
.endc
"}
C {vsource.sym} 2400 -970 0 0 {name=Vcont value=\{vvcont\} savecurrent=false}
C {devices/lab_pin.sym} 2430 -880 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {vsource.sym} 2490 -950 0 0 {name=Vcont2 value=\{vvcont2\} savecurrent=false}
C {devices/code.sym} 3360 -990 0 0 {name=s2 only_toplevel=false spice_ignore=true
value="

.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 0.9
compose vin_var start=0.2 stop=0.8 step=0.6
foreach val $&vin_var
	alter vcont $val
	run
end
plot tran1.v(Vo) 
plot tran2.v(Vo)
*print f_sweep
*plot f_sweep vs vin_var
.endc
"}
C {code.sym} 3220 -830 0 0 {name=VCO_param only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="

.param w_MP1a = 0.5
.param l_MP1a = 10
.param w_MP1b = 3.5
.param l_MP1b = 7
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
C {code.sym} 3360 -830 0 0 {name=VCO_param2 only_toplevel=true spice_ignore=true
format="tcleval( @value )"
value="

*.param w_MP1a = 0.5
.param l_MP1a = 7
.param w_MP1b = 4
.param l_MP1b = 7
.param w_MP2 = 2
.param l_MP2 = 8
.param w_MP3 = 5
.param l_MP3 = 4
.param w_MP4 = 5
.param l_MP4 = 5

.param w_MN1 = 5
.param l_MN1 = 0.5
.param w_MN2 = 5
.param l_MN2 = 0,5
.param w_MN3 = 3
.param l_MN3 = 0.5
.param w_MN4 = 2
.param l_MN4 = 5


"}
C {devices/code.sym} 3220 -680 0 0 {name=s3 only_toplevel=false spice_ignore=true
value="
.save all

*.param w_MP1a = 0.5
.dc Vcont 0.2 1.2 0.1
.control
  let start_w = 0.5
  let stop_w =  10
  let delta_w = 0.5
  let w_act = start_w
  while w_act le stop_w
    alterparam w_MP1a = $&w_act
    run
    *plot v(v1.x1.VCN)
    reset
    let w_act = w_act + delta_w
  end
*plot dc1.i(v.x1.x1.V_IMP1) dc20.i(v.x1.x1.V_IMP1)
plot dc1.v(x1.x1.VCN) dc20.v(x1.x1.VCN)
plot dc1.v(x1.x1.VCP) dc20.v(x1.x1.VCP)
.endc
"}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/VCO_V1.sym} 2660 -1000 0 0 {name=x2}
