v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -3600 -2100 -3600 -1600 {}
L 4 -4180 -1600 -2500 -1600 {}
L 4 -4180 -1530 -2500 -1530 {}
L 4 -3560 -2100 -2860 -2100 {}
L 4 -2500 -1600 -2000 -1600 {}
L 4 -2500 -1530 -2000 -1530 {}
L 4 -3500 -1260 -2930 -1260 {}
L 4 -4180 -1260 -3500 -1260 {}
L 4 -2930 -1260 -2070 -1260 {}
L 4 -2070 -1260 -2000 -1260 {}
L 4 -4480 -1600 -4480 -1260 {}
L 4 -3800 -1600 -3800 -1260 {}
L 4 -3500 -1600 -3500 -1260 {}
L 4 -2930 -1600 -2930 -1260 {}
L 4 -2360 -1600 -2360 -1260 {}
L 4 -2000 -1600 -2000 -1260 {}
L 4 -2860 -2100 -2860 -1600 {}
L 4 -4840 -2100 -4840 -1600 {}
L 4 -4840 -1600 -4480 -1600 {}
L 4 -4840 -1530 -4480 -1530 {}
L 4 -4840 -1600 -4840 -1260 {}
L 4 -4840 -1260 -4475 -1260 {}
L 4 -4840 -2100 -3560 -2100 {}
L 4 -4480 -1600 -4180 -1600 {}
L 4 -4480 -1530 -4180 -1530 {}
L 4 -4470 -1260 -4180 -1260 {}
L 4 -4490 -1260 -4470 -1260 {}
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
T {MOSFET Charact.} -4320 -1590 0 0 0.8 0.8 {}
T {Power Stage} -3780 -1590 0 0 0.8 0.8 {}
T {Driving Stage} -3360 -1590 0 0 0.8 0.8 {}
T {Control Stage} -2780 -1590 0 0 0.8 0.8 {}
T {Close-Loop Sim} -2340 -1590 0 0 0.8 0.8 {}
T {Campamento ChipUSM 2025
 - Track Analogo} -4805 -2060 0 0 0.8 0.8 {}
T {En esta tercera edición del Campamento ChipUSM, partícularmente en el track Análogo, se atenderán los
fundamentos de los dispositivos semiconductores así como una aplicación en particular de estos.

Se estudiarán los siguientes tópicos en orden crónologico: Fundamentos de dispositivos semiconductores;
Implementación básica en compuertas lógicas; Curvas Caracteristicas de transistores CMOS; 
Efectos de componentes paŕasitos; Módulos de un convertidor DC-DC tipo buck; Elección personal de
un módulo a diseñar; Design Review} -4770 -1930 0 0 0.4 0.4 {}
T {Especificaciones 
de diseño:

 } -2830 -2090 0 0 0.8 0.8 {}
T {- Vo = 1.2 [V]
- Io = 1 [A]
- Po = 1.2 [W]
- fsw = 5 [MHz] => Justificar.} -2840 -1970 0 0 0.4 0.4 {}
T {Logic Gates} -4785 -1590 0 0 0.8 0.8 {}
C {title.sym} -4280 -1200 0 0 {name=l1 author="Andrés Martínez"}
C {../DCDCBuck/TB_hvPMOS_charact.sym} -4320 -1490 0 0 {name=X0}
C {../DCDCBuck/TB_hvNMOS_charact.sym} -4320 -1440 0 0 {name=X1}
C {../DCDCBuck/TB_hvMOS_POWER_Sizing.sym} -3645 -1420 0 0 {name=X2}
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
C {../DCDCBuck/TB_hvNMOS_cgate_ext.sym} -3645 -1440 0 0 {name=X4}
C {../DCDCBuck/TB_hvPMOS_cgate_ext.sym} -3645 -1390 0 0 {name=X6}
C {../GD/TB_DCDCBuck_GD.sym} -3340 -1220 0 0 {name=X9}
C {../NOL/TB_NOL.sym} -3070 -1320 0 0 {name=X13}
C {../PD/TB_PhaseDetector.sym} -2775 -1370 0 0 {name=X15}
C {../top/TB_DCDCBuck_CL_IHP.sym} -2180 -1420 0 0 {name=X20}
C {../DCDCBuck/TB_hvMOS_switch_test.sym} -3645 -1270 0 0 {name=X3}
C {../DCDCBuck/TB_DCDCBuck.sym} -3645 -1220 0 0 {name=x5}
C {../GD/TB_GateDriver.sym} -3340 -1320 0 0 {name=X7}
C {../GD/TB_GateDriver_hvMOS.sym} -3340 -1270 0 0 {name=X8}
C {../PD/TB_DCDCBuck_GD_NOL_PD_IHP.sym} -3070 -1270 0 0 {name=X16}
C {../VCO/TB_VCO_V0.sym} -2495 -1370 0 0 {name=X18}
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
C {../VCO/TB_VCO_Design_V0.sym} -2490 -1420 0 0 {name=X17}
C {../Manual_Instrucciones/Manual_Ngspice_Xschem.sym} -3060 -1640 0 0 {name=X22}
C {../Manual_Instrucciones/GuiaDiseño.sym} -3060 -1580 0 0 {name=X23}
C {../LogicGates/DC_NOT.sym} -4690 -1435 0 0 {name=x10}
C {../LogicGates/TRAN_NOT.sym} -4700 -1495 0 0 {name=x11}
C {../LogicGates/TB_NAND.sym} -4700 -1390 0 0 {name=x12}
C {../CMOS_Char/Vds_HvMOS.sym} -4330 -1405 0 0 {name=x24}
C {../CMOS_Char/Vgs_HvMOS.sym} -4360 -1360 0 0 {name=x25}
C {/foss/designs/Campamento-ChipUSM-2025/xschem/LogicGates/TRAN_NOT.sym} -4700 -1495 0 0 {name=x11}
C {../LogicGates/TB_NAND.sym} -4700 -1390 0 0 {name=x12}
C {../DCDCBuck/TB_hvNMOS_cgate_ext.sym} -3340 -1490 0 0 {name=X26}
C {../DCDCBuck/TB_hvPMOS_cgate_ext.sym} -3340 -1440 0 0 {name=X27}
C {../DigitalGates/TB_NOR.sym} -3070 -1420 0 0 {name=X28}
C {../DigitalGates/TB_INV.sym} -3070 -1370 0 0 {name=X29}
C {../DigitalGates/TB_AND.sym} -2775 -1420 0 0 {name=X14}
