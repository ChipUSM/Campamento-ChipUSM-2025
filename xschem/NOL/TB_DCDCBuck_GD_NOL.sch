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
N -54 -260 -40 -260 {
lab=Vg_M1}
N -54 -220 -40 -220 {
lab=Vg_M2}
N 270 -180 270 -150 {
lab=Vdd}
N 270 -90 270 -70 {
lab=GND}
N -10 -180 -10 -150 {
lab=V_PWM}
N -10 -90 -10 -70 {
lab=GND}
N 170 -240 170 -230 {
lab=Vo}
N 50 -200 50 -190 {
lab=GND}
N 170 -240 200 -240 {
lab=Vo}
N 140 -240 170 -240 {
lab=Vo}
N 50 -360 50 -340 {
lab=Vdd}
N 50 -300 50 -280 {
lab=#net1}
N 270 -360 270 -330 {
lab=Vx}
N 270 -270 270 -250 {
lab=GND}
N -360 -270 -360 -250 {
lab=Vx}
N -330 -150 -330 -140 {
lab=GND}
N -360 -40 -360 -20 {
lab=Vx}
N -330 80 -330 90 {
lab=GND}
N -260 30 -220 30 {
lab=Vg_M2}
N -260 -200 -230 -200 {
lab=Vg_M1}
N -430 -200 -410 -200 {
lab=Vs_M1}
N -430 30 -410 30 {
lab=Vs_M2}
N -330 -330 -330 -320 {
lab=Vdd}
N -330 -260 -330 -250 {
lab=#net2}
N -330 -100 -330 -90 {
lab=Vdd}
N -330 -30 -330 -20 {
lab=#net3}
N -550 -120 -530 -120 {
lab=Vs_M1}
N -550 -80 -530 -80 {
lab=Vs_M2}
N -640 -240 -640 -230 {
lab=Vdd}
N -640 -170 -640 -160 {
lab=#net4}
N -740 -100 -730 -100 {
lab=V_PWM}
C {lab_pin.sym} 50 -358 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -54 -260 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -54 -220 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 194 -240 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {vsource.sym} 270 -120 0 0 {name=Vin value=\{Vin\} savecurrent=false}
C {lab_pin.sym} 270 -180 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} 270 -70 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -10 -180 0 0 {name=p6 sig_type=std_logic lab=V_PWM}
C {gnd.sym} -10 -70 0 0 {name=l4 lab=GND}
C {vsource.sym} -10 -120 0 0 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {launcher.sym} -740 -460 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} 50 -190 0 0 {name=l3 lab=GND}
C {ammeter.sym} 50 -320 0 0 {name=V_Iin_DCDC savecurrent=true spice_ignore=0}
C {launcher.sym} -510 -460 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_DCDCBuck.raw tran"
}
C {code.sym} -1371 -459 0 0 {name=IC only_toplevel=false  spice_ignore = true
value="
.ic v(Vo) = 0
*.ic i(x1.L1) = 0
*.ic v(Vc) = 0

"}
C {../DCDCBuck/DCDC_Buck.sym} 60 -220 0 0 {name=X1 spice_ignore = false}
C {code.sym} -1240 -460 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {code.sym} -1550 -310 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 9000
.param w_M1 =10
.param l_M1 = 0.15
.param ng_M1 = 1

.param mult_M2 = 2000
.param w_M2 =10
.param l_M2 =0.15
.param ng_M2 =1



"}
C {code.sym} -1340 -310 0 0 {name=GateDriver_Parameters only_toplevel=false 

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
C {code.sym} -960 -310 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vin = 1.8
.param VH = 1.8
.param Del = 0
.param Co =63p
.ic v(Vo) = 0
*.ic i(x1.L1) = 0 No se puede hacer ic de corriente
*.ic v(Vc) = 0


.param fsw = 10Meg
*.param fsw = 8.4Meg
*.param fsw = 1Meg

.param Vo = 1.2
.param Io = 1
.param rI = 0.3
.param rV = 0.1
.param T = 1/fsw

.param D = 1-((Vo+0.05)/(Vin-0.03))
.param TR = 1n
.param TF = 1n
.param TdR = 2n
.param TdF = 0.5n

.param C_del = 0.1p
.param R_del_rise = TdR/(C_del)
.param R_del_fall = TdF/(C_del)

*Filtro
.param L = Vin/(4*Io*rI*fsw)
.param R = Vo/Io
.param C = rI/(8*rV*R*fsw)

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {vsource.sym} 270 -300 0 0 {name=Vin1 value=\{Vin\} savecurrent=false}
C {lab_pin.sym} 270 -360 0 0 {name=p8 sig_type=std_logic lab=Vx}
C {gnd.sym} 270 -250 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -360 -270 0 0 {name=p9 sig_type=std_logic lab=Vx}
C {lab_pin.sym} -330 -330 0 1 {name=p10 sig_type=std_logic lab=Vdd}
C {gnd.sym} -330 -140 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -360 -40 0 0 {name=p11 sig_type=std_logic lab=Vx}
C {lab_pin.sym} -330 -100 0 1 {name=p12 sig_type=std_logic lab=Vdd}
C {gnd.sym} -330 90 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -430 -200 0 0 {name=p13 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -430 30 0 0 {name=p14 sig_type=std_logic lab=Vs_M2}
C {../GD/GateDriver_woLS_fix.sym} -380 -160 0 0 {name=X2}
C {lab_pin.sym} -236 -200 0 1 {name=p15 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -226 30 0 1 {name=p16 sig_type=std_logic lab=Vg_M2}
C {ammeter.sym} -330 -290 0 0 {name=V_Igd1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -330 -60 0 0 {name=V_Igd2 savecurrent=true spice_ignore=0}
C {devices/code.sym} -1340 -160 0 0 {name=Transient_simulation only_toplevel=false spice_ignore=true

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

.tran 10n \{SimTime\} uic

.control

run
set color0 = white
*tran 10n \{SimTime\} uic
*tran 10n \{SimTime\}

let Tmeas_i = \{Sim_end\} -\{T\}*10
let Tmeas_end = \{Sim_end\}

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
let P_NOL = v(Vdd)*i(V_Inol)
let P_in = P_GD+Pin_DCDC+P_NOL

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
C {../GD/GateDriver_woLS_fix.sym} -380 70 0 0 {name=X3}
C {devices/code.sym} -1140 -160 0 0 {name=Sweep_Load only_toplevel=false spice_ignore=false

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
let loss_GD_sweep = vector(len)
let loss_NOL_sweep = vector(len)
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
plot loss_GD_sweep loss_NOL_sweep vs Io_sweep
plot loss_NOL_sweep vs Io_sweep
.endc


.end
"}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/NOL/NOL.sym} -740 -20 0 0 {name=X4}
C {lab_pin.sym} -530 -120 0 1 {name=p17 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -530 -80 0 1 {name=p18 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -640 -240 0 1 {name=p19 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -640 -200 0 0 {name=V_Inol savecurrent=true spice_ignore=0}
C {gnd.sym} -640 -40 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -740 -100 0 0 {name=p7 sig_type=std_logic lab=V_PWM}
C {code.sym} -1140 -310 0 0 {name=NOR_INV_Parameters only_toplevel=false 

value="
.param temp=27
.param mult = 1

.param w_P_NOR =1
.param l_P_NOR = 0.15

.param w_N_NOR =1
.param l_N_NOR =0.15

.param w_inv =1
.param l_inv =0.15


"}
