v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 260 -10 490 -270 {}
L 4 490 -270 940 -270 {}
L 4 940 -270 950 -270 {}
L 4 950 -270 960 -270 {}
L 4 260 -10 960 -270 {}
L 4 960 -670 960 -270 {}
L 4 510 -670 960 -670 {}
L 4 500 -670 530 -670 {}
L 4 490 -670 490 -270 {}
L 4 490 -670 500 -670 {}
L 4 260 -10 490 -670 {}
L 4 1050 -970 1050 930 {}
L 4 1050 930 1050 940 {}
L 4 -480 270 1050 270 {}
L 4 1050 -260 2220 -260 {}
L 4 2220 -260 2230 -260 {}
L 4 2230 -260 2300 -260 {}
L 4 1050 940 1050 1080 {}
P 4 1 880 -440 {}
P 4 5 -480 -970 -480 1080 2300 1080 2300 -970 -480 -970 {}
T {Un esquematico puede tener subcircuitos o transistores. Estos tienen etiquetas los cuales 
se usan para identificar cada MOS o componente tanto en la netlist como para uso en comandos 
empleados en el script. Vease el inversor con la etiqueta X3:
} -400 -920 0 0 0.55 0.55 {}
T {Dentro del simbolo estaran los dos transistores del sub-circuito: M1 y M2.
Si se toman estos transistores en el "top" o primera capa del esquematico,
su etiqueta identificadora en ihp-sg13g2 es la siguiente:

- @n.xm1.nsg13_lv_pmos para el PMOS
- @n.xm2.nsg13_lv_nmos para el NMOS

Para identificar en ihp, se comienza con @n , que tipicamente se usa para 
nodos (en SKY u otras tecnologias se usa @m que es para transistores).

Luego viene "xm1" (la x viene del spiceprefix)  que seria para indicar el 
nombre del componente, si uno le cambiase el nombre, como el transistor 
"roberto" entonces su etiqueta seria:
 
- @n.xroberto.nsg13_lv_nmos

Finalmente se indica el modelo del componente que en este caso seria 
nsg13__lv_pmos o nmos.

} 1110 -780 0 0 0.4 0.4 {}
T {Si se ignoran los transistores en la caja, entonces los componentes NO
se encuentran en el top, sino que en un subcircuito. Esto no cambiara
mucho a la hora de llamar a los transistores. Como estan dentro de "X3"
entonces su handle para llamarlos son:

- @n.x3.xm1.nsg13_lv_pmos
- @n.x3.xm2.nsg13_lv_nmos

Como se puede ver, se anota en el orden de jerarquia hasta llegar al 
componente de interes. Si se le quiere cambiar de nombre, este debe
partir con "x", tal como "x_Middle"

Tambien se puede llamar a nodos dentro de un
subcircuito, misma logica pero solo hay que poner hasta el nombre del 
nodo. En un subcircuito, si un nodo es una salida o entrada, su 
identificador sera el nombre visto en la capa externa. 
(El nodo de salida en X1 no se llamaria x1.Vout sino que V_1st simplemente) } -360 470 0 0 0.5 0.5 {}
T {Uso de comandos SAVE y LET en transistores:} -490 -1130 0 0 2 2 {}
T {Script de ejemplo:} 1110 -240 0 0 1 1 {}
T {Transistores en el "TOP"} 1100 -900 0 0 1 1 {}
T {Transistores dentro de un sub-circuito/simbolo} -360 300 0 0 1 1 {}
T {Transistores en TOP serian estos:} 500 -710 0 0 0.55 0.55 {}
T {En cada uno de estos simbolos
hay transistores} -200 -150 0 0 0.55 0.55 {}
N -350 -50 -350 -30 { lab=GND}
N -350 -160 -350 -110 { lab=VDD}
N -350 170 -350 190 { lab=GND}
N -350 60 -350 110 { lab=VSS}
N -60 0 30 0 {lab=V_1st}
N 110 0 220 0 {lab=V_2nd}
N -100 -60 -100 -20 {lab=VDD}
N -100 -60 70 -60 {lab=VDD}
N 70 -60 70 -20 {lab=VDD}
N 70 -60 260 -60 {lab=VDD}
N 260 -60 260 -20 {lab=VDD}
N -100 70 70 70 {lab=VSS}
N 70 70 260 70 {lab=VSS}
N 70 20 70 70 {lab=VSS}
N 300 0 340 0 {lab=V_3rd}
N 260 20 260 70 {lab=VSS}
N 340 0 340 100 {lab=V_3rd}
N -100 20 -100 70 {lab=VSS}
N -180 0 -180 100 {lab=V_3rd}
N -180 0 -140 0 {lab=V_3rd}
N -180 100 340 100 {lab=V_3rd}
N 680 -520 720 -520 { lab=V_2nd}
N 680 -470 680 -410 { lab=V_2nd}
N 680 -410 720 -410 { lab=V_2nd}
N 760 -470 760 -440 { lab=Vinv}
N 760 -570 760 -550 { lab=VDD}
N 620 -470 680 -470 { lab=V_2nd}
N 760 -520 790 -520 { lab=VDD}
N 790 -570 790 -520 { lab=VDD}
N 760 -570 790 -570 { lab=VDD}
N 760 -410 790 -410 { lab=VSS}
N 790 -410 790 -360 { lab=VSS}
N 760 -360 790 -360 { lab=VSS}
N 760 -380 760 -360 { lab=VSS}
N 760 -360 760 -330 { lab=VSS}
N 760 -470 820 -470 { lab=Vinv}
N 680 -520 680 -470 { lab=V_2nd}
N 760 -600 760 -570 { lab=VDD}
N 760 -490 760 -470 { lab=Vinv}
C {devices/code_shown.sym} 1110 -150 0 0 {name=SPICE only_toplevel=false spice_ignore = 0 value="
.param VDD = 1.8
.ic v(SENS_IN) = 0
.OPTION CSHUNT=0.05e-12
.save all
.OPTION ABSTOL=1e-15.
*.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
*.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5
.options acct


.control

*Ejemplos de un par de saves (PUEDEN PONERSE ANTES O DESPUES DEL .CONTROL, PERO ANTES DEL "tran/dc/ac")

save @n.xroberto1_nsg13_lv_nmos[vth]
save @n.xm1_nsg13_lv_pmos[vth]


save @n.x3.xm2.nsg13_lv_nmos[ids]
save @n.x3.xm1.nsg13_lv_pmos[ids]

save @n.x_Middle.xm2.nsg13_lv_nmos[gds]
save @n.x_Middle.xm1.nsg13_lv_pmos[gds]

tran 0.01n 50n 

*comandos para medir tiempo de simulacion
rusage time totalcputime
rusage everything > sim_stats.log

*El save por si solo guarda el valor en el punto de operacion calculado, pero no su transiente. para aquello,
*se declara una variable nueva DESPUES del comando tran/ac/dc para guardar sus variaciones. El comando es "let" 
*de estructura | let nombre_variable= expresion_matematica | con la expresion siendo cualquier cosa como suma,resta
*multiplo e incluso funciones como sqrt() abs() log() deriv() integ() etc.:

let Vth_NMOS = @n.xroberto1.nsg13_lv_nmos[vth]
let Vth_PMOS = @n.xm1.nsg13_lv_pmos[vth]

let Ids_NMOS = @n.x3.xm2.nsg13_lv_nmos[ids]
let Ids_PMOS = @n.x3.xm1.nsg13_lv_pmos[ids]
let Consumo_acumulado_NMOS = integ(abs(Ids_NMOS))
let Consumo_acumulado_PMOS = integ(abs(Ids_NMOS))

let Gds_M_N = @n.x_middle.xm2.nsg13_lv_nmos[gds]
let Gds_M_P = @n.x_middle.xm1.nsg13_lv_pmos[gds]

*Unos plots para confirmar que todo se guarde bien (incluso si son corrientes o voltajes, variables declaradas NO
*necesitan ir con i(Variable) o v(nodo):

plot Vth_NMOS 
plot Vth_PMOS
plot Ids_NMOS Ids_PMOS
plot Consumo_acumulado_NMOS Consumo_acumulado_PMOS
plot Gds_M_N Gds_M_P


.endc"}
C {devices/code_shown.sym} -380 -600 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
C {devices/vsource.sym} -350 -80 0 0 {name=V1 value=VDD}
C {devices/gnd.sym} -350 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -350 -160 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -350 140 0 0 {name=V2 value=0}
C {devices/gnd.sym} -350 190 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} -350 60 0 0 {name=l24 sig_type=std_logic lab=VSS}
C {../Manual_Instrucciones/simbolos/Simbolo_Support_1.sym} -100 10 0 0 {name=x1 spice_ignore=0}
C {../Manual_Instrucciones/simbolos/Simbolo_Support_1.sym} 260 10 0 0 {name=x3 spice_ignore=0}
C {devices/lab_pin.sym} 260 -60 2 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 70 2 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 0 1 0 {name=p8 sig_type=std_logic lab=V_1st}
C {devices/lab_pin.sym} 340 0 1 0 {name=p10 sig_type=std_logic lab=V_3rd}
C {devices/lab_pin.sym} 760 -600 3 1 {name=p2 lab=VDD}
C {devices/lab_pin.sym} 760 -330 1 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 820 -470 0 1 {name=p5 lab=Vinv}
C {sg13g2_pr/sg13_lv_pmos.sym} 740 -520 0 0 {name=M1
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1730 -660 0 0 {name=M2
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -410 0 0 {name=Roberto1
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {../Manual_Instrucciones/Simbolos/Simbolo_Support_1.sym} 70 10 0 0 {name=x_Middle spice_ignore=o}
C {devices/lab_pin.sym} 170 0 1 0 {name=p1 sig_type=std_logic lab=V_2nd}
C {devices/lab_pin.sym} 620 -470 0 0 {name=p3 sig_type=std_logic lab=V_2nd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1460 -420 0 0 {name=Roberto
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} 1230 1000 0 0 {name=l4 author="Felipe Illanes"}
