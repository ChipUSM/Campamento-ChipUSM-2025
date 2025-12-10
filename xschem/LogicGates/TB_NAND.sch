v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 50 110 80 {lab=GND}
N 0 -20 60 -20 {lab=A}
N 0 20 60 20 {lab=B}
N -100 -30 -100 -10 {lab=Vdd}
N 200 0 240 0 {lab=#net1}
N 240 60 240 90 {lab=GND}
N 240 -30 240 0 {lab=#net1}
N 110 -80 110 -50 {lab=Vdd}
N -360 110 -360 130 {lab=A}
N -40 110 -40 130 {lab=B}
C {code.sym} -410 -60 0 0 {name=Simulacion only_toplevel=false value="

.control
save all

tran 10p 10n
<<<<<<< HEAD

meas tran Propagacion_High_LOW TRIG v(a) VAL=0.6 RISE=2 TARG v(out) VAL=0.6 FALL=1 
=======
>>>>>>> 9f818e612a8fd75db9861bda01bb15e8dad67fe3
plot v(A) v(B) (v(out) + 1.2)
.endc


"}
C {code_shown.sym} -350 -165 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -280 -60 0 0 {name=Parametros only_toplevel=false value="
.param T = 2n
.param Vdd = 1.2
.param W_n = 1u
.param W_p = 1u
"}
C {gnd.sym} 110 80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 0 -20 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 0 20 0 0 {name=p3 sig_type=std_logic lab=B}
C {vsource.sym} -100 20 0 0 {name=V1 value=\{Vdd\} savecurrent=false}
C {gnd.sym} -100 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -100 -30 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {capa.sym} 240 30 0 0 {name=C1
=======
C \{gnd.sym}
C {vsource.sym} -100 20 0 0 {name=V1 value=\{Vdd\} savecurrent=false}
C {gnd.sym} -100 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -100 -30 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {gnd.sym} 240 90 0 0 {name=l3 lab=GND}
C {vsource.sym} -360 160 0 0 {name=V2 value="PULSE(0 \{Vdd\} \{T/2\} \{T/200\} \{T/200\} \{T/2\} \{T\})"
 savecurrent=false}
C {gnd.sym} -360 190 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -360 110 0 0 {name=p6 sig_type=std_logic lab=A}
C {vsource.sym} -40 160 0 0 {name=V3 value="PULSE(0 \{Vdd\} \{T\} \{T/200\} \{T/200\} \{T\} \{2*T\})"
 savecurrent=false}
C {gnd.sym} -40 190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -40 110 0 0 {name=p7 sig_type=std_logic lab=B}
C {/foss/designs/Campamento-ChipUSM-2025/xschem/LogicGates/NAND.sym} 110 0 0 0 {name=x1}
C {lab_pin.sym} 110 -80 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 240 -30 0 0 {name=p5 sig_type=std_logic lab=out}
