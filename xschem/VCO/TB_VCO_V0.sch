v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2720 -1020 2840 -1020 {
lab=V_1}
N 2720 -980 2750 -980 {
lab=V_2}
N 3070 -1020 3070 -1000 {
lab=Vo}
N 2530 -1000 2530 -990 {
lab=VCONT}
N 2530 -930 2530 -910 {
lab=VSS}
N 2530 -1000 2600 -1000 {
lab=VCONT}
N 2660 -1090 2660 -1060 {
lab=VDD}
N 2660 -920 2660 -910 {
lab=VSS}
N 2920 -1090 2920 -1070 {
lab=VDD}
N 3070 -940 3070 -920 {
lab=VSS}
N 2920 -920 3070 -920 {
lab=VSS}
N 2990 -1020 3070 -1020 {
lab=Vo}
N 2920 -970 2920 -920 {
lab=VSS}
N 2660 -920 2920 -920 {
lab=VSS}
N 2660 -940 2660 -920 {
lab=VSS}
C {devices/lab_pin.sym} 2570 -1000 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2790 -1020 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2750 -980 1 1 {name=p1 sig_type=std_logic lab=V_2}
C {devices/lab_pin.sym} 2920 -1090 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {code.sym} 3130 -980 0 0 {name=SimParameters only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.param Co = 1p
.param mult = 1
.param w_inv = 0.15u
.param l_inv = 0.15u

*.param Vcont = 0.8
.param VCP = 0.57
.param VCN = 0.76

vvdd vdd 0 dc 3.3
vvss vss 0 0
*vvcont VCONT 0 dc 0
*vvcont2 VCONT2 0 dc 0
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 3.3
*.ic v(V_11) = 0
*.ic v(V_22) = 3.3
.save v(V_1) v(Vo)

.param fmin = 7.5Meg
*.param fmin = 1Meg
.param Tmin = 1/fmin
.param SimTime =  Tmin*20
.csparam SimTime =\{Simtime\}
.csparam Tmargin = Tmin*2


"}
C {devices/lab_pin.sym} 3070 -1020 1 0 {name=p8 sig_type=std_logic lab=Vo}
C {capa.sym} 3070 -970 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 3600 -1120 0 0 {name=SweepVcont only_toplevel=false spice_ignore=1
value="
.save all
.tran 10n \{SimTime\}
.csparam start = 10
.param Vcont = 0
.control
let Vtarg = 1.5
compose vin_var start=0 stop=2 step=0.2

let strt = 0
let stp = 2
let step = 0.2
let len2 = 1 + (stp-strt)/step
let f_sweep = vector(len2)
let index = 0
foreach val $&vin_var
	alter vcont $val
	let f_sum = 0
	let t_act = 0
	let period_cont = 3
	let period_cont2 = 4
	run

	meas tran T0 TRIG v(Vo) VAL = \{Vtarg\} RISE = 1 TARG v(Vo) VAL = \{Vtarg\}  RISE = 2
	let Tmargin = T0*2 
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
	let f_avg = f_sum/(period_cont-3)
	let f_sweep[index] = f_avg
	let index = index +1
end
plot tran1.v(Vo) 
plot tran10.v(Vo)
print f_sweep
plot f_sweep vs vin_var
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_VCO_sky130.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1)
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_fsweep.txt f_sweep[1] vin_var
.endc
"}
C {vsource.sym} 2530 -960 0 0 {name=Vcont value=\{Vcont\} savecurrent=false}
C {devices/lab_pin.sym} 2530 -910 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/code.sym} 3370 -1120 0 0 {name=TranSim only_toplevel=false spice_ignore=0
value="
.param Vo = 0
.param Vref = Vo*2/3.3
.param Vcont = Vref

.save all
.tran 5n \{SimTime\}
*.tran 10n 1u
.csparam start = 10
.control
let Vtarg = 1.5
let f_sum = 0
let t_act = 0
let period_cont = 3
let period_cont2 = 4
run
meas tran T TRIG v(Vo) VAL = \{Vtarg\} RISE = \{period_cont\} TARG v(Vo) VAL = \{Vtarg\}  RISE = \{period_cont2\}
meas tran VCN AVG v(x1.x1.VCN) FROM=0 TO=\{SimTime\}
meas tran VCP AVG v(x1.x1.VCP) FROM=0 TO=\{SimTime\}
let f =1/T
plot v(Vo) 
plot v(x1.x1.VCN) v(x1.x1.VCP)
plot i(v.x1.x1.VIcont)
print f VCN VCP
.endc
"}
C {devices/code.sym} 3480 -1120 0 0 {name=DCSim only_toplevel=false spice_ignore=1
value="
.save all
.csparam start = 10
.param Vcont = 0
.control

dc Vcont 0 2 0.1
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
C {devices/lab_pin.sym} 2660 -1090 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2660 -910 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {code.sym} 3250 -1120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

*.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
*.lib $::SG13G2_MODELS/cornerRES.lib res_typ
*.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {../BUFFHVVCO/BUFFHVVCO.sym} 2870 -980 0 0 {name=X2}
C {code.sym} 3130 -1120 0 0 {name=Sim_Config only_toplevel=false 

value="

.option KLU
*.option itl4=100
.option method=gear
*.option maxord=2
*.option trtol=25 
*.option lvltim=1
*.option tnum=1e9
*.option reltol=1e-3
*.option abstol=1e-10
*.option vntol=1e-4
*.option event
*.option gmin=1e-10
*.option cshunt=1e-13
"}
C {../VCO/VCO_V0.sym} 2660 -1000 0 0 {name=x1 spice_ignore=0}
C {code.sym} 3260 -980 0 0 {name=VCO_param_Ki_2.14M/V only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param w_MP1a = 2u
.param l_MP1a = 7u
.param w_MP1b = 3u
.param l_MP1b = 7u
.param w_MP2 = 8u
.param l_MP2 = 4u
.param w_MP3 = 5u
.param l_MP3 = 4u
.param w_MP4 = 5u
.param l_MP4 = 5u

.param w_MN1 = 5u
.param l_MN1 = 0.5u
.param w_MN2 = 5u
.param l_MN2 = 0.5u
.param w_MN3 = 3u
.param l_MN3 = 0.5u
.param w_MN4 = 2u
.param l_MN4 = 5u



"}
C {code.sym} 3460 -980 0 0 {name=VCO_param_Ki_1 only_toplevel=true spice_ignore=0
format="tcleval( @value )"
value="

.param w_MP1a = 2u
.param l_MP1a = 7u
.param w_MP1b = 1u
.param l_MP1b = 7u
.param w_MP2 = 8u
.param l_MP2 = 4u
.param w_MP3 = 5u
.param l_MP3 = 4u
.param w_MP4 = 5u
.param l_MP4 = 5u

.param w_MN1 = 5u
.param l_MN1 = 0.5u
.param w_MN2 = 5u
.param l_MN2 = 0.5u
.param w_MN3 = 3u
.param l_MN3 = 0.5u
.param w_MN4 = 2u
.param l_MN4 = 5u



"}
