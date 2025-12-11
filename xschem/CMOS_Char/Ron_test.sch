v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -160 80 -160 {lab=GND}
N 80 -160 80 -110 {lab=GND}
N 30 -110 80 -110 {lab=GND}
N 30 -130 30 -110 {lab=GND}
N 30 -110 30 -90 {lab=GND}
N -10 -220 -10 -160 {lab=Vg}
N 30 -250 30 -190 {lab=Vd}
N -330 -10 -330 10 {lab=GND}
N -330 -100 -330 -70 {lab=Vg}
N -230 -10 -230 10 {lab=GND}
N -230 -100 -230 -70 {lab=Vd}
C {sg13g2_pr/sg13_hv_nmos.sym} 10 -160 0 0 {name=M1
l=0.45u
w=\{W\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 30 -250 0 0 {name=p5 sig_type=std_logic lab=Vd}
C {lab_pin.sym} -10 -220 0 0 {name=p6 sig_type=std_logic lab=Vg}
C {gnd.sym} 30 -90 0 0 {name=l1 lab=GND}
C {code.sym} -410 -250 0 0 {name=Simulacion only_toplevel=false spice_ignore=true value="

.control
save all
+ @n.xm1.nsg13_hv_nmos[gds]
op
let rds =1/@n.xm1.nsg13_hv_nmos[gds]
print rds
.endc
"}
C {vsource.sym} -330 -40 0 0 {name=Vg value=3.3 savecurrent=false}
C {vsource.sym} -230 -40 0 0 {name=Vd value=3.3 savecurrent=false}
C {gnd.sym} -330 10 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -330 -100 0 0 {name=p7 sig_type=std_logic lab=Vg}
C {gnd.sym} -230 10 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -230 -100 0 0 {name=p8 sig_type=std_logic lab=Vd}
C {code_shown.sym} -110 -400 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {code.sym} -280 -250 0 0 {name=Parametros only_toplevel=false value="

.param W = 1.0u
.param Vdd = 3.3
"}
C {code.sym} -410 -400 0 0 {name="While Sim" only_toplevel=false spice_ignore=0
value="
.control
let strt_w = 1.0u
let stop_w = 10u
let step_w = 0.1u
let curr_w = 1.0u
save all
while curr_w le stop_w
	alterparam W = $&curr_w
	reset
	save all
	+ @n.xm1.nsg13_hv_nmos[gds]
	op
	let rds = 1/@n.xm1.nsg13_hv_nmos[gds]
	wrdata ../top rds
	set appendwrite
	let curr_w = curr_w + step_w
end
.endc
"}
