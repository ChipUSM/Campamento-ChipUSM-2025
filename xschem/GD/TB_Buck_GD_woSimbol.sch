v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
T {- d = Vo/Vin. => Como la señal de disparo VgM1 es el negado de VsdM1, d*=1-d.
- R=Vo/Io, C= (rI)/(8*rV*R*fsw), L = Vs/(4*Io*rI*fsw)} -330 -290 0 0 0.4 0.4 {}
N -260 400 -260 430 {
lab=Vdd}
N -260 490 -260 510 {
lab=GND}
N -140 400 -140 430 {
lab=Vs_M1}
N -140 490 -140 510 {
lab=GND}
N -140 550 -140 580 {
lab=Vs_M2}
N -140 640 -140 660 {
lab=GND}
N 470 290 470 310 {
lab=Vdd}
N 470 350 470 370 {
lab=#net1}
N 316 520 330 520 {
lab=Vg_M1}
N 316 560 330 560 {
lab=Vg_M2}
N 820 530 820 540 {
lab=Vo}
N 440 740 440 750 {
lab=GND}
N 820 530 850 530 {
lab=Vo}
N 790 530 820 530 {
lab=Vo}
N 470 480 470 490 {
lab=Vc}
N 470 690 470 740 {
lab=GND}
N 490 690 760 690 {
lab=GND}
N 470 680 470 690 {
lab=GND}
N 400 450 430 450 {
lab=Vg_M1}
N 400 650 430 650 {
lab=Vg_M2}
N 470 410 470 420 {
lab=#net1}
N 430 530 470 530 {
lab=Vc}
N 670 530 680 530 {
lab=#net2}
N 760 530 800 530 {
lab=Vo}
N 470 610 470 620 {
lab=#net3}
N 550 530 570 530 {
lab=#net4}
N 470 450 490 450 {
lab=#net1}
N 490 410 490 450 {
lab=#net1}
N 470 410 490 410 {
lab=#net1}
N 470 400 470 410 {
lab=#net1}
N 470 650 490 650 {
lab=GND}
N 490 650 490 690 {
lab=GND}
N 470 690 490 690 {
lab=GND}
N 760 600 760 610 {
lab=GND}
N 760 530 760 540 {
lab=Vo}
N 740 530 760 530 {
lab=Vo}
N 670 530 670 550 {
lab=#net2}
N 630 530 670 530 {
lab=#net2}
N 440 740 470 740 {
lab=GND}
N 470 600 470 620 {
lab=#net3}
N 760 600 760 690 {
lab=GND}
N 670 610 670 690 {
lab=GND}
N 470 490 470 540 {
lab=Vc}
N 470 530 490 530 {
lab=Vc}
N 470 370 470 410 {
lab=#net1}
N 330 450 330 520 {
lab=Vg_M1}
N 330 450 400 450 {
lab=Vg_M1}
N 330 560 330 650 {
lab=Vg_M2}
N 330 650 400 650 {
lab=Vg_M2}
N 1080 -160 1080 -140 {
lab=#net5}
N 520 40 570 40 {
lab=Vg_M1}
N -20 -140 -20 -120 {
lab=#net6}
N 530 40 540 40 {
lab=Vg_M1}
N 50 40 50 80 {
lab=#net7}
N 340 250 510 250 {
lab=GND}
N 170 250 340 250 {
lab=GND}
N -70 40 0 40 {
lab=Vg2}
N 180 40 180 110 {
lab=Vg3}
N 50 -30 50 40 {
lab=#net7}
N 180 -10 180 40 {
lab=Vg3}
N 220 40 220 80 {
lab=Vg4}
N 340 -120 510 -120 {
lab=#net6}
N 170 -120 340 -120 {
lab=#net6}
N -20 -120 170 -120 {
lab=#net6}
N 220 40 260 40 {
lab=Vg4}
N 220 -30 220 40 {
lab=Vg4}
N 50 110 60 110 {
lab=GND}
N 60 110 60 140 {
lab=GND}
N 50 140 60 140 {
lab=GND}
N 220 110 240 110 {
lab=GND}
N 240 110 240 140 {
lab=GND}
N 220 140 240 140 {
lab=GND}
N 50 -60 70 -60 {
lab=#net6}
N 70 -90 70 -60 {
lab=#net6}
N 50 -90 70 -90 {
lab=#net6}
N 220 -60 240 -60 {
lab=#net6}
N 240 -90 240 -60 {
lab=#net6}
N 220 -90 240 -90 {
lab=#net6}
N 120 40 180 40 {
lab=Vg3}
N 50 40 60 40 {
lab=#net7}
N 170 -10 180 -10 {
lab=Vg3}
N 180 -60 180 -10 {
lab=Vg3}
N 0 -60 10 -60 {
lab=Vg2}
N 0 -60 0 110 {
lab=Vg2}
N 0 110 10 110 {
lab=Vg2}
N 50 140 50 250 {
lab=GND}
N 50 250 180 250 {
lab=GND}
N 50 -120 50 -90 {
lab=#net6}
N 220 -120 220 -90 {
lab=#net6}
N 220 140 220 250 {
lab=GND}
N 320 40 320 110 {
lab=Vg4}
N 320 -10 320 40 {
lab=Vg4}
N 360 40 360 80 {
lab=Vg5}
N 360 40 400 40 {
lab=Vg5}
N 360 -30 360 40 {
lab=Vg5}
N 360 110 380 110 {
lab=GND}
N 380 110 380 140 {
lab=GND}
N 360 140 380 140 {
lab=GND}
N 360 -60 380 -60 {
lab=#net6}
N 380 -90 380 -60 {
lab=#net6}
N 360 -90 380 -90 {
lab=#net6}
N 260 40 320 40 {
lab=Vg4}
N 310 -10 320 -10 {
lab=Vg4}
N 320 -60 320 -10 {
lab=Vg4}
N 360 -120 360 -90 {
lab=#net6}
N 360 140 360 250 {
lab=GND}
N 470 40 470 110 {
lab=Vg5}
N 470 -10 470 40 {
lab=Vg5}
N 510 40 510 80 {
lab=Vg_M1}
N 510 -30 510 40 {
lab=Vg_M1}
N 510 110 530 110 {
lab=GND}
N 530 110 530 140 {
lab=GND}
N 510 140 530 140 {
lab=GND}
N 510 -60 530 -60 {
lab=#net6}
N 530 -90 530 -60 {
lab=#net6}
N 510 -90 530 -90 {
lab=#net6}
N 410 40 470 40 {
lab=Vg5}
N 460 -10 470 -10 {
lab=Vg5}
N 470 -60 470 -10 {
lab=Vg5}
N 510 -120 510 -90 {
lab=#net6}
N 510 140 510 250 {
lab=GND}
N 400 40 420 40 {
lab=Vg5}
N 510 40 540 40 {
lab=Vg_M1}
N -280 40 -280 80 {
lab=#net8}
N -150 40 -150 110 {
lab=Vg1}
N -280 -30 -280 40 {
lab=#net8}
N -150 -10 -150 40 {
lab=Vg1}
N -110 40 -110 80 {
lab=Vg2}
N -110 40 -70 40 {
lab=Vg2}
N -110 -30 -110 40 {
lab=Vg2}
N -280 110 -270 110 {
lab=GND}
N -270 110 -270 140 {
lab=GND}
N -280 140 -270 140 {
lab=GND}
N -110 110 -90 110 {
lab=GND}
N -90 110 -90 140 {
lab=GND}
N -110 140 -90 140 {
lab=GND}
N -280 -60 -260 -60 {
lab=#net6}
N -260 -90 -260 -60 {
lab=#net6}
N -280 -90 -260 -90 {
lab=#net6}
N -110 -60 -90 -60 {
lab=#net6}
N -90 -90 -90 -60 {
lab=#net6}
N -110 -90 -90 -90 {
lab=#net6}
N -210 40 -150 40 {
lab=Vg1}
N -280 40 -270 40 {
lab=#net8}
N -160 -10 -150 -10 {
lab=Vg1}
N -150 -60 -150 -10 {
lab=Vg1}
N -330 -60 -320 -60 {
lab=Vs_M1}
N -330 -60 -330 110 {
lab=Vs_M1}
N -330 110 -320 110 {
lab=Vs_M1}
N -280 250 50 250 {
lab=GND}
N -280 140 -280 250 {
lab=GND}
N -110 140 -110 250 {
lab=GND}
N -370 40 -330 40 {
lab=Vs_M1}
N -280 -120 -20 -120 {
lab=#net6}
N -280 -120 -280 -90 {
lab=#net6}
N -110 -120 -110 -90 {
lab=#net6}
N -10 -10 0 -10 {
lab=Vg2}
N 100 250 100 270 {
lab=GND}
N 1620 40 1670 40 {
lab=Vg_M2}
N 1080 -140 1080 -120 {
lab=#net5}
N 1630 40 1640 40 {
lab=Vg_M2}
N 1150 40 1150 80 {
lab=#net9}
N 1440 250 1610 250 {
lab=GND}
N 1270 250 1440 250 {
lab=GND}
N 1030 40 1100 40 {
lab=#net10}
N 1280 40 1280 110 {
lab=#net11}
N 1150 -30 1150 40 {
lab=#net9}
N 1280 -10 1280 40 {
lab=#net11}
N 1320 40 1320 80 {
lab=#net12}
N 1440 -120 1610 -120 {
lab=#net5}
N 1270 -120 1440 -120 {
lab=#net5}
N 1080 -120 1270 -120 {
lab=#net5}
N 1320 40 1360 40 {
lab=#net12}
N 1320 -30 1320 40 {
lab=#net12}
N 1150 110 1160 110 {
lab=GND}
N 1160 110 1160 140 {
lab=GND}
N 1150 140 1160 140 {
lab=GND}
N 1320 110 1340 110 {
lab=GND}
N 1340 110 1340 140 {
lab=GND}
N 1320 140 1340 140 {
lab=GND}
N 1150 -60 1170 -60 {
lab=#net5}
N 1170 -90 1170 -60 {
lab=#net5}
N 1150 -90 1170 -90 {
lab=#net5}
N 1320 -60 1340 -60 {
lab=#net5}
N 1340 -90 1340 -60 {
lab=#net5}
N 1320 -90 1340 -90 {
lab=#net5}
N 1220 40 1280 40 {
lab=#net11}
N 1150 40 1160 40 {
lab=#net9}
N 1270 -10 1280 -10 {
lab=#net11}
N 1280 -60 1280 -10 {
lab=#net11}
N 1100 -60 1110 -60 {
lab=#net10}
N 1100 -60 1100 110 {
lab=#net10}
N 1100 110 1110 110 {
lab=#net10}
N 1150 140 1150 250 {
lab=GND}
N 1150 250 1280 250 {
lab=GND}
N 1150 -120 1150 -90 {
lab=#net5}
N 1320 -120 1320 -90 {
lab=#net5}
N 1320 140 1320 250 {
lab=GND}
N 1420 40 1420 110 {
lab=#net12}
N 1420 -10 1420 40 {
lab=#net12}
N 1460 40 1460 80 {
lab=#net13}
N 1460 40 1500 40 {
lab=#net13}
N 1460 -30 1460 40 {
lab=#net13}
N 1460 110 1480 110 {
lab=GND}
N 1480 110 1480 140 {
lab=GND}
N 1460 140 1480 140 {
lab=GND}
N 1460 -60 1480 -60 {
lab=#net5}
N 1480 -90 1480 -60 {
lab=#net5}
N 1460 -90 1480 -90 {
lab=#net5}
N 1360 40 1420 40 {
lab=#net12}
N 1410 -10 1420 -10 {
lab=#net12}
N 1420 -60 1420 -10 {
lab=#net12}
N 1460 -120 1460 -90 {
lab=#net5}
N 1460 140 1460 250 {
lab=GND}
N 1570 40 1570 110 {
lab=#net13}
N 1570 -10 1570 40 {
lab=#net13}
N 1610 40 1610 80 {
lab=Vg_M2}
N 1610 -30 1610 40 {
lab=Vg_M2}
N 1610 110 1630 110 {
lab=GND}
N 1630 110 1630 140 {
lab=GND}
N 1610 140 1630 140 {
lab=GND}
N 1610 -60 1630 -60 {
lab=#net5}
N 1630 -90 1630 -60 {
lab=#net5}
N 1610 -90 1630 -90 {
lab=#net5}
N 1510 40 1570 40 {
lab=#net13}
N 1560 -10 1570 -10 {
lab=#net13}
N 1570 -60 1570 -10 {
lab=#net13}
N 1610 -120 1610 -90 {
lab=#net5}
N 1610 140 1610 250 {
lab=GND}
N 1500 40 1520 40 {
lab=#net13}
N 1610 40 1640 40 {
lab=Vg_M2}
N 820 40 820 80 {
lab=#net14}
N 950 40 950 110 {
lab=#net15}
N 820 -30 820 40 {
lab=#net14}
N 950 -10 950 40 {
lab=#net15}
N 990 40 990 80 {
lab=#net10}
N 990 40 1030 40 {
lab=#net10}
N 990 -30 990 40 {
lab=#net10}
N 820 110 830 110 {
lab=GND}
N 830 110 830 140 {
lab=GND}
N 820 140 830 140 {
lab=GND}
N 990 110 1010 110 {
lab=GND}
N 1010 110 1010 140 {
lab=GND}
N 990 140 1010 140 {
lab=GND}
N 820 -60 840 -60 {
lab=#net5}
N 840 -90 840 -60 {
lab=#net5}
N 820 -90 840 -90 {
lab=#net5}
N 990 -60 1010 -60 {
lab=#net5}
N 1010 -90 1010 -60 {
lab=#net5}
N 990 -90 1010 -90 {
lab=#net5}
N 890 40 950 40 {
lab=#net15}
N 820 40 830 40 {
lab=#net14}
N 940 -10 950 -10 {
lab=#net15}
N 950 -60 950 -10 {
lab=#net15}
N 770 -60 780 -60 {
lab=Vs_M2}
N 770 -60 770 110 {
lab=Vs_M2}
N 770 110 780 110 {
lab=Vs_M2}
N 820 250 1150 250 {
lab=GND}
N 820 140 820 250 {
lab=GND}
N 990 140 990 250 {
lab=GND}
N 730 40 770 40 {
lab=Vs_M2}
N 820 -120 1080 -120 {
lab=#net5}
N 820 -120 820 -90 {
lab=#net5}
N 990 -120 990 -90 {
lab=#net5}
N 1090 -10 1100 -10 {
lab=#net10}
N 1200 250 1200 270 {
lab=GND}
C {lab_pin.sym} 470 292 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {vsource.sym} -260 460 0 0 {name=Vin value=\{Vin\} savecurrent=false}
C {lab_pin.sym} -260 400 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -260 510 0 0 {name=l2 lab=GND}
C {vsource.sym} -140 610 0 0 {name=Vg2 value="PULSE(0 \{VH\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -140 400 0 0 {name=p6 sig_type=std_logic lab=Vs_M1}
C {gnd.sym} -140 510 0 0 {name=l4 lab=GND}
C {vsource.sym} -140 460 0 0 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -140 550 0 0 {name=p7 sig_type=std_logic lab=Vs_M2}
C {gnd.sym} -140 660 0 0 {name=l5 lab=GND}
C {launcher.sym} -810 530 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {ammeter.sym} 470 330 0 0 {name=V_Iin_DCDC savecurrent=true spice_ignore=0}
C {launcher.sym} -580 530 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_DCDCBuck.raw tran"
}
C {code.sym} -871 341 0 0 {name=IC only_toplevel=false  spice_ignore = true
value="
.ic v(Vo) = 0
*.ic i(x1.L1) = 0
*.ic v(Vc) = 0

"}
C {code.sym} -870 -90 0 0 {name=MODEL only_toplevel=true spice_ignore=false
format="tcleval( @value )"
value="
.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ff
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice sf
*.lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice fs
"}
C {code.sym} -870 50 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

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
C {code.sym} -640 50 0 0 {name=Simulation_Parameters only_toplevel=false 

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
.param TdF = 2n

*Filtro
.param L = Vin/(4*Io*rI*fsw)
.param R = Vo/Io
.param C = rI/(8*rV*R*fsw)

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {lab_pin.sym} -20 -190 0 1 {name=p10 sig_type=std_logic lab=Vdd}
C {ammeter.sym} -20 -160 0 0 {name=V_Igd1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1080 -190 0 0 {name=V_Igd2 savecurrent=true spice_ignore=0}
C {devices/code.sym} -640 200 0 0 {name=Transient_simulation only_toplevel=false spice_ignore=false

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

let Io = i(V_Io)
let Id_M1 = i(V_Iin_DCDC)
let Id_M2 = -i(V_IM2)
let gds_M1 = @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
let gds_M2 = @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]

let Po = Io*v(Vo)
let I_in_DCDC = i(V_Iin_DCDC)
let Pin_DCDC = I_in_DCDC*v(Vdd)
let Vsd_M1 = v(Vdd) - v(Vc)
let Vds_M2 = v(Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let Ron_M1 = Vsd_M1/Id_M1
let Ron_M2 = Vds_M2/Id_M2
*let Ron_M1 = 1/gds_M1
*let Ron_M2 = 1/gds_M2
let P_GD = v(Vdd)*(i(V_Igd1)+i(V_Igd2))
let P_in = P_GD+Pin_DCDC

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

plot Io i(V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po P_in
*plot P_M1 P_M2
plot v(Vc)
plot v(Vg_M1) v(Vg_M2)
plot Ron_M1 Ron_M2
write TB_DCDCBuck.raw
.endc


.end
"}
C {devices/code.sym} -640 350 0 0 {name=Sweep_Load only_toplevel=false spice_ignore=true

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
C {lab_pin.sym} 316 520 0 0 {name=p18 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} 316 560 0 0 {name=p19 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} 844 530 2 0 {name=p20 sig_type=std_logic lab=Vo}
C {gnd.sym} 440 750 0 0 {name=l8 lab=GND}
C {ind.sym} 600 530 3 1 {name=L9
m=1
value=\{L\}
footprint=1206
device=inductor}
C {capa.sym} 670 580 0 0 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 430 530 0 0 {name=p21 sig_type=std_logic lab=Vc}
C {ammeter.sym} 710 530 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {ammeter.sym} 520 530 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {res.sym} 760 570 0 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 470 570 0 1 {name=V_IM2 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 450 650 0 0 {name=M2
W=\{w_M2\}
L=\{l_M2\}
nf=\{ng_M2\}
mult=\{mult_M2\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 450 450 0 0 {name=M1
W=\{w_M1\}
L=\{l_M1\}
nf=\{ng_M1\}
mult=\{mult_M1\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1080 -220 0 1 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -370 40 0 0 {name=p9 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} 570 40 0 1 {name=p12 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} 730 40 0 0 {name=p13 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} 170 -10 0 0 {name=p15 sig_type=std_logic lab=Vg3}
C {ammeter.sym} 90 40 3 0 {name=VIg5 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 30 110 0 0 {name=M5
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 30 -60 0 0 {name=M6
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_3*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 200 -60 0 0 {name=M3
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_4*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 200 110 0 0 {name=M4
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_4\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 310 -10 0 0 {name=p16 sig_type=std_logic lab=Vg4}
C {sky130_fd_pr/pfet_01v8.sym} 340 -60 0 0 {name=M7
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_5*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 340 110 0 0 {name=M20
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_5\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 460 -10 0 0 {name=p17 sig_type=std_logic lab=Vg5}
C {sky130_fd_pr/pfet_01v8.sym} 490 -60 0 0 {name=M21
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_6*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 490 110 0 0 {name=M22
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_6\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 100 270 0 0 {name=l3 lab=GND
value=\{VH\}}
C {lab_pin.sym} -160 -10 0 0 {name=p26 sig_type=std_logic lab=Vg1}
C {ammeter.sym} -240 40 3 0 {name=VIg6 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} -300 110 0 0 {name=M23
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_1\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -300 -60 0 0 {name=M24
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_1*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -130 -60 0 0 {name=M25
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multP_2*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -130 110 0 0 {name=M26
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multP_2\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -10 -10 0 0 {name=p28 sig_type=std_logic lab=Vg2}
C {lab_pin.sym} 1670 40 0 1 {name=p29 sig_type=std_logic lab=Vg_M2}
C {ammeter.sym} 1190 40 3 0 {name=VIg7 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 1130 110 0 0 {name=M8
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1130 -60 0 0 {name=M9
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_3*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1300 -60 0 0 {name=M10
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_4*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1300 110 0 0 {name=M11
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_4\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -60 0 0 {name=M43
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_5*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1440 110 0 0 {name=M44
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_5\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1590 -60 0 0 {name=M45
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_6*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1590 110 0 0 {name=M46
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_6\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1200 270 0 0 {name=l6 lab=GND
value=\{VH\}}
C {ammeter.sym} 860 40 3 0 {name=VIg8 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 800 110 0 0 {name=M47
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_1\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 800 -60 0 0 {name=M48
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_1*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 970 -60 0 0 {name=M49
W=\{w_DP\}
L=\{l_D\}
nf=1
mult=\{multN_2*3\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 970 110 0 0 {name=M50
W=\{w_DN\}
L=\{l_D\}
nf=1
mult=\{multN_2\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {code.sym} -870 200 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

.param multP_1 = 1
.param multP_2 = 10
.param multP_3 = 30
.param multP_4 = 250
.param multP_5 = 250
.param multP_6 = 250

.param multN_1 = 1
.param multN_2 = 10
.param multN_3 = 30
.param multN_4 = 250
.param multN_5 = 250
.param multN_6 = 250

.param l_D = 0.15
.param w_DN = 0.42
.param w_DP = 0.42



"}
