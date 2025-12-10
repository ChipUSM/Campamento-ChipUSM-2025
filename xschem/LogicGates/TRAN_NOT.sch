v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -260 -170 130 -170 {}
L 4 130 -340 130 -170 {}
L 4 -260 -340 -260 -170 {}
L 4 -260 -340 130 -340 {}
L 4 -260 0 130 0 {}
L 4 130 -170 130 0 {}
L 4 -260 -170 -260 0 {}
L 4 -260 -170 130 -170 {}
T {Bloque de código correspondiente a
las directrices de simulación
dadas a ngspice, en este se modifica
todo lo relacionado a el guardado de
variables, métodos de simulación, 
gráficos y mediciones} -120 -300 0 0 0.24 0.24 {}
T {Bloque de código correspondiente a
la incorporacion de librerias que
contienen los modelos de los
dispositivos. Estos modelos incluyen
las caracterizaciones hechas a 125°C,
25°C y -40°C} -120 -120 0 0 0.24 0.24 {}
T {FORMATO de Señal PULSE()
PULSE(Voff Von tdelay trise tfall Ton T Ncycles)} -240 -390 0 0 0.24 0.24 {}
N 450 -100 520 -100 {
lab=VOUT}
N 450 -100 450 -80 {
lab=VOUT}
N 450 -20 450 0 {
lab=GND}
N 340 -170 340 -135 {
lab=VDD}
N 340 -65 340 -30 {
lab=GND}
N 250 -100 295 -100 {
lab=VIN}
N 405 -100 450 -100 {lab=VOUT}
C {code.sym} -250 -130 0 0 {name=librerias only_toplevel=true
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
C {devices/code.sym} -250 -300 0 0 {name=Simulacion only_toplevel=false spice_ignore=0

value="


vin VIN 0 PULSE(0 3.3 1ns 0ns 0ns 2ns 4ns)

.control

save all
***********************************************
* SIMULACION DE 10 NANO DE DURACION, CON MEDICIONES CADA 100 PICO
tran 100ps 10ns

**********************************************

plot V(VIN) v(VOUT)

**********************************************
*COMANDOS PARA MEDIR EL TIEMPO DE PROPAGACIÓN DE LA COMPUERTA

meas tran tpLH_in FIND time WHEN v(VIN)=1.65 TD=0 FALL=1
meas tran tpLH_fin FIND time WHEN v(VOUT)=1.65 TD=0 RISE=1
meas tran tpHL_in FIND time WHEN v(VIN)=1.65 TD=0 RISE=1
meas tran tpHL_fin FIND time WHEN v(VOUT)=1.65 TD=0 FALL=1
print tpHL_fin - tpHL_in
print tpLH_fin - tpLH_in
**********************************************
.endc
"
}
C {../LogicGates/NOT.sym} 355 -80 0 0 {name=e}
C {capa-2.sym} 450 -50 0 0 {name=C1
m=1
value=25f
footprint=1206
device=polarized_capacitor}
C {iopin.sym} 520 -100 0 0 {name=p1 lab=VOUT
}
C {vdd.sym} 340 -170 0 0 {name=l1 lab=VDD}
C {gnd.sym} 340 -30 0 0 {name=l2 lab=GND}
C {iopin.sym} 250 -100 0 1 {name=p2 lab=VIN
}
C {vsource.sym} 200 -190 0 0 {name=V1 value=3.3 savecurrent=false}
C {vdd.sym} 200 -220 0 0 {name=l3 lab=VDD}
C {gnd.sym} 200 -160 0 0 {name=l4 lab=GND}
C {gnd.sym} 450 0 0 0 {name=l5 lab=GND}
