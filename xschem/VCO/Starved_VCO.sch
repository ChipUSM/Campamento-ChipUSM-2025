v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -50 450 -50 {
lab=VDD}
N -310 50 450 50 {
lab=#net1}
N -240 -20 -190 -20 {
lab=V_1}
N -50 -20 0 -20 {
lab=V_2}
N 140 -20 190 -20 {
lab=V_3}
N 330 -20 380 -20 {
lab=V_4}
N -380 -100 -380 -20 {
lab=V_5}
N -380 -100 520 -100 {
lab=V_5}
N 520 -100 520 -20 {
lab=V_5}
C {devices/lab_pin.sym} -280 -50 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -280 30 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -220 -20 1 0 {name=p2 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} -30 -20 1 0 {name=p3 sig_type=std_logic lab=V_2}
C {devices/lab_pin.sym} 160 -20 1 0 {name=p4 sig_type=std_logic lab=V_3}
C {devices/lab_pin.sym} 350 -20 1 0 {name=p5 sig_type=std_logic lab=V_4}
C {devices/lab_pin.sym} 520 -100 1 0 {name=p6 sig_type=std_logic lab=V_5}
C {devices/ipin.sym} -440 -260 0 0 {name=p7 lab=VCP}
C {devices/iopin.sym} -325 -160 3 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -275 -210 1 0 {name=p9 lab=VSS}
C {devices/opin.sym} -220 -170 0 0 {name=p10 lab=V_1}
C {devices/opin.sym} -220 -140 0 0 {name=p11 lab=V_2}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} -310 -10 0 0 {name=x1}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} -120 -10 0 0 {name=x2}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} 70 -10 0 0 {name=x3}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} 260 -10 0 0 {name=x4}
C {/workspaces/usm-vlsi-tools/shared_xserver/simulations/SKY130/IPD500-TimebasedDCDCBuck/VCO/stage_starved.sym} 450 -10 0 0 {name=x5}
C {devices/ipin.sym} -440 -200 0 0 {name=p12 lab=VCN}
C {devices/lab_pin.sym} -380 0 2 1 {name=p1 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} -380 20 2 1 {name=p15 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} -190 0 2 1 {name=p16 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} -190 20 2 1 {name=p17 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 0 0 2 1 {name=p18 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 0 20 2 1 {name=p19 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 190 0 2 1 {name=p20 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 190 20 2 1 {name=p21 sig_type=std_logic lab=VCN}
C {devices/lab_pin.sym} 380 0 2 1 {name=p22 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 380 20 2 1 {name=p23 sig_type=std_logic lab=VCN}
