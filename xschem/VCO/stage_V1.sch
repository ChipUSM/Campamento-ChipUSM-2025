v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {MP1} 400 -80 0 0 0.3 0.3 {}
T {MP2} 700 -80 0 0 0.3 0.3 {}
T {MN1} 400 140 0 0 0.3 0.3 {}
T {MN2} 670 90 0 0 0.3 0.3 {}
T {MN3} 1170 190 0 0 0.3 0.3 {}
T {MN4} 1190 90 0 0 0.3 0.3 {}
T {MP4} 1180 -60 0 0 0.3 0.3 {}
T {MP3} 1180 -180 0 0 0.3 0.3 {}
N 950 20 990 20 { lab=VIN}
N 950 20 950 130 { lab=VIN}
N 950 130 990 130 { lab=VIN}
N 1030 70 1030 100 { lab=#net1}
N 1030 20 1060 20 { lab=VDD}
N 1030 130 1060 130 { lab=VSS}
N 1060 130 1060 240 { lab=VSS}
N 1030 180 1030 210 { lab=VdsMN3}
N 1030 70 1120 70 { lab=#net1}
N 1030 280 1030 290 {
lab=VSS}
N 1030 -170 1030 -160 {
lab=VDD}
N 1030 -170 1060 -170 {
lab=VDD}
N 1060 -130 1060 20 {
lab=VDD}
N 1030 -130 1060 -130 {
lab=VDD}
N 1030 280 1060 280 {
lab=VSS}
N 1060 240 1060 280 {
lab=VSS}
N 1030 240 1060 240 {
lab=VSS}
N 840 -130 990 -130 {
lab=VCP}
N 780 -170 780 -160 {
lab=VDD}
N 780 -170 1030 -170 {
lab=VDD}
N 810 280 1030 280 {
lab=VSS}
N 780 270 780 280 {
lab=VSS}
N 580 240 740 240 {
lab=#net2}
N 520 280 780 280 {
lab=VSS}
N 520 270 520 280 {
lab=VSS}
N 520 180 520 210 {
lab=#net2}
N 750 -170 780 -170 {
lab=VDD}
N 520 -170 520 -160 {
lab=VDD}
N 580 180 580 240 {
lab=#net2}
N 520 180 580 180 {
lab=#net2}
N 780 -80 840 -80 {
lab=VCP}
N 840 -130 840 -80 {
lab=VCP}
N 450 -130 480 -130 {
lab=VCONT}
N 780 240 810 240 {
lab=VSS}
N 810 240 810 280 {
lab=VSS}
N 740 200 740 240 {
lab=#net2}
N 990 200 990 240 {
lab=#net2}
N 500 240 520 240 {
lab=VSS}
N 500 240 500 280 {
lab=VSS}
N 500 280 520 280 {
lab=VSS}
N 520 -130 550 -130 {
lab=VDD}
N 550 -170 550 -130 {
lab=VDD}
N 750 -130 780 -130 {
lab=VDD}
N 750 -170 750 -130 {
lab=VDD}
N 1030 50 1030 70 { lab=#net1}
N 1030 -180 1030 -170 {
lab=VDD}
N 1060 -170 1060 -130 {
lab=VDD}
N 1030 270 1030 280 {
lab=VSS}
N 560 240 580 240 {
lab=#net2}
N 780 -100 780 -80 {
lab=VCP}
N 820 -130 840 -130 {
lab=VCP}
N 780 280 810 280 {
lab=VSS}
N 520 -170 550 -170 {
lab=VDD}
N 680 -170 750 -170 {
lab=VDD}
N 650 -170 650 -160 {
lab=VDD}
N 650 -130 680 -130 {
lab=VDD}
N 680 -170 680 -130 {
lab=VDD}
N 650 -170 680 -170 {
lab=VDD}
N 550 -170 650 -170 {
lab=VDD}
N 650 -100 650 -70 {
lab=VCN}
N 520 -70 650 -70 {
lab=VCN}
N 520 -100 520 -70 {
lab=VCN}
N 590 -130 610 -130 {
lab=VCONT2}
N 490 70 520 70 {
lab=VCN}
N 520 -70 520 70 {
lab=VCN}
N 520 70 520 90 {
lab=VCN}
N 520 150 520 180 {
lab=#net2}
N 780 -80 780 100 {
lab=VCP}
N 780 160 780 210 {
lab=#net3}
N 740 200 990 200 {
lab=#net2}
N 590 -240 590 -130 {
lab=VCONT2}
N 1030 -100 1030 -80 {
lab=#net4}
N 1030 -20 1030 -10 {
lab=VSMP4}
N 940 -10 1030 -10 {
lab=VSMP4}
N 950 180 1030 180 {
lab=VdsMN3}
N 1030 160 1030 180 { lab=VdsMN3}
N 1180 70 1220 70 {
lab=VOUT}
C {devices/ipin.sym} 590 -240 0 0 {name=p6 lab=VCONT2}
C {devices/ipin.sym} 950 70 0 0 {name=p9 lab=VIN}
C {devices/opin.sym} 1220 70 0 0 {name=p10 lab=VOUT}
C {devices/iopin.sym} 1030 -180 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1030 290 1 0 {name=p12 lab=VSS}
C {devices/ipin.sym} 450 -130 0 0 {name=p13 lab=VCONT}
C {sg13g2_pr/sg13_hv_nmos.sym} 540 240 2 0 {name=MN1
l=\{l_MN1\}
w=\{w_MN1\}
ng=1
m=\{m_MN1\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 760 240 2 1 {name=MN2
l=\{l_MN2\}
w=\{w_MN2\}
ng=1
m=\{m_MN2\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1010 240 2 1 {name=MN3
l=\{l_MN3\}
w=\{w_MN3\}
ng=1
m=\{m_MN3\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 500 -130 0 0 {name=MP1a
l=\{l_MP1a\}
w=\{w_MP1a\}
ng=1
m=\{m_MP1a\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 800 -130 0 1 {name=MP2
l=\{l_MP2\}
w=\{w_MP2\}
ng=1
m=\{m_MP2\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1010 -130 0 0 {name=MP3
l=\{l_MP3\}
w=\{w_MP3\}
ng=1
m=\{m_MP3\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1010 20 0 0 {name=MP7
l=\{l_MP4\}
w=\{w_MP4\}
ng=1
m=\{m_MP4\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1010 130 2 1 {name=MN4
l=\{l_MN4\}
w=\{w_MN4\}
ng=1
m=\{m_MN4\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 630 -130 0 0 {name=MP1b
l=\{l_MP1b\}
w=\{w_MP1b\}
ng=1
m=\{m_MP1b\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 490 70 0 0 {name=p24 sig_type=std_logic lab=VCN}
C {lab_pin.sym} 780 70 0 0 {name=p15 sig_type=std_logic lab=VCP}
C {ammeter.sym} 520 120 0 0 {name=VIcont1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 780 130 0 0 {name=VIcont2 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} 1130 -130 0 0 {name=r6 
node= Vsd_MP3
descr="VsdMP3="}
C {launcher.sym} 200 -200 0 0 {name=h1
descr="Annotate OP" 
*tclcommand="set show_hidden_texts 1; xschem annotate_op"
tclcommand="xschem annotate_op"}
C {ammeter.sym} 1030 -50 0 1 {name=VIcont3 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 940 -10 0 0 {name=p1 sig_type=std_logic lab=VSMP4}
C {lab_pin.sym} 950 180 0 0 {name=p2 sig_type=std_logic lab=VdsMN3}
C {ngspice_get_value.sym} 1130 240 0 0 {name=r1 
node=v(x1.x1.VdsMN3)
descr="VdsMN3="}
C {ngspice_get_value.sym} 890 -140 0 0 {name=r2 
node= VsgMP3
descr="VsgMP3="}
C {ngspice_get_value.sym} 450 0 0 1 {name=r4 
node= Vsd_MP1
descr="VsdMP1="}
C {ngspice_get_value.sym} 450 30 0 1 {name=r5 
node= Vov_MP1a
descr="Vov_MP1a="}
C {ngspice_get_value.sym} 530 -30 0 0 {name=r9 
node= Vov_MP1b
descr="Vov_MP1b="}
C {ngspice_get_value.sym} 450 -30 0 1 {name=r8 
node= Vth_MP1a
descr="Vth_MP1a="}
C {ngspice_get_value.sym} 460 190 0 1 {name=r12 
node= Vth_MN1
descr="Vth_MN1="}
C {ngspice_get_value.sym} 750 -30 0 1 {name=r14 
node= Vth_MP2
descr="Vth_MP2="}
C {ngspice_get_value.sym} 720 170 0 1 {name=r7 
node= v(x1.x1.VCP)
descr="VdsMN2="}
C {ngspice_get_value.sym} 720 200 0 1 {name=r15 
node= Vov_MN2
descr="Vov_MN2="}
C {ngspice_get_value.sym} 720 140 0 1 {name=r16 
node= Vth_MN2
descr="Vth_MN2="}
C {ngspice_get_value.sym} 1130 270 0 0 {name=r3 
node= Vth_MN3
descr="Vth_MN3="}
C {ngspice_get_value.sym} 1200 270 0 0 {name=r10 
node= Ron_MN3
descr="Ron_MN3="}
C {ngspice_get_value.sym} 1200 240 0 0 {name=r11 
node= Vov_MN3
descr="Vov_MN3="}
C {ammeter.sym} 1150 70 3 1 {name=VIcont4 savecurrent=true spice_ignore=0}
C {ngspice_get_value.sym} 1150 140 0 0 {name=r13 
node=Vds_MN4
descr="VdsMN4="}
C {ngspice_get_value.sym} 1150 170 0 0 {name=r17 
node= Vth_MN4
descr="Vth_MN4="}
C {ngspice_get_value.sym} 1220 170 0 0 {name=r18 
node= Ron_MN4
descr="Ron_MN4="}
C {ngspice_get_value.sym} 1220 140 0 0 {name=r19 
node= Vov_MN4
descr="Vov_MN4="}
C {ngspice_get_value.sym} 1200 -100 0 0 {name=r20 
node= Ron_MP3
descr="Ron_MP3="}
C {ngspice_get_value.sym} 1200 -130 0 0 {name=r21 
node= Vov_MP3
descr="Vov_MP3="}
C {ngspice_get_value.sym} 1130 -100 0 0 {name=r22 
node= Vth_MP3
descr="Vth_MP3="}
C {ngspice_get_value.sym} 1130 -10 0 0 {name=r23 
node= VsdMP4
descr="VsdMP4="}
C {ngspice_get_value.sym} 1200 20 0 0 {name=r24 
node= Ron_MP4
descr="Ron_MP4="}
C {ngspice_get_value.sym} 1200 -10 0 0 {name=r25 
node= Vov_MP4
descr="Vov_MP4="}
C {ngspice_get_value.sym} 1130 20 0 0 {name=r26 
node= Vth_MP4
descr="Vth_MP4="}
C {ngspice_get_value.sym} 1270 -130 0 0 {name=r27 
node= M_P
descr="M_P="}
C {ngspice_get_value.sym} 1270 240 0 0 {name=r28 
node= M_N
descr="M_N="}
