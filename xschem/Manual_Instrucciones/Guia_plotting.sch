v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 300 -1000 300 900 {}
L 4 300 900 300 910 {}
L 4 -1230 240 300 240 {}
L 4 300 910 300 1050 {}
L 4 -70 -290 10 -290 {}
L 4 -0 -310 20 -290 {}
L 4 0 -270 20 -290 {}
L 4 -70 -90 10 -90 {}
L 4 0 -110 20 -90 {}
L 4 0 -70 20 -90 {}
L 4 -70 80 10 80 {}
L 4 0 60 20 80 {}
L 4 0 100 20 80 {}
P 4 1 -1220 -990 {}
P 4 7 -1230 -1000 -1230 1050 300 1050 300 -80 1200 -80 1200 -1000 -1230 -1000 {}
T {La simulacion transiente si soporta graficos X-Y, pero al existir
ruido e inconsistencias (visible especialmente en circuitos como 
osciladores) habran muchas trazas de ligeramente distinto valor.

El analisis DC por defecto usara graficos X-Y, si no se declara 
que variable sera el eje X (uso de [vs] en el plot cmd) entonces
este eje sera la variable que se uso para instancias el analisis.

Para simular en AC es necesario que por lo menos una fuente de voltaje 
o corriente tenga en su argumento "ac=###" (tipicamente ac=1) para poder
correr. Ademas se debe usar vdb(Variable) 

Para el uso de [xlabel] e [ylabel] en scrip NO es posible usar espacios,
esto requiere el uso de comillas que rompen el script. en la consola si
es posible ponerlos. En script se pondria "esta_variable" y en consola 
puedes "esta variable"

Si se desea poner multiples curvas en un plot, han de tener valores en 
ordenes de magnitud similares, sino el de valores mas pequeños lucira
como una linea plana. Esto sucede con multiples curvas de misma unidad
o tambien de distinta (Volts con uA no podra mostrar los micro-amperes).
Se puede resolver multiplicando o dividiendo las unidades
(Volts con uA se pueden ver si se multiplica los uA*1000 se podran ver)

Analisis AC solo puede usar variables que sean fasores, variables de 
MOSFETS son escalares que se obtienen con el Bias-point/punto de op.
Solo se pueden ver corrientes con un Ammeter o con la corriente de 
alguna fuente. Impedancias se deben hacer con la definicion: 
			Z(s) = V(s)/I(s)
} 350 -870 0 0 0.4 0.4 {}
T {Existe una gran variedad de parametros para modificar como luce y se
comporta un grafico/plot. Algunas de las keyword mas utiles son:
(si algo esta en corchetes al usar el comando no se ponen)

	- vs : se emplea para cambiar el eje x del grafico, la forma
	  es [Var_y vs Var_x]

	- Limites de eje: Re-definen/modifican el rango que se muestra 
	  cierta variable del plot [xlimit min max] o [ylimit min max]

	- Conversion eje a logaritmo: Si al cmd plot se le añade [xlog]
	  o [ylog] dicho eje se pasa a logaritmico. [loglog] hace ambas.

	- Etiqueta de eje: Si se añade [xlabel TEXTO] o [ylabel TEXTO]
	  aparecera en el plot ese texto en el eje escogido. 

	- En un grafico X-Y, si la variable no es monotona (solo incrementa
	  o solo decrece) entonces es necesario poner [retraceplot] en el
	  cmd para que soporte dicha forma. (La consola avisara cuando esto
	  sea necesario.)
} -1110 380 0 0 0.5 0.5 {}
T {Consideraciones Varias:} 350 -950 0 0 1 1 {}
T {Parametros de configuracion de un plot:} -1110 270 0 0 1 1 {}
T {NGSpice es capaz de guardar una variedad de variables, en muchos contextos es necesario 
poder graficarlos tal de extraer la informacion que se necesita. Algunas de las variables son:
- Corrientes [A]  - Voltajes [V]  - Resistividad [Ohm] -Transconductancias [Mho]  
- Capacitancias [F]  - Inductancias [H] 
} -1130 -940 0 0 0.55 0.55 {}
T {Uso de comando plot para graficar:
} -1220 -1150 0 0 2 2 {}
T {Aparte de los distintos tipos de variables, tambien hay 
differentes clases de plot. Cambia "spice_ignore " para 
elegir que simulacion usar

Una simulacion transiente se usa para cualquier grafico tipo X vs Tiempo.





La simulacion DC es preferible para generar graficos X-Y




Simulaciones tipo AC permiten generar graficos X vs Frequencia.

(SALDRAN VARIOS PLOTS POR ANALISIS, GUIARSE CON EL SCRIPT Y LOS
TITULOS DE PESTAÑA PARA IDENTIFICAR CUAL ES EL PROPOSITO DE CADA
UNO)

} -1150 -440 0 0 0.55 0.55 {}
T {PULSE(VL VH TD TR TF PW PER PHASE) 
} -630 -520 0 0 0.4 0.4 {}
N -400 -700 -380 -700 { lab=GND}
N -510 -700 -460 -700 { lab=VDD}
N -400 -630 -380 -630 { lab=GND}
N -510 -630 -460 -630 { lab=VSS}
N -90 -680 10 -680 {lab=OUT}
N -130 -740 -130 -700 {lab=VDD}
N -130 -660 -130 -610 {lab=VSS}
N -210 -680 -170 -680 {lab=Vin}
N -620 -640 -620 -620 { lab=GND}
N 100 -620 100 -610 {lab=VSS}
N -620 -720 -620 -700 {lab=Vin}
N 70 -680 100 -680 {lab=#net1}
C {title.sym} -950 1120 0 0 {name=l4 author="Felipe Illanes"}
C {devices/code_shown.sym} -1140 -720 0 0 {name=MODEL2 only_toplevel=true
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
C {devices/vsource.sym} -430 -700 3 1 {name=V3 value=1.2}
C {devices/gnd.sym} -380 -700 3 1 {name=l5 lab=GND}
C {devices/lab_pin.sym} -510 -700 2 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -430 -630 3 1 {name=V4 value=0}
C {devices/gnd.sym} -380 -630 3 1 {name=l8 lab=GND}
C {devices/lab_pin.sym} -510 -630 2 1 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -130 -740 1 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 -610 3 0 {name=l11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -620 -670 0 1 {name=Vinput1 value= "dc = 0.6 ac = 1 sine(0.6 0.6 1e06)"}
C {devices/lab_pin.sym} -620 -720 0 1 {name=l12 sig_type=std_logic lab=Vin
}
C {devices/gnd.sym} -620 -620 0 1 {name=l13 lab=GND}
C {devices/lab_pin.sym} -210 -680 0 0 {name=l14 sig_type=std_logic lab=Vin
}
C {capa.sym} 100 -650 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 100 -610 3 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/code.sym} 90 -330 0 0 {name=TRANSIENT only_toplevel=false spice_ignore = 1
value="

.control
save @n.x1.xm2.nsg13_lv_nmos[gds]
save all
tran 0.1n 10u 0.1n
let gds_tst = @n.x1.xm2.nsg13_lv_nmos[gds]
let rds_tst = 1/gds_tst
*plot mas simple, se puede añadir multiples trazas facilmente

plot v(OUT) v(Vin)

*plot con escala logaritmica en eje Y con escala regular para comparar

plot rds_tst ylog ylabel Resistencia_logaritmica
plot rds_tst ylabel Resistencia_escala_normal


.endc

 
.end
"}
C {devices/code.sym} 90 30 0 0 {name=FOURIER only_toplevel=false spice_ignore =1
value="

.control
save all
save @n.x1.xm2.nsg13_lv_nmos[gds]
save @n.x1.xm2.nsg13_lv_nmos[vds]
save @n.x1.xm2.nsg13_lv_nmos[ids]
sava i(V_I_load)

AC dec 10000 10 10000000

*VARIABLES DE PUNTO DE OPERACION NO SERVIRAN (EJEMPLOS)
let gds_tst = @n.x1.xm2.nsg13_lv_nmos[gds]
let vds_tst = @n.x1.xm2.nsg13_lv_nmos[vds]
let ids_tst = @n.x1.xm2.nsg13_lv_nmos[ids]
let res_tst = 1/gds_tst
let Z_funcional = out/i(V_I_load)

*PLOT BASICO DE MAGNITUD EN LA SALIDA. USANDO [ db() ] TAMBIEN SIRVE.

plot vdb(OUT) title Plot_Normal

*PLOTS DE VARIABLES QUE NO SON VOLTAJE HAN DE USAR [ db() ] SINO NO APARECEN

plot db(i(V_I_load)) vdb(i(V_I_load)) ylabel Solo_sale_la_traza_con_db() title Uso_Variable_No_V

*PLOTS DE OP POINT NO VARIAN CON FRECUENCIA (VARIABLES DE TRANSISTORES)

plot db(gds_tst) db(vds_tst) db(ids_tst) db(res_tst) xlabel Este_Comportamiento_es_esperado title Plot_con_Variable_DC

*SE PUEDE FORZAR QUE UN GRAFICO MUESTRE ESCALA LINEAL CON [linear]

plot db(Z_funcional) xlabel Caso_Escala_Logaritmica title Grafico_Escala_Log_Default
plot db(Z_funcional) xlabel Caso_Escala_Uniforme linear title Grafico_Escala_Uniforme
.endc


"}
C {devices/code.sym} 90 -150 0 0 {name=DC only_toplevel=false spice_ignore = 1
value="

.control
save @n.x1.xm2.nsg13_lv_nmos[vds]
save @n.x1.xm2.nsg13_lv_nmos[ids]

save all

DC Vinput1 0 1.2 0.0001

setplot

setplot dc1

let vds_tst = @n.x1.xm2.nsg13_lv_nmos[vds]
let ids_tst = @n.x1.xm2.nsg13_lv_nmos[ids]

*plot declarando eje x
plot v(OUT) vs v(VIN) title Especificando_Eje_X

*PLOT SIN DECLARAR EJE X (default Vinput1 por declaracion)

plot out title Usando_eje_x_definido

*Plot x-y de variables param de MOSFET (curva caracteristica ids vs vds)
plot ids_tst*100000 vds_tst title Escala_normal_MOS_param
plot ids_tst ylog title Escala_Log_MOS_param

*Plot X-Y de variable con eje x diferente + labels
plot ids_tst vs vds_tst xlabel Caida_de_tension_en_canal ylabel Corriente_al_capacitor title Eje_x_no_default


*LOS MEAS OPERAN RECOPILANDO TODOS LOS OP. POINTS OBTENIDOS CON EL ANALISIS DC
meas dc Average AVG v(OUT)     
meas dc RMS RMS v(OUT)
meas dc INT INTEG v(OUT)      
.endc


.end
"}
C {devices/lab_pin.sym} -30 -680 1 0 {name=l1 sig_type=std_logic lab=OUT
}
C {../Manual_Instrucciones/simbolos/Simbolo_Support_1.sym} -130 -670 0 0 {name=x1}
C {devices/vsource.sym} -760 -750 0 1 {name=Vinput2 value= "dc = 1 ac = 1 pulse(0 1.2 0 100n 100n 500n 1u)" spice_ignore =1}
C {ammeter.sym} 40 -680 3 0 {name=V_I_load savecurrent=true spice_ignore=0}
