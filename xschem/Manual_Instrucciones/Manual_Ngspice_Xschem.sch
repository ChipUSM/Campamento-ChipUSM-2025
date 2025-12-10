v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -5180 -1600 -5180 -1100 {}
L 4 -5180 -1600 -4480 -1600 {}
T {Manual Ngspice/Xschem} -5150 -1590 0 0 0.8 0.8 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -5160 -1510 0 0 0.4 0.4 {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -5160 -1300 0 0 0.4 0.4 {}
C {title.sym} -5040 -1010 0 0 {name=l1 author="Andrés Martínez"}
C {code.sym} -5170 -1220 0 0 {name=MODEL only_toplevel=true
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
C {code.sym} -5050 -1220 0 0 {name=Sim_Config only_toplevel=false 

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
.option cshunt=1e-13
"}
C {../Manual_Instrucciones/Guia_Save&let.sym} -4400 -1230 0 0 {name=x2}
C {../Manual_Instrucciones/Guia_meas&math.sym} -4400 -1190 0 0 {name=x3}
C {../Manual_Instrucciones/Guia_plotting.sym} -4390 -1120 0 0 {name=x4}
