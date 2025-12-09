v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2520 -1090 2520 -1070 {
lab=VDD}
N 2810 -1030 2810 -1010 {
lab=Vo}
N 2260 -1020 2260 -1010 {
lab=VCONT}
N 2350 -1000 2460 -1000 {
lab=VCONT2}
N 2350 -1000 2350 -990 {
lab=VCONT2}
N 2350 -930 2350 -910 {
lab=VSS}
N 2290 -910 2350 -910 {
lab=VSS}
N 2260 -950 2260 -910 {
lab=VSS}
N 2290 -910 2290 -890 {
lab=VSS}
N 2260 -910 2290 -910 {
lab=VSS}
N 2730 -1030 2810 -1030 {
lab=Vo}
N 2520 -930 2520 -920 {
lab=VSS}
N 2260 -1020 2460 -1020 {
lab=VCONT}
N 2660 -980 2660 -930 {
lab=VSS}
N 2660 -930 2810 -930 {
lab=VSS}
N 2660 -1090 2660 -1080 {
lab=VDD}
N 2520 -1090 2660 -1090 {
lab=VDD}
N 2520 -1100 2520 -1090 {
lab=VDD}
N 2520 -930 2660 -930 {
lab=VSS}
N 2520 -950 2520 -930 {
lab=VSS}
N 2580 -1040 2580 -1030 {
lab=V_1}
N 2580 -990 2590 -990 {
lab=V_2}
N 2810 -950 2810 -930 {
lab=VSS}
C {devices/lab_pin.sym} 2520 -1100 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2520 -920 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2410 -1020 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2810 -1030 1 0 {name=p8 sig_type=std_logic lab=Vo}
C {capa.sym} 2810 -980 0 0 {name=C1
m=1
value=\{Co\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2430 -1000 1 1 {name=p10 sig_type=std_logic lab=VCONT2}
C {vsource.sym} 2260 -980 0 0 {name=Vcont value=\{Vcont\} savecurrent=false}
C {devices/lab_pin.sym} 2290 -890 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {vsource.sym} 2350 -960 0 0 {name=Vcont2 value=\{Vcont2\} savecurrent=false}
C {../VCO/VCO_V1.sym} 2520 -1010 0 0 {name=x1}
C {../BUFFHVVCO/BUFFHVVCO.sym} 2610 -990 0 0 {name=X11}
C {devices/lab_pin.sym} 2580 -1040 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2590 -990 1 1 {name=p1 sig_type=std_logic lab=V_2}
C {code.sym} 2900 -970 0 0 {name=SimParameters only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.param Co = 1p
.param mult = 1
.param w_inv = 0.15u
.param l_inv = 0.15u

.param Vcont = 1
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

*.param fmin = 60Meg
*.param fmin = 15Meg
*.param fmin = 10Meg
*.param fmin = 7.5Meg
*.param fmin = 4Meg
.param fmin = 2Meg
*.param fmin = 1.62Meg
*.param fmin = 1Meg
*.param fmin = 0.7Meg
*.param fmin = 0.4Meg
.param Tmin = 1/fmin
.param SimTime =  Tmin*20
.csparam SimTime =\{Simtime\}
.csparam Tmargin = Tmin*2


"}
C {devices/code.sym} 3470 -1110 0 0 {name=SweepVcont only_toplevel=false spice_ignore=1
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
let Ki = (f_sweep[0] - f_sweep[len2-1])/stp
let fo = f_sweep[(len2-1)/2]
print Ki fo
plot f_sweep vs vin_var
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_VCO_sky130.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1)
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_fsweep.txt f_sweep[1] vin_var
.endc

.control
reset
unset filetype
op
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)
let Vth_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[vth]
write TB_hvMOS_POWER_Sizing.raw
.endc



"}
C {devices/code.sym} 3140 -1110 0 0 {name=TranSim only_toplevel=false spice_ignore=1
value="

.param Vcont = 2

.save all
.tran 5n \{SimTime\}
.csparam start = 10
.control
let Vtarg = 1.5
let f_sum = 0
let t_act = 0
let period_cont = 5
let period_cont2 = \{period_cont\} +1
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

.control
reset
unset filetype
op
alter Vcont 1
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)
let VsdMP3 = v(VDD) - v(x1.x1.VSMP4)
let VsgMP3 = v(VDD) - VCP
let Vth_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[vth]
write TB_VCO_V1.raw
.endc

"}
C {code.sym} 3020 -1110 0 0 {name=MODEL only_toplevel=true
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
C {code.sym} 3030 -970 0 0 {name=VCO_param_vto1p1 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param w_MP1a = 0.5u
.param l_MP1a = 7u
.param w_MP1b = 3.5u
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
C {code.sym} 2900 -1110 0 0 {name=Sim_Config only_toplevel=false 

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
C {code.sym} 3210 -970 0 0 {name=VCO_param_vto2p1 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param w_MP1a = 0.7u
.param l_MP1a = 7u
.param w_MP1b = 3.3u
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
C {code.sym} 3370 -970 0 0 {name=VCO_param_vto3p1 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param w_MP1a = 0.4u
.param l_MP1a = 7u
.param w_MP1b = 0.4u
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
C {code.sym} 3050 -820 0 0 {name=VCO_param_Ki_2.14M/V only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param Vcont2 = 1.8

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

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {devices/code.sym} 3590 -1110 0 0 {name=SweepVcont_fast only_toplevel=false spice_ignore=1
value="
.save all
.tran 10n \{SimTime\}
.csparam start = 10
.param Vcont = 1
.control
let Vtarg = 1.5
compose vin_var start=0 stop=2 step=1

let strt = 0
let stp = 2
let step = 1
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
let Ki = (f_sweep[0] - f_sweep[len2-1])/stp
let fo = f_sweep[(len2-1)/2]
print Ki fo
plot f_sweep vs vin_var
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_VCO_sky130.txt tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1)
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_fsweep.txt f_sweep[1] vin_var
.endc

.control
reset
unset filetype
op
alter Vcont 1
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)
let VsdMP3 = v(VDD) - v(x1.x1.VSMP4)
let VsgMP3 = v(VDD) - VCP
let Vth_M2 = @n.x1.x1.xm2.nsg13_hv_nmos[vth]
write TB_VCO_V1.raw
.endc


"}
C {code.sym} 3240 -820 0 0 {name=VCO_param_Ki_2.34M/V_fo_3.66MHz only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="

.param Vcont2 = 1.8

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

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {launcher.sym} 2660 -850 0 0 {name=h1
descr="Annotate OP" 
*tclcommand="set show_hidden_texts 1; xschem annotate_op"
tclcommand="xschem annotate_op"}
C {code.sym} 3540 -820 0 0 {name=VCO_param_Symtr__Ki_0.958M/V_fo_2.749MHz only_toplevel=true spice_ignore=0
format="tcleval( @value )"
value="

.param Vcont2 = 1.8

.param w_MP1a =1u
.param l_MP1a = 8u
.param w_MP1b = 3u
.param l_MP1b = 8u
.param w_MP2 = 7u
.param l_MP2 = 1u
.param w_MP3 = 8u
.param l_MP3 = 1u
.param w_MP4 = 2u
.param l_MP4 = 10u

.param w_MN1 = 2u
.param l_MN1 = 1u
.param w_MN2 = 1u
.param l_MN2 = 1u
.param w_MN3 = 2u
.param l_MN3 = 1u
.param w_MN4 = 0.5u
.param l_MN4 = 10u

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1
"}
C {devices/code.sym} 3360 -1110 0 0 {name=OP_Sim only_toplevel=false spice_ignore=0
value="
.save all
.param Vcont = 1

.control
reset
unset filetype
op
alter Vcont 1
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)

let Vsd_MP4 = v(x1.x1.VSMP4) - v(x1.x1.VOUT)
let Vsd_MP3 = v(VDD) - v(x1.x1.VSMP4)
let Vsd_MP2 = v(VDD) - v(x1.x1.VCP)
let Vsd_MP1 = v(VDD) - VCN
let Vds_MN4 = v(x1.x1.VOUT) - v(x1.x1.VdsMN3)

let Vth_MP1a = @n.x1.x1.xmp1a.nsg13_hv_pmos[vth]
let Vth_MP1b = @n.x1.x1.xmp1b.nsg13_hv_pmos[vth]
let Vth_MP2 = @n.x1.x1.xmp2.nsg13_hv_pmos[vth]
let Vth_MP3 = @n.x1.x1.xmp3.nsg13_hv_pmos[vth]
let Vth_MP4 = @n.x1.x1.xmp3.nsg13_hv_pmos[vth]
let Vth_MN1 = @n.x1.x1.xmn1.nsg13_hv_nmos[vth]
let Vth_MN2 = @n.x1.x1.xmn2.nsg13_hv_nmos[vth]
let Vth_MN3 = @n.x1.x1.xmn3.nsg13_hv_nmos[vth]
let Vth_MN4 = @n.x1.x1.xmn4.nsg13_hv_nmos[vth]

let Vsg_MP4 = v(x1.x1.VSMP4) - v(x1.x1.VIN)
let Vsg_MP3 = v(VDD) - VCP
let Vsg_MP1a = v(VDD) - v(VCONT)
let Vsg_MP1b = v(VDD) - v(VCONT2)
let Vgs_MN4 = v(x1.x1.VIN) - v(x1.x1.VdsMN3)

let Vov_MP1a = Vsg_MP1a - Vth_MP1a 
let Vov_MP1b = Vsg_MP1b - Vth_MP1b
let Vov_MP3 = Vsg_MP3 - Vth_MP3
let Vov_MP4 = Vsg_MP4 - Vth_MP4
let Vov_MN2 =  VCN - Vth_MN2
let Vov_MN3 =  VCN - Vth_MN3
let Vov_MN4 =  VCN - Vth_MN4

let gds_MN3 = @n.x1.x1.xmn3.nsg13_hv_nmos[gds]
let Ron_MN3 = 1/gds_MN3
let gds_MP3 = @n.x1.x1.xmp3.nsg13_hv_pmos[gds]
let Ron_MP3 = 1/gds_MP3
let M_P = gds_MP3/Vov_MP3
let M_N = gds_MN3/Vov_MN3

 
write TB_VCO_V1.raw
.endc

"}
C {code.sym} 2880 -820 0 0 {name=VCO_param_Paper only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="
.param Vcont2 = 3.3

.param w_MP1a = 4u
.param l_MP1a = 7u
.param w_MP1b = 4u
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

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {devices/code.sym} 3250 -1110 0 0 {name=DCSim only_toplevel=false spice_ignore=0
value="
.save all


.csparam start = 10
.param Vcont = 1

.control

dc VdMP1 0 3.3 0.2 VgMP1 0 3.3 0.2
let IdMP1a = i(VIcont)
let IdMP1a_Diode = i(VIcont1) 
let  VsdMP1 = v(Vdd) - v(VdMP1) 
let VthMP1 = @n.xMP1.msky130_fd_pr__pfet_01v8[vth]
let  VovMP1a = v(Vdd) - v(VdMP1) - VthMP1  
*plot IdMP1a IdMP1a_Diode vs VsdMP1
*plot IdMP1a_Diode vs VovMP1

let IdMP1b = i(VIcont4)
let IdMP1b_Diode = i(VIcont5) 
let  VsdMP1 = v(Vdd) - v(VdMP1) 
let VthMP1 = @n.xMP1.msky130_fd_pr__pfet_01v8[vth]
let  VovMP1b = v(Vdd) - v(VdMP1) - VthMP1  
*plot IdMP1b IdMP1b_Diode vs VsdMP1
*plot IdMP1b_Diode vs VovMP1

let IdMP2 = i(VIcont2)
let IdMP2_Diode = i(VIcont3) 
let  VsdMP2 = v(Vdd) - v(VdMP2) 
let VthMP2 = @m.xMP4.msky130_fd_pr__pfet_01v8[vth]
let  VovMP2 = v(Vdd) - v(VdMP2) - VthMP2  
*plot IdMP2 IdMP2_Diode vs VsdMP2
*plot IdMP2_Diode vs VovMP2 
let KP1 = IdMP1_Diode/(VovMP1*VovMP1)
let AP1 = sqrt(KP1)
let KP2 = IdMP2_Diode/(VovMP2*VovMP2)
let AP2 = sqrt(KP2)

plot AP1 AP2

*plot IdMP1_Diode IdMP2_Diode vs VsdMP1
print VthMP1 VthMP2
*wrdata ../../sim_data/data_VCO_design.txt IdMP1_Diode VovMP1 IdMP1 vs VsdMP1
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_VCO_design.txt IdMP1_Diode VovMP1 IdMP1 vs VsdMP1
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_AP1_VthMP1.txt AP1 VthMP1 AP2 VthMP2

reset 
*load save_data.raw 
*show

dc VdMN1 0 3.3 0.2 VgMN1 0 3.3 0.2
let VdsMN1 = v(VdsMN1)
let IdMN1_Diode = i(VIdMN1)
let IdMN1 = i(VIdMN2)
let VthMN1 = @m.xMN1.msky130_fd_pr__nfet_01v8[vth]
let VovMN1 = VdsMN1 - VthMN1
*plot IdMN1 IdMN1_Diode vs VdsMN1
*plot IdMN1_Diode vs VovMN1

let VdsMN2 = v(VdsMN1)
let IdMN2_Diode = i(VIdMN3)
let IdMN2 = i(VIdMN4)
let VthMN2 = @m.xMN4.msky130_fd_pr__nfet_01v8[vth]
let VovMN2 = VdsMN2 - VthMN2
*plot IdMN2 IdMN2_Diode vs VdsMN2
*plot IdMN2_Diode vs VovMN2

let KN1 = IdMN1_Diode/(VovMN1*VovMN1)
let AN1 = sqrt(KN1)
let KN2 = IdMN2_Diode/(VovMN2*VovMN2)
let AN2 = sqrt(KN2)
*plot AN1 AN2
print VthMN1 VthMN2
wrdata /workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/sim_data/data_AN1_VthMN1.txt AN1 VthMN1


reset

dc Vcont 0 2 0.1
*dc Vcont 0 3 0.1


let Icont = i(v.x1.x1.VIcont)
let Icont2 = i(v.x1.x1.VIcont1)
let Icont3 = i(v.x1.x1.VIcont3)
let VCN = v(x1.x1.VCN)
let VCP = v(x1.x1.VCP)
let Vsg_MP3 = v(Vdd) - VCP
let VsdMP3 = v(VDD) - v(x1.x1.VSMP4)
let VdsMN3 = v(x1.x1.VdsMN3)

let Vth_MP3 = @n.x1.x1.xmp3.nsg13_hv_pmos[vth]
let Vth_MN3 = @n.x1.x1.xmn3.nsg13_hv_nmos[vth]

let Vsg_MP3 = v(VDD) - VCP

let Vov_MP3 = Vsg_MP3 - Vth_MP3
let Vov_MN3 =  VCN - Vth_MN3

let gds_MN3 = @n.x1.x1.xmn3.nsg13_hv_nmos[gds]
let Ron_MN3 = 1/gds_MN3
let gds_MP3 = @n.x1.x1.xmp3.nsg13_hv_pmos[gds]
let Ron_MP3 = 1/gds_MP3
let M_P = gds_MP3/Vov_MP3
let M_N = gds_MN3/Vov_MN3

plot M_P M_N vs Vcont
plot Icont Icont2 Icont3 vs Vcont
plot Icont3 vs Vcont
plot Icont3 vs VCP
plot VCP vs Vcont
plot VCN Vsg_MP3 vs Vcont
plot VsdMP3 VdsMN3 vs Vcont
*plot Vin vs Vcont
.endc

"}
C {code.sym} 2880 -680 0 0 {name=VCO_Ki_4M/V_5MHz only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="
.param Vcont2 = 3.3

.param w_MP1a = 4u
.param l_MP1a = 7u
.param w_MP1b = 4u
.param l_MP1b = 7u
.param w_MP2 = 10u
.param l_MP2 = 0.5u
.param w_MP3 = 7u
.param l_MP3 = 0.5u
.param w_MP4 = 6u
.param l_MP4 = 5u

.param w_MN1 = 1u
.param l_MN1 = 2u
.param w_MN2 = 1u
.param l_MN2 = 2u
.param w_MN3 = 3u
.param l_MN3 = 5u
.param w_MN4 = 2u
.param l_MN4 = 5u


.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {code.sym} 3050 -680 0 0 {name=VCO_Ki_1 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="
.param Vcont2 = 3.3

.param w_MP1a = 4u
.param l_MP1a = 7u
.param w_MP1b = 4u
.param l_MP1b = 7u
.param w_MP2 = 7u
.param l_MP2 = 1u
.param w_MP3 = 3u
.param l_MP3 = 1u
.param w_MP4 = 6u
.param l_MP4 = 6u

.param w_MN1 = 2u
.param l_MN1 = 1u
.param w_MN2 = 2u
.param l_MN2 = 1u
.param w_MN3 = 1u
.param l_MN3 = 1u
.param w_MN4 = 2u
.param l_MN4 = 6u

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {code.sym} 3170 -680 0 0 {name=VCO_Ki_2 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="
.param Vcont2 = 3.3

.param w_MP1a = 7u
.param l_MP1a = 7u
.param w_MP1b = 4u
.param l_MP1b = 7u
.param w_MP2 = 7u
.param l_MP2 = 1u
.param w_MP3 = 3u
.param l_MP3 = 1u
.param w_MP4 = 3u
.param l_MP4 = 6u

.param w_MN1 = 3u
.param l_MN1 = 1u
.param w_MN2 = 2u
.param l_MN2 = 1u
.param w_MN3 = 1u
.param l_MN3 = 1u
.param w_MN4 = 1u
.param l_MN4 = 6u

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1

"}
C {code.sym} 3290 -680 0 0 {name=VCO_Ki_3 only_toplevel=true spice_ignore=1
format="tcleval( @value )"
value="
.param Vcont2 = 3.3

.param w_MP1a = 7u
.param l_MP1a = 7u
.param w_MP1b = 4u
.param l_MP1b = 7u
.param w_MP2 = 7u
.param l_MP2 = 1u
.param w_MP3 = 1.5u
.param l_MP3 = 1u
.param w_MP4 = 3u
.param l_MP4 = 6u

.param w_MN1 = 3u
.param l_MN1 = 1u
.param w_MN2 = 2u
.param l_MN2 = 1u
.param w_MN3 = 0.5u
.param l_MN3 = 1u
.param w_MN4 = 1u
.param l_MN4 = 6u

.param m_MP1a = 1
.param m_MP1b = 1
.param m_MP2 = 1
.param m_MP3 = 1
.param m_MP4 = 1
.param m_MN1 = 1
.param m_MN2 = 1
.param m_MN3 = 1
.param m_MN4 = 1


"}
