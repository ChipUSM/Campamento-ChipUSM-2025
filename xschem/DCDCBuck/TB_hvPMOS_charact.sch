v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_max = 10u; w_min_HVnmos = 0.3u; w_min_HVpmos = 0.3u;} -50 -500 0 0 0.4 0.4 {}
N 390 -300 390 -260 {
lab=GND}
N 390 -390 390 -360 {
lab=Vg}
N 470 -390 470 -360 {
lab=Vd}
N 470 -300 470 -260 {
lab=GND}
N 390 -260 470 -260 {
lab=GND}
N 390 -260 390 -240 {
lab=GND}
N 340 -30 380 -30 {
lab=Vg}
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
lab=Vg}
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
N 790 -30 830 -30 {
lab=Vg}
N 870 0 870 40 {
lab=Vd}
N 870 -70 870 -60 {
lab=#net3}
N 870 -30 890 -30 {
lab=#net3}
N 890 -70 890 -30 {
lab=#net3}
N 870 -70 890 -70 {
lab=#net3}
N 870 -90 870 -70 {
lab=#net3}
C {sg13g2_pr/sg13_hv_pmos.sym} 400 -30 0 0 {name=M1
l=\{l_M1\}
w=\{w_M1\}
ng=1
m=\{mult_M1\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 420 40 0 0 {name=p19 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 340 -30 0 0 {name=p20 sig_type=std_logic lab=Vg}
C {vsource.sym} 390 -330 0 0 {name=Vg value=0 savecurrent=false}
C {vsource.sym} 470 -330 0 0 {name=Vd value=3.3 savecurrent=false}
C {lab_pin.sym} 470 -390 0 0 {name=p21 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 390 -390 0 0 {name=p22 sig_type=std_logic lab=Vg}
C {gnd.sym} 390 -240 0 0 {name=l1 lab=GND}
C {code.sym} -50 -250 0 0 {name=Simulation1 only_toplevel=false 

value="
*.param temp=27
*.param temp=125
.option temp= 125

.param mult_M1 = 1200
.param w_M1 =10u 
.param l_M1 =0.4u

.param mult_M2 = 1200
.param w_M2 =10u 
.param l_M2 =0.45u

.param mult_M3 = 1200
.param w_M3 =10u 
.param l_M3 =0.5u

.save all
* + @M.XM1.m1[id]
+ @n.xm1.nsg13_hv_pmos[vth]
+ @n.xm1.nsg13_hv_pmos[gds]
+ @n.xm2.nsg13_hv_pmos[vth]
+ @n.xm2.nsg13_hv_pmos[gds]
+ @n.xm3.nsg13_hv_pmos[vth]
+ @n.xm3.nsg13_hv_pmos[gds]

.control 
*dc Vd 0 3.3 0.01 Vg 0.5 3.3 0.5
*dc Vd 0 0.5 0.01 temp 0 27 1
dc Vd 0 3.3 0.01 

let Vsd = v(Vdd) - v(Vd)
let G_M1 = @n.xm1.nsg13_hv_pmos[gds]
let G_M2 = @n.xm2.nsg13_hv_pmos[gds]
let G_M3 = @n.xm3.nsg13_hv_pmos[gds]
let Ron_M1 = 1/G_M1
let Ron_M2 = 1/G_M2
let Ron_M3 = 1/G_M3

plot i(VdM1) i(VdM2) i(VdM3) vs Vsd
plot Ron_M1 Ron_M2 Ron_M3 vs Vsd
*plot i(VdM1) i(VdM2) vs Vsd

*plot @n.xm1.nsg13_hv_pmos[vth] @n.xm2.nsg13_hv_pmos[vth] @n.xm3.nsg13_hv_pmos[vth]
*print @n.xm2.nsg13_hv_nmos[vth]
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
C {sg13g2_pr/sg13_hv_pmos.sym} 620 -30 0 0 {name=M2
l=\{l_M2\}
w=\{w_M2\}
ng=1
m=\{mult_M2\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 640 40 0 0 {name=p25 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 560 -30 0 0 {name=p26 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 640 -150 0 0 {name=p27 sig_type=std_logic lab=Vdd}
C {ammeter.sym} 640 -120 0 0 {name=VdM2 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} 850 -30 0 0 {name=M3
l=\{l_M3\}
w=\{w_M3\}
ng=1
m=\{mult_M3\}
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 870 40 0 0 {name=p28 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 790 -30 0 0 {name=p29 sig_type=std_logic lab=Vg}
C {lab_pin.sym} 870 -150 0 0 {name=p30 sig_type=std_logic lab=Vdd}
C {ammeter.sym} 870 -120 0 0 {name=VdM3 savecurrent=true spice_ignore=0}
