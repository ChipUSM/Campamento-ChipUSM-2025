v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_max = 10u; w_min_HVnmos = 0.3u; w_min_HVpmos = 0.3u;} -50 -500 0 0 0.4 0.4 {}
N 390 -300 390 -260 {
lab=GND}
N 390 -390 390 -360 {
lab=Vgp}
N 470 -390 470 -360 {
lab=Vd}
N 470 -300 470 -260 {
lab=GND}
N 430 -260 470 -260 {
lab=GND}
N 430 -260 430 -240 {
lab=GND}
N 340 -30 380 -30 {
lab=Vgp}
N 420 0 420 40 {
lab=Vd}
N 540 -300 540 -260 {
lab=GND}
N 470 -260 540 -260 {
lab=GND}
N 540 -390 540 -360 {
lab=Vdd}
N 420 -70 420 -60 {
lab=#net1}
N 420 -30 440 -30 {
lab=#net1}
N 440 -70 440 -30 {
lab=#net1}
N 420 -70 440 -70 {
lab=#net1}
N 420 -90 420 -70 {
lab=#net1}
N 560 -30 600 -30 {
lab=Vgn}
N 640 0 640 40 {
lab=Vd}
N 640 -70 640 -60 {
lab=#net2}
N 640 -30 660 -30 {
lab=#net2}
N 660 -70 660 -30 {
lab=#net2}
N 640 -70 660 -70 {
lab=#net2}
N 640 -90 640 -70 {
lab=#net2}
N 310 -300 310 -260 {
lab=GND}
N 310 -390 310 -360 {
lab=Vgn}
N 310 -260 390 -260 {
lab=GND}
N 390 -260 430 -260 {
lab=GND}
C {sg13g2_pr/sg13_hv_pmos.sym} 400 -30 0 0 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=1
m=\{mult_M1\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 420 40 0 0 {name=p19 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 340 -30 0 0 {name=p20 sig_type=std_logic lab=Vgp}
C {vsource.sym} 390 -330 0 0 {name=Vg value=0 savecurrent=false}
C {vsource.sym} 470 -330 0 0 {name=Vd value=3.3 savecurrent=false}
C {lab_pin.sym} 470 -390 0 0 {name=p21 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 390 -390 0 0 {name=p22 sig_type=std_logic lab=Vgp}
C {gnd.sym} 430 -240 0 0 {name=l1 lab=GND}
C {code.sym} -50 -250 0 0 {name=Simulation1 only_toplevel=false 

value="
.param mult_M1 = 1200
.param w_M1 = 10u 
.param l_M1 = 0.45u

.param mult_M2 = 1200
.param w_M2 = 10u
.param l_M2 = 0.45u

.save all
+ @n.xm1.nsg13_hv_pmos[vth]
+ @n.xm1.nsg13_hv_pmos[gds]
+ @n.xm2.nsg13_hv_nmos[vth]
+ @n.xm2.nsg13_hv_nmos[gds]

.control 
dc Vd 0 3.3 0.01 

let Vsd = v(Vdd) - v(Vd)
let G_M1 = @n.xm1.nsg13_hv_pmos[gds]
let G_M2 = @n.xm2.nsg13_hv_nmos[gds]
let Ron_M1 = 1/G_M1
let Ron_M2 = 1/G_M2

plot i(VdM1) i(VdM2) vs Vsd
plot Ron_M1 Ron_M2 vs Vsd
write test_pmos.raw
.endc

.control
reset
alter Vd 0 
dc Vg 2 3.3 0.01 
let Vsg = v(Vdd) - v(Vg)
plot i(VdM1) i(VdM2) i(VdM3) vs Vsg
.endc

"}
C {code_shown.sym} -50 -410 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
*.lib cornerMOShv.lib mos_tt
.lib cornerMOShv.lib mos_ss
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
"}
C {vsource.sym} 540 -330 0 0 {name=Vdd value=3.3 savecurrent=false}
C {lab_pin.sym} 540 -390 0 0 {name=p23 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 420 -150 0 0 {name=p24 sig_type=std_logic lab=Vdd}
C {ammeter.sym} 420 -120 0 0 {name=VdM1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 640 40 0 0 {name=p25 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 560 -30 0 0 {name=p26 sig_type=std_logic lab=Vgn}
C {lab_pin.sym} 640 -150 0 0 {name=p27 sig_type=std_logic lab=Vdd}
C {ammeter.sym} 640 -120 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_nmos.sym} 620 -30 0 0 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {vsource.sym} 310 -330 0 0 {name=Vg1 value=3.3 savecurrent=false}
C {lab_pin.sym} 310 -390 0 0 {name=p1 sig_type=std_logic lab=Vgn}
