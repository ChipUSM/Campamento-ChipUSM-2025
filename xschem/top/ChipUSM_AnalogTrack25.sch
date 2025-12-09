v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -3560 -2100 -3560 -1600 {}
L 4 -4480 -1600 -2800 -1600 {}
L 4 -4480 -1530 -2800 -1530 {}
L 4 -3560 -2100 -2860 -2100 {}
L 4 -2800 -1600 -2300 -1600 {}
L 4 -2800 -1530 -2300 -1530 {}
L 4 -3800 -1260 -3230 -1260 {}
L 4 -4480 -1260 -3800 -1260 {}
L 4 -3230 -1260 -2370 -1260 {}
L 4 -2370 -1260 -2300 -1260 {}
L 4 -4480 -1600 -4480 -1260 {}
L 4 -4100 -1600 -4100 -1260 {}
L 4 -3800 -1600 -3800 -1260 {}
L 4 -3230 -1600 -3230 -1260 {}
L 4 -2660 -1600 -2660 -1260 {}
L 4 -2300 -1600 -2300 -1260 {}
L 4 -2860 -2100 -2860 -1600 {}
L 4 -4480 -2100 -4480 -1600 {}
L 4 -4480 -2100 -3560 -2100 {}
T {Info/Instrucciones} -3530 -2090 0 0 0.8 0.8 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -3540 -2020 0 0 0.4 0.4 {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -3540 -1800 0 0 0.4 0.4 {}
T {MOSFET Charact.} -4470 -1590 0 0 0.8 0.8 {}
T {Power Stage} -4080 -1590 0 0 0.8 0.8 {}
T {Driving Stage} -3660 -1590 0 0 0.8 0.8 {}
T {Control Stage} -3080 -1590 0 0 0.8 0.8 {}
T {Close-Loop Sim} -2640 -1590 0 0 0.8 0.8 {}
T {Campamento ChipUSM 2025
 - Track Analogo} -4460 -2090 0 0 0.8 0.8 {}
T {Resumen de lo que se hara...
} -4460 -1960 0 0 0.4 0.4 {}
T {Especificaciones 
de diseño:

 } -2830 -2090 0 0 0.8 0.8 {}
T {- Vo = 1.2 [V]
- Io = 1 [A]
- Po = 1.2 [W]
- fsw = 5 [MHz] => Justificar.} -2840 -1970 0 0 0.4 0.4 {}
C {title.sym} -4280 -1200 0 0 {name=l1 author="Andrés Martínez"}
C {../DCDCBuck/TB_hvPMOS_charact.sym} -4260 -1490 0 0 {name=X0}
C {../DCDCBuck/TB_hvNMOS_charact.sym} -4260 -1440 0 0 {name=X1}
C {../DCDCBuck/TB_hvMOS_POWER_Sizing.sym} -3930 -1420 0 0 {name=X2}
C {code.sym} -3550 -1730 0 0 {name=MODEL only_toplevel=true
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
C {../DCDCBuck/TB_hvMOS_switch_test.sym} -3930 -1270 0 0 {name=X3}
C {../DCDCBuck/TB_DCDCBuck.sym} -3930 -1220 0 0 {name=x5}
C {../DCDCBuck/TB_hvNMOS_cgate_ext.sym} -3630 -1490 0 0 {name=X4}
C {../DCDCBuck/TB_hvPMOS_cgate_ext.sym} -3630 -1440 0 0 {name=X6}
C {../GD/TB_GateDriver.sym} -3630 -1320 0 0 {name=X7}
C {../GD/TB_GateDriver_hvMOS.sym} -3630 -1270 0 0 {name=X8}
C {../GD/TB_DCDCBuck_GD.sym} -3630 -1220 0 0 {name=X9}
C {../DigitalGates/TB_AND.sym} -3070 -1420 0 0 {name=X10}
C {../DigitalGates/TB_NOR.sym} -3360 -1420 0 0 {name=X11}
C {../DigitalGates/TB_INV.sym} -3360 -1370 0 0 {name=X12}
C {../NOL/TB_NOL.sym} -3360 -1320 0 0 {name=X13}
C {../NOL/TB_DCDCBuck_GD_NOL_IHP.sym} -3360 -1270 0 0 {name=X14}
C {../PD/TB_PhaseDetector.sym} -3070 -1370 0 0 {name=X15}
C {../PD/TB_DCDCBuck_GD_NOL_PD_IHP.sym} -3070 -1320 0 0 {name=X16}
C {../VCO/TB_VCO_V0.sym} -2790 -1320 0 0 {name=X18}
C {../VCO/TB_VCO_V1.sym} -2790 -1270 0 0 {name=X19}
C {../top/TB_DCDCBuck_CL_IHP.sym} -2480 -1420 0 0 {name=X20}
C {code.sym} -3430 -1730 0 0 {name=Sim_Config only_toplevel=false 

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
C {../VCO/TB_VCO_Design_V0.sym} -2790 -1420 0 0 {name=X17}
C {../VCO/TB_VCO_Design_V1.sym} -2790 -1370 0 0 {name=X21}
C {../Manual_Instrucciones/Manual_Ngspice_Xschem.sym} -3060 -1640 0 0 {name=X22}
C {../Manual_Instrucciones/GuiaDiseño.sym} -3060 -1580 0 0 {name=X23}
C {../DCDCBuck/TB_powerNMOS_cgate_ext.sym} -3930 -1440 0 0 {name=X24}
C {../DCDCBuck/TB_powerPMOS_cgate_ext.sym} -3930 -1390 0 0 {name=X25}
