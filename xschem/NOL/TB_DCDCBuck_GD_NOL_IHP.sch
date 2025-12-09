v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
T {- d = Vo/Vin. => Como la señal de disparo VgM1 es el negado de VsdM1, d*=1-d.
- R=Vo/Io, C= (rI)/(8*rV*R*fsw), L = Vs/(4*Io*rI*fsw)} -1070 -430 0 0 0.4 0.4 {}
N -124 -210 -110 -210 {
lab=Vg_M1}
N -124 -170 -110 -170 {
lab=Vg_M2}
N 200 -130 200 -100 {
lab=VH}
N 200 -40 200 -20 {
lab=GND}
N -80 -130 -80 -100 {
lab=V_PWM}
N -80 -40 -80 -20 {
lab=GND}
N 100 -190 100 -180 {
lab=Vo}
N -20 -150 -20 -140 {
lab=GND}
N 100 -190 130 -190 {
lab=Vo}
N 70 -190 100 -190 {
lab=Vo}
N -20 -310 -20 -290 {
lab=VH}
N -20 -250 -20 -230 {
lab=#net1}
N 200 -310 200 -280 {
lab=Vdd}
N 200 -220 200 -200 {
lab=GND}
N -430 -220 -430 -200 {
lab=#net2}
N -400 -100 -400 -90 {
lab=GND}
N -430 10 -430 30 {
lab=#net3}
N -400 130 -400 140 {
lab=GND}
N -330 80 -290 80 {
lab=Vg_M2}
N -330 -150 -300 -150 {
lab=Vg_M1}
N -500 -150 -480 -150 {
lab=Vs_M1}
N -500 80 -480 80 {
lab=Vs_M2}
N -400 -280 -400 -270 {
lab=VH}
N -400 -210 -400 -200 {
lab=#net4}
N -400 -50 -400 -40 {
lab=VH}
N -400 20 -400 30 {
lab=#net5}
N -430 -100 -430 -90 {
lab=GND}
N -430 -90 -400 -90 {
lab=GND}
N -430 130 -430 140 {
lab=GND}
N -430 140 -400 140 {
lab=GND}
N -660 -170 -660 -150 {
lab=#net6}
C {lab_pin.sym} -20 -308 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} -124 -210 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -124 -170 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 124 -190 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {vsource.sym} 200 -70 0 0 {name=Vin value=\{VH\} savecurrent=false}
C {lab_pin.sym} 200 -130 0 0 {name=p5 sig_type=std_logic lab=VH}
C {gnd.sym} 200 -20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -80 -130 0 0 {name=p6 sig_type=std_logic lab=V_PWM}
C {gnd.sym} -80 -20 0 0 {name=l4 lab=GND}
C {vsource.sym} -80 -70 0 0 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {launcher.sym} -740 -460 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} -20 -140 0 0 {name=l3 lab=GND}
C {ammeter.sym} -20 -270 0 0 {name=V_Iin_DCDC savecurrent=true spice_ignore=0}
C {launcher.sym} -510 -460 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_DCDCBuck.raw tran"
}
C {code.sym} -1210 -320 0 0 {name=GD_Param only_toplevel=false 

value="
.param temp=27

.param mult_1 = 1
.param mult_2 = 10
.param mult_3 = 30
.param mult_4 = 250

.param l = 0.15
*.param l = 0.3
.param w = 0.42



"}
C {code.sym} -920 -320 0 0 {name=Sim_Param only_toplevel=false 

value="
.param Vin = 3.3
.param VH = 3.3
.param Vdd = 1.2
.param Del = 0
.param Co =63p
.ic v(Vo) = 0
*.ic i(x1.L1) = 0 No se puede hacer ic de corriente
*.ic v(Vc) = 0


*.param fsw = 10Meg
.param fsw = 8.4Meg
*.param fsw = 1Meg

.param Vo = 1.2
.param Io = 0.5
.param rI = 0.3
.param rV = 0.1
.param T = 1/fsw

.param D = 1-((Vo+0.05)/(Vin-0.03))
.param TR = 1n
.param TF = 1n
.param TdR = 1.5n
.param TdF = 1.5n

*Filtro
.param L = Vin/(4*Io*rI*fsw)
.param R = Vo/Io
.param C = rI/(8*rV*R*fsw)

*NOL 
.param C_del = 0.1p
.param R_del_rise = TdR/(C_del)
.param R_del_fall = TdF/(C_del)

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {vsource.sym} 200 -250 0 0 {name=Vin1 value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} 200 -310 0 0 {name=p8 sig_type=std_logic lab=Vdd}
C {gnd.sym} 200 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -430 -270 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -400 -280 0 1 {name=p10 sig_type=std_logic lab=VH}
C {gnd.sym} -400 -90 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -430 -40 0 0 {name=p11 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -400 -50 0 1 {name=p12 sig_type=std_logic lab=VH}
C {gnd.sym} -400 140 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -500 -150 0 0 {name=p13 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -500 80 0 0 {name=p14 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -306 -150 0 1 {name=p15 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -296 80 0 1 {name=p16 sig_type=std_logic lab=Vg_M2}
C {ammeter.sym} -400 -240 0 0 {name=V_Igd1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -400 -10 0 0 {name=V_Igd2 savecurrent=true spice_ignore=0}
C {devices/code.sym} -1320 -170 0 0 {name=Tran_sim only_toplevel=false spice_ignore=false

value="
.save all
.param tau = 4*L/R
.csparam tau = \{tau\}
.param SimTime = tau+10*T
.csparam Sim_end = \{SimTime\}
.csparam T = \{T\}
.csparam L = \{L\}
.csparam C = \{C\}
.csparam R = \{R\}

.tran 100n \{SimTime\} uic

.control

run
set color0 = white
*tran 10n \{SimTime\} uic
*tran 10n \{SimTime\}

let Tmeas_i = \{Sim_end\} -\{T\}*5
let Tmeas_end = \{Sim_end\}

let Io = i(v.x1.V_Io)
let Id_M1 = i(V_Iin_DCDC)
let Id_M2 = -i(v.x1.V_IM2)
let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]

let Po = Io*v(Vo)
let I_in_DCDC = i(V_Iin_DCDC)
let Pin_DCDC = I_in_DCDC*v(VH)
let Vsd_M1 = v(VH) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let Ron_M1 = Vsd_M1/Id_M1
let Ron_M2 = Vds_M2/Id_M2
*let Ron_M1 = 1/gds_M1
*let Ron_M2 = 1/gds_M2
let P_GD = v(VH)*(i(V_Igd1)+i(V_Igd2)) + v(Vdd)*(i(V_Igd1_dig)+i(V_Igd2_dig))
let P_NOL = v(Vdd)*i(V_Inol)
let P_in = P_GD+Pin_DCDC + P_NOL

meas tran Vo_mean AVG v(Vo) FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Io_mean AVG Io FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Irms_M1 RMS Id_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Irms_M2 RMS Id_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Po_mean AVG Po FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Pin_DCDC_mean AVG Pin_DCDC FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_M1_mean AVG P_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_GD_mean AVG P_GD FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_NOL_mean AVG P_NOL FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Pin_tot_mean AVG P_in FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD_mean/Pin_tot_mean
let loss_NOL = 100*P_NOL_mean/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_NOL
print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD loss_NOL sumaPot
print tau T L C R

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po P_in
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
plot Ron_M1 Ron_M2
write TB_DCDCBuck.raw
.endc


.end
"}
C {devices/code.sym} -1210 -170 0 0 {name=Sweep_Load only_toplevel=false spice_ignore=true

value="
.save all

.param tau = 4*L/R
.csparam tau = \{tau\}
.param SimTime = tau+10*T
.csparam Sim_end = \{SimTime\}
.csparam Vo = \{Vo\}
.csparam T = \{T\}
.csparam L = \{L\}
.csparam C = \{C\}
.csparam R = \{R\}

.param start = 0.6
.param stop = 2.4
.param step = 0.2

.tran 10n \{SimTime\} uic

.control
set color0 = white

let strt = 0.5
let stp = 2
let step = 0.1

compose Io_sweep2 start = 0.5 stop = 2 step=0.1 
*compose R_sweep start=0.6 stop=2.4 step=0.2

let R_sweep = \{Vo\}/Io_sweep2
let len = 1+(stp-strt)/step

let eff_sweep = vector(len)
let Io_sweep = vector(len)
let Vo_sweep = vector(len)
let Po_sweep = vector(len)
let Pin_sweep = vector(len)
let loss_NOL_sweep = vector(len)
let loss_GD_sweep = vector(len)
let loss_M1_sweep = vector(len)
let loss_M2_sweep = vector(len)

let index = 0

foreach R_val $&R_sweep
	alterparam R = $R_val
	reset
	save all
	run

	let Io = i(v.x1.V_Io)
	let Id_M1 = i(V_Iin_DCDC)
	let Id_M2 = -i(v.x1.V_IM2)
	let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
	let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]

	let Po = Io*v(Vo)
	let I_in_DCDC = i(V_Iin_DCDC)
	let Pin_DCDC = I_in_DCDC*v(VH)
	let Vsd_M1 = v(VH) - v(x1.Vc)
	let Vds_M2 = v(x1.Vc)
	let P_M1 = Vsd_M1*Id_M1
	let P_M2 = -Vds_M2*Id_M2	
	let Ron_M1 = Vsd_M1/Id_M1
	let Ron_M2 = Vds_M2/Id_M2
	*let Ron_M1 = 1/gds_M1
	*let Ron_M2 = 1/gds_M2
	let P_GD = v(VH)*(i(V_Igd1)+i(V_Igd2)) + v(Vdd)*(i(V_Igd1_dig)+i(V_Igd2_dig))
	let P_NOL = v(Vdd)*i(V_Inol)
	let P_in = P_GD+Pin_DCDC+P_NOL

	let Tmeas_i = \{Sim_end\} - 5*\{T\}
	let Tmeas_end = \{Sim_end\}

	*plot v(Vo)
	*plot Io i(v.x1.V_IL)
	*plot Id_M1 Id_M2
	*plot Po Pin
	*plot P_M1 P_M2
	*plot v(x1.Vc)
	*plot v(Vg_M1) v(Vg_M2)
	*plot Ron_M1 Ron_M2
	
	meas tran Vo_mean AVG v(Vo) FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Io_mean AVG Io FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Irms_M1 RMS Id_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Irms_M2 RMS Id_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Po_mean AVG Po FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Pin_DCDC_mean AVG Pin_DCDC FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M1_mean AVG P_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_GD_mean AVG P_GD FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_NOL_mean AVG P_NOL FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Pin_tot_mean AVG P_in FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

	let eff = 100*Po_mean/Pin_tot_mean
	let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
	let loss_M1 = 100*P_M1_mean/Pin_tot_mean
	let loss_M2 = 100*P_M2_mean/Pin_tot_mean
	let loss_GD = 100*P_GD_mean/Pin_tot_mean
	let loss_NOL = 100*P_NOL_mean/Pin_tot_mean
	let sumaPot = eff+loss_M1+loss_M2+loss_GD+loss_NOL
	print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD loss_NOL sumaPot
	print tau T L C R	
	
	let eff_sweep[index] =  eff
	let Io_sweep[index] = Io_mean
	let Vo_sweep[index] = Vo_mean
	let Po_sweep[index] = Po_mean
	let Pin_sweep[index] = Pin_tot_mean
	
	let loss_NOL_sweep[index] = loss_NOL
	let loss_GD_sweep[index] = loss_GD
	let loss_M1_sweep[index] = loss_M1
	let loss_M2_sweep[index] = loss_M2
	
	let index = index + 1

	*write TB_DCDCBuck.raw
end
*print eff loss_M1_sweep loss_M2_sweep
print eff_sweep loss_M2_sweep loss_M1_sweep loss_GD_sweep loss_NOL_sweep
print R_sweep Io_sweep Vo_sweep 
print Po_sweep Pin_sweep 
plot eff_sweep vs Io_sweep
plot Io_sweep vs R_sweep
plot Pin_sweep Po_sweep vs Io_sweep
plot loss_M1_sweep loss_M2_sweep vs Io_sweep 
plot loss_GD_sweep vs Io_sweep 
plot loss_NOL_sweep vs Io_sweep
.endc


.end
"}
C {devices/code.sym} -1100 -170 0 0 {name=Sweep_fsw only_toplevel=false spice_ignore=true

value="
.save all
.param tau = 4*L/R
.csparam tau = \{tau\}
.param SimTime = tau+10*T
.csparam Sim_end = \{SimTime\}
.csparam Vo = \{Vo\}
.csparam T = \{T\}
.csparam L = \{L\}
.csparam C = \{C\}
.csparam R = \{R\}
.csparam fsw = \{fsw\}

.param start = 0.6
.param stop = 2.4
.param step = 0.2

.tran 10n \{SimTime\} uic

.control
set color0 = white

let strt = 1
let stp = 21
let step = 4

compose fsw_sweep start = 1Meg stop = 21Meg step = 4Meg
*compose Io_sweep2 start = 0.5 stop = 2 step=0.1 
*compose R_sweep start=0.6 stop=2.4 step=0.2

*let R_sweep = \{Vo\}/Io_sweep2
let T_sweep = 1/fsw_sweep
let len = 1+(stp-strt)/step

let eff_sweep = vector(len)
*let fsw_sweep = vector(len)
let Io_sweep = vector(len)
let Vo_sweep = vector(len)
let Po_sweep = vector(len)
let Pin_sweep = vector(len)
let loss_M1_sweep = vector(len)
let loss_M2_sweep = vector(len)
let loss_GD_sweep = vector(len)

let index = 0

foreach T_val $&T_sweep
	alterparam fsw = $fsw_val
	alterparam T = $T_val
	reset
	save all
	run

	let Io = i(v.x1.V_Io)
	let Id_M1 = i(V_Iin_DCDC)
	let Id_M2 = -i(v.x1.V_IM2)
	let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
	let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]

	let Po = Io*v(Vo)
	let I_in_DCDC = i(V_Iin_DCDC)
	let Pin_DCDC = I_in_DCDC*v(Vdd)
	let Vsd_M1 = v(Vdd) - v(x1.Vc)
	let Vds_M2 = v(x1.Vc)
	let P_M1 = Vsd_M1*Id_M1
	let P_M2 = -Vds_M2*Id_M2	
	let Ron_M1 = Vsd_M1/Id_M1
	let Ron_M2 = Vds_M2/Id_M2
	*let Ron_M1 = 1/gds_M1
	*let Ron_M2 = 1/gds_M2
	let P_GD = v(Vdd)*(i(V_Igd1)+i(V_Igd2))
	let P_in = P_GD+Pin_DCDC

	let Tmeas_i = \{Sim_end\} - 5*\{T\}
	let Tmeas_end = \{Sim_end\}

	*plot v(Vo)
	*plot Io i(v.x1.V_IL)
	*plot Id_M1 Id_M2
	*plot Po Pin
	*plot P_M1 P_M2
	*plot v(x1.Vc)
	*plot v(Vg_M1) v(Vg_M2)
	*plot Ron_M1 Ron_M2
	
	meas tran Vo_mean AVG v(Vo) FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Io_mean AVG Io FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Irms_M1 RMS Id_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Irms_M2 RMS Id_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Po_mean AVG Po FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Pin_DCDC_mean AVG Pin_DCDC FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M1_mean AVG P_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_GD_mean AVG P_GD FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran Pin_tot_mean AVG P_in FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

	let eff = 100*Po_mean/Pin_tot_mean
	let eff_DCDC = 100*Po_mean/Pin_DCDC_mean
	let loss_M1 = 100*P_M1_mean/Pin_tot_mean
	let loss_M2 = 100*P_M2_mean/Pin_tot_mean
	let loss_GD = 100*P_GD_mean/Pin_tot_mean
	let sumaPot = eff+loss_M1+loss_M2+loss_GD
	print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot
	print tau T L C R	
	
	let eff_sweep[index] =  eff
	let Io_sweep[index] = Io_mean
	let Vo_sweep[index] = Vo_mean
	let Po_sweep[index] = Po_mean
	let Pin_sweep[index] = Pin_tot_mean

	let loss_GD_sweep[index] = loss_GD
	let loss_M1_sweep[index] = loss_M1
	let loss_M2_sweep[index] = loss_M2
	
	let index = index + 1

	*write TB_DCDCBuck.raw
end
*print eff loss_M1_sweep loss_M2_sweep
print eff_sweep loss_M2_sweep loss_M1_sweep loss_GD_sweep
print fsw_sweep Io_sweep Vo_sweep 
print Po_sweep Pin_sweep 
plot eff_sweep vs fsw_sweep
plot Io_sweep vs fsw_sweep
plot Vo_sweep vs fsw_sweep
plot Pin_sweep Po_sweep vs fsw_sweep
plot loss_M1_sweep loss_M2_sweep vs fsw_sweep 
plot loss_GD_sweep vs fsw_sweep 
.endc


.end
"}
C {../GD/GD_vto1p1.sym} -450 -110 0 0 {name=X4}
C {code.sym} -1390 -320 0 0 {name=POWER_MOS_Param only_toplevel=false 

value="
*M1 hvPMOS
.param temp=27
.param mult_M1 = 12000
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

*M2 hvNMOS
.param mult_M2 = 4000
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1




"}
C {../DCDCBuck/DCDCBuck_vto1p1.sym} -10 -170 0 0 {name=X1}
C {code.sym} -1210 -460 0 0 {name=MODEL only_toplevel=true
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
C {../GD/GD_vto1p1.sym} -450 120 0 0 {name=X2}
C {ammeter.sym} -430 -240 0 1 {name=V_Igd1_dig savecurrent=true spice_ignore=0}
C {ammeter.sym} -430 -10 0 1 {name=V_Igd2_dig savecurrent=true spice_ignore=0}
C {../NOL/NOL.sym} -760 -10 0 0 {name=X3}
C {lab_pin.sym} -570 -110 0 1 {name=p17 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -570 -70 0 1 {name=p18 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -660 -220 0 0 {name=p19 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -660 -190 0 1 {name=V_Inol savecurrent=true spice_ignore=0}
C {gnd.sym} -660 -30 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -750 -90 0 0 {name=p7 sig_type=std_logic lab=V_PWM}
C {code.sym} -1100 -320 0 0 {name=NOR_INV_Parameters only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param w_P_NOR =0.15u
.param l_P_NOR = 0.15u

.param w_N_NOR =0.15u
.param l_N_NOR =0.15u

.param w_inv =0.15u
.param l_inv =0.15u


"}
C {code.sym} -1390 -460 0 0 {name=Sim_Config only_toplevel=false 

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
