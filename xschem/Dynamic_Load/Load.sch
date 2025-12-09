v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -120 300 -120 {
lab=In}
N 300 80 370 80 {
lab=vss}
N 300 30 300 80 {
lab=vss}
N 370 -30 370 20 {
lab=In}
N 300 -30 370 -30 {
lab=In}
N 300 80 300 110 {
lab=vss}
N 300 -120 300 -30 {
lab=In}
C {devices/lab_pin.sym} 220 -120 0 0 {name=p3 sig_type=std_logic lab=In
}
C {iopin.sym} -150 -190 0 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} 300 110 0 0 {name=p6 sig_type=std_logic lab=vss
}
C {isource.sym} 300 0 0 0 {name=I1 value="PULSE(0 \{Io*0.2\} \{SimTime*0.3333\} \{TR\} \{TF\} \{SimTime\} \{SimTime\} 0)"}
C {isource.sym} 370 50 0 0 {name=I2 value="PULSE(0 \{-Io*0.4\} \{SimTime*0.6666\} \{TR\} \{TF\} \{SimTime\} \{SimTime\} 0)"}
C {iopin.sym} -150 -210 0 0 {name=p1 lab=In}
