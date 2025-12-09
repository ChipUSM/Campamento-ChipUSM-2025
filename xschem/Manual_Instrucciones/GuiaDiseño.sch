v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -5180 -1040 -5180 -520 {}
L 4 -5180 -1040 -3800 -1040 {}
L 4 -3800 -1040 -3800 -470 {}
L 4 -3800 -1040 -2710 -1040 {}
L 4 -3280 -1040 -3280 -460 {}
L 4 -5180 -970 -2710 -970 {}
T {Diseño power stage} -5160 -1030 0 0 0.8 0.8 {}
T {Ecuaciones} -4660 -1030 0 0 0.8 0.8 {}
T {- d = Vo/Vin. => Como la señal de disparo VgM1 es el negado de VsdM1, d*=1-d.
- R=Vo/Io, C= (rI)/(8*rV*R*fsw), L = Vs/(4*Io*rI*fsw)} -4680 -940 0 0 0.4 0.4 {}
T {Specificaciones de diseño:
- fsw = 10mHz
- Vo = 1.2 V
- Io = 1 A
- rI = 0.3 , rV = 0.1
- eff>90%
- Area = 1mm²

Metodologia de diseño:
1) Definir W/L para unidad de transistor PMOS y NMOS minimo => Ron minimo 
-- (TB_hvPMOS_charact y TB_hvNMOS_charact)
2) Dimensionar cantidad de transistores necesaria (cambiar solo parametro mult, W/L dejarlo fijo) 
para cumplir con la corriente pedida y un Vds<<1 -- (TB_hvMOS_POWER_Sizing)
3) Configurar señales de disparo en (TB_hvMOS_switch_test) para setear nueva fsw => Modificar param T,TdR,TdF. 
4) Calcular parametros del convertidor Buck, d,R,L,C. Usar rv=0.1 y ri=0.3. => Configurar simulacion (TB_DCDCBuck)
5) Ajuste manual de L y C. Luego ajuste de tiempos muertos => Revisar formas de onda y eficiencia
6) Ajuste manal de cantidad de transistores en caso de tener muchas perdidas hasta tener eff>90%,
 luego ajuste de d para alcanzar Vo requerido.
7) Analizar perdidas y contrastar con Ron de M1 y M2.
} -5150 -960 0 0 0.4 0.4 {}
T {Diseño Driving stage} -3770 -1030 0 0 0.8 0.8 {}
T {Diseño Control stage} -3180 -1030 0 0 0.8 0.8 {}
C {title.sym} -5010 -400 0 0 {name=l1 author="Andrés Martínez"}
