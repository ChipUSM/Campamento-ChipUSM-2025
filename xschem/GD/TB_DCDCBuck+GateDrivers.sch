v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -354 -130 -340 -130 {
lab=Vg_M1}
N -354 -90 -340 -90 {
lab=Vg_M2}
N -240 -510 -240 -480 {
lab=Vdd}
N -240 -420 -240 -400 {
lab=GND}
N -520 -600 -520 -570 {
lab=Vs_M1}
N -520 -510 -520 -490 {
lab=GND}
N -460 -520 -460 -490 {
lab=Vs_M2}
N -460 -430 -460 -410 {
lab=GND}
N -130 -110 -130 -100 {
lab=Vo}
N -250 -70 -250 -60 {
lab=GND}
N -130 -110 -100 -110 {
lab=Vo}
N -160 -110 -130 -110 {
lab=Vo}
N -250 -230 -250 -210 {
lab=VH}
N -250 -170 -250 -150 {
lab=#net1}
N -510 -250 -460 -250 {
lab=Vg_M1}
N -580 -180 -580 -170 {
lab=GND}
N -610 -320 -610 -300 {
lab=#net2}
N -580 -320 -580 -300 {
lab=#net3}
N -510 0 -460 0 {
lab=Vg_M2}
N -580 70 -580 80 {
lab=GND}
N -610 -70 -610 -50 {
lab=#net4}
N -580 -70 -580 -50 {
lab=#net5}
N -150 -510 -150 -480 {
lab=VH}
N -150 -420 -150 -400 {
lab=GND}
N -610 -180 -580 -180 {
lab=GND}
N -580 -200 -580 -180 {
lab=GND}
N -610 -200 -610 -180 {
lab=GND}
N -610 70 -580 70 {
lab=GND}
N -580 50 -580 70 {
lab=GND}
N -610 50 -610 70 {
lab=GND}
C {lab_pin.sym} -250 -228 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} -354 -130 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -354 -90 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} -106 -110 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {vsource.sym} -240 -450 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -240 -510 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -240 -400 0 0 {name=l2 lab=GND}
C {vsource.sym} -460 -460 0 1 {name=Vg2 value="PULSE(0 \{Vdd\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -520 -600 0 1 {name=p6 sig_type=std_logic lab=Vs_M1}
C {gnd.sym} -520 -490 0 1 {name=l4 lab=GND}
C {vsource.sym} -520 -540 0 1 {name=Vg1 value="PULSE(0 \{Vdd\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -460 -520 0 1 {name=p7 sig_type=std_logic lab=Vs_M2}
C {gnd.sym} -460 -410 0 1 {name=l5 lab=GND}
C {launcher.sym} -1130 -520 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} -250 -60 0 0 {name=l3 lab=GND}
C {ammeter.sym} -250 -190 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {lab_pin.sym} -660 -250 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -610 -380 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -580 -380 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -460 -250 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -580 -170 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -660 0 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -610 -130 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -580 -130 0 1 {name=p14 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -460 0 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -580 80 0 0 {name=l1 lab=GND}
C {vsource.sym} -150 -450 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -150 -510 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -150 -400 0 0 {name=l7 lab=GND}
C {ammeter.sym} -580 -350 0 0 {name=V_Igd_VH1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -580 -100 0 0 {name=V_Igd_VH2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -610 -100 0 1 {name=V_Igd_Vdd2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -610 -350 0 1 {name=V_Igd_Vdd1 savecurrent=true spice_ignore=0}
C {devices/code.sym} -980 -150 0 1 {name=Transient_simulation_1MHz only_toplevel=false spice_ignore=true

value="

.option method=gear

.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u
.param T1=2.381u
.control
reset
set color0 = white
tran 1n 30u
let Io = i(v.x1.V_Io)
let Id_M1 = @n.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.xm2.nsg13_hv_nmos[ids]
let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(VH)
let Vsd_M1 = v(VH) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let P_GD_Vdd = v(Vdd)*(i(V_Igd_Vdd1)+i(V_Igd_Vdd2))
let P_GD_VH = v(VH)*(i(V_Igd_VH1)+i(V_Igd_VH2))
let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=20u to=30u
meas tran Io_mean AVG Io from=20u to=30u
meas tran Po_mean AVG Po from=20u to=30u
meas tran Pin_mean AVG Pin from=20u to=30u
meas tran P_M1_mean AVG P_M1 from=20u to=30u
meas tran P_M2_mean AVG P_M2 from=20u to=30u
meas tran P_GD_Vdd_mean AVG P_GD_Vdd from=20u to=30u
meas tran P_GD_VH_mean AVG P_GD_VH from=20u to=30u

meas TRAN tdR TRIG v(Vg_M1) VAL=0.33 RISE=1 TARG v(Vg_M2) VAL=0.33 RISE=1
meas TRAN tdF TRIG v(Vg_M1) VAL=2.97 FALL=1 TARG v(Vg_M2) VAL=2.97 FALL=1

let P_GD = P_GD_Vdd_mean+P_GD_VH_mean
let Pin_tot_mean = P_GD + Pin_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD
print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
.endc



.end
"}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/DCDCBuck/DCDC_Buck.sym} -240 -90 0 0 {name=X1}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/GD/GateDriver_woLS.sym} -630 -210 0 0 {name=X2}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/GD/GateDriver_woLS.sym} -630 40 0 0 {name=X3}
C {code.sym} -970 -290 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

.param mult_1 = 1
.param mult_2 = 10
.param mult_3 = 30
.param mult_4 = 250

.param l = 0.15
.param w = 0.42



"}
C {code.sym} -970 -440 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {devices/code.sym} -970 -150 0 0 {name=Transient_simulation only_toplevel=false 

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
*let Id_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[id]
let Id_M1 = i(V_Iin)
*let Id_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[id]
let Id_M2 = -i(v.x1.V_IM2)
let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[gds]
let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_g5v0d10v5[gds]

let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(Vdd)
let Vsd_M1 = v(Vdd) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let Ron_M1 = Vsd_M1/Id_M1
let Ron_M2 = Vds_M2/Id_M2
*let Ron_M1 = 1/gds_M1
*let Ron_M2 = 1/gds_M2
let P_GD_VH = v(VH)*(i(V_Igd_VH1)+i(V_Igd_VH2))

meas tran Vo_mean AVG v(Vo) FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Io_mean AVG Io FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Irms_M1 RMS Id_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Irms_M2 RMS Id_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Po_mean AVG Po FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran Pin_mean AVG Pin FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_M1_mean AVG P_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_GD_Vdd_mean AVG P_GD_Vdd FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
meas tran P_GD_VH_mean AVG P_GD_VH FROM=\{Tmeas_i\} TO=\{Tmeas_end\}




let P_GD = P_GD_VH_mean
let Pin_tot_mean = P_GD + Pin_mean
let eff = 100*Po_mean/Pin_tot_mean
let eff_DCDC = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_tot_mean
let loss_M2 = 100*P_M2_mean/Pin_tot_mean
let loss_GD = 100*P_GD/Pin_tot_mean
let sumaPot = eff+loss_M1+loss_M2+loss_GD
print Pin_tot_mean eff eff_DCDC loss_M1 loss_M2 loss_GD sumaPot
print tau T L C R

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
plot Ron_M1 Ron_M2
write TB_DCDCBuck.raw
.endc


.end
"}
C {code.sym} -980 -290 0 1 {name=POWER_MOS_Parameters only_toplevel=false 

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
C {code.sym} -980 -440 0 1 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vin = 1.8
.param VH = 1.8
.param Vdd = 1.8
.param Del = 0

.ic v(Vo) = 0
*.ic i(x1.L1) = 0
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
.param TdR = 0.5n
.param TdF = 0.5n

*Filtro
.param L = Vin/(4*Io*rI*fsw)
.param R = Vo/Io
.param C = rI/(8*rV*R*fsw)

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {devices/code.sym} -850 10 0 1 {name=Transient_simulation_sweep only_toplevel=false spice_ignore=true

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
let loss_M1_sweep = vector(len)
let loss_M2_sweep = vector(len)

let index = 0

foreach R_val $&R_sweep
	alterparam R = $R_val
	reset
	save all
	run
	let Io = i(v.x1.V_Io)
	*let Id_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[id]
	let Id_M1 = i(V_Iin)
	*let Id_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[id]
	let Id_M2 = -i(v.x1.V_IM2)
	let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
	let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]

	let Po = Io*v(Vo)
	let I_in = i(V_Iin)
	let Pin = I_in*v(Vdd)
	let Vsd_M1 = v(Vdd) - v(x1.Vc)
	let Vds_M2 = v(x1.Vc)
	let P_M1 = Vsd_M1*Id_M1
	let P_M2 = -Vds_M2*Id_M2	
	let Ron_M1 = Vsd_M1/Id_M1
	let Ron_M2 = Vds_M2/Id_M2
	*let Ron_M1 = 1/gds_M1
	*let Ron_M2 = 1/gds_M2

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
	meas tran Pin_mean AVG Pin FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M1_mean AVG P_M1 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}
	meas tran P_M2_mean AVG P_M2 FROM=\{Tmeas_i\} TO=\{Tmeas_end\}

	let eff = 100*Po_mean/Pin_mean
	let loss_M1 = 100*P_M1_mean/Pin_mean
	let loss_M2 = 100*P_M2_mean/Pin_mean
	let cond_loss_M1 = Irms_M1*Irms_M1*40m*100
	let cond_loss_M2 = Irms_M2*Irms_M2*35m*100
	let sumaPot = eff+loss_M1+loss_M2
	print eff loss_M1 loss_M2 cond_loss_M1 cond_loss_M2 sumaPot
	print tau T L C R
	
	let eff_sweep[index] =  eff
	let Io_sweep[index] = Io_mean
	let Vo_sweep[index] = Vo_mean
	let Po_sweep[index] = Po_mean
	let Pin_sweep[index] = Pin_mean
	
	let loss_M1_sweep[index] = loss_M1
	let loss_M2_sweep[index] = loss_M2
	
	let index = index + 1

	*write TB_DCDCBuck.raw
end
*print eff loss_M1_sweep loss_M2_sweep
print eff_sweep loss_M2_sweep loss_M1_sweep
print R_sweep Io_sweep Vo_sweep 
print Po_sweep Pin_sweep 
plot eff_sweep vs Io_sweep
plot Io_sweep vs R_sweep
plot Pin_sweep Po_sweep vs Io_sweep
plot loss_M1_sweep loss_M2_sweep vs Io_sweep 
.endc


.end
"}
