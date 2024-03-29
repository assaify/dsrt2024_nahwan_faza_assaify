v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -100 10 -80 {
lab=#net1}
N -170 -100 10 -100 {
lab=#net1}
N -170 -100 -170 10 {
lab=#net1}
N -50 -50 -30 -50 {
lab=in}
N -50 -50 -50 40 {
lab=in}
N -50 40 -30 40 {
lab=in}
N 10 -20 10 10 {
lab=out}
N -170 70 -170 90 {
lab=GND}
N -170 90 10 90 {
lab=GND}
N 10 70 10 90 {
lab=GND}
N -110 70 -110 90 {
lab=GND}
N -110 -0 -110 10 {
lab=in}
N -110 -0 -50 -0 {
lab=in}
N 10 40 90 40 {
lab=GND}
N 90 40 90 90 {
lab=GND}
N 10 90 90 90 {
lab=GND}
N 10 -50 90 -50 {
lab=#net1}
N 90 -100 90 -50 {
lab=#net1}
N 10 -100 90 -100 {
lab=#net1}
N -40 90 -40 100 {
lab=GND}
N 10 -0 70 0 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} -10 40 0 0 {name=M1
W=7
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -10 -50 0 0 {name=M2
W=21
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -170 40 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -110 40 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -40 100 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -110 0 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 150 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/code_shown.sym} 150 -30 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc
"}
C {devices/lab_pin.sym} 70 0 0 0 {name=p2 sig_type=std_logic lab=out}
