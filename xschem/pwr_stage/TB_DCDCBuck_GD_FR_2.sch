v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -860 100 -860 130 {
lab=Vdd}
N -860 190 -860 210 {
lab=GND}
N -1140 100 -1140 130 {
lab=Vg_M1}
N -1140 190 -1140 210 {
lab=GND}
N -1140 250 -1140 280 {
lab=Vg_M2}
N -1140 340 -1140 360 {
lab=GND}
N -370 -265 -370 -220 {
lab=Vc}
N -370 -135 -370 -85 {
lab=GND}
N -350 -135 -80 -135 {
lab=GND}
N -370 -145 -370 -135 {
lab=GND}
N -370 -335 -370 -325 {
lab=Vdd}
N -410 -220 -370 -220 {
lab=Vc}
N -170 -215 -160 -215 {
lab=#net1}
N -370 -215 -370 -205 {
lab=Vc}
N -370 -215 -350 -215 {
lab=Vc}
N -370 -220 -370 -215 {
lab=Vc}
N -290 -215 -270 -215 {
lab=#net2}
N -370 -295 -350 -295 {
lab=Vdd}
N -350 -335 -350 -295 {
lab=Vdd}
N -370 -335 -350 -335 {
lab=Vdd}
N -370 -175 -350 -175 {
lab=GND}
N -350 -175 -350 -135 {
lab=GND}
N -370 -135 -350 -135 {
lab=GND}
N -80 -145 -80 -135 {
lab=GND}
N -80 -215 -80 -205 {
lab=Vo}
N -100 -215 -80 -215 {
lab=Vo}
N -170 -215 -170 -195 {
lab=#net1}
N -210 -215 -170 -215 {
lab=#net1}
N -450 -295 -410 -295 {
lab=s1}
N -440 -175 -410 -175 {
lab=s2}
N -370 -365 -370 -335 {
lab=Vdd}
N -80 -230 -80 -215 {
lab=Vo}
N -720 -540 -700 -540 {
lab=Vg_M2}
N -570 -540 -540 -540 {lab=s2}
N -340 -530 -320 -530 {lab=Vg_M1}
N -190 -530 -170 -530 {lab=s1}
C {lab_pin.sym} -370 -363 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {code_shown.sym} -986 -304 0 0 {name=RLC_Parameters only_toplevel=false 
value="
.param L = 550n
.param R = 16.7
.param C = 640n

"}
C {code_shown.sym} -1220 -305 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 2000
.param w_M1 =10u 
.param l_M1 = 0.5u


.param mult_M2 = 625
.param w_M2 =10u 
.param l_M2 =0.6u




"}
C {vsource.sym} -860 160 0 0 {name=Vdd value=\{VH\} savecurrent=false}
C {lab_pin.sym} -860 100 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -860 210 0 0 {name=l2 lab=GND}
C {vsource.sym} -1140 310 0 0 {name=Vg2 value="PULSE(0 \{VH\} \{dt\} 1n 1n \{T*D-2*dt\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -1140 100 0 0 {name=p6 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -1140 210 0 0 {name=l4 lab=GND}
C {vsource.sym} -1140 160 0 0 {name=Vg1 value="PULSE(0 \{VH\} 0 1n 1n \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -1140 250 0 0 {name=p7 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -1140 360 0 0 {name=l5 lab=GND}
C {code_shown.sym} -780 -310 0 0 {name=Simulation_Parameters only_toplevel=false 

value="

.param VH = 5
.param D = 1-0.66
.param T = 1u
.param dt = 20n
.param temp = 27


"}
C {devices/code.sym} -1460 -300 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
.ic v(vo) = 0
.control
set color0 = white
compose RL_var values 3.3/0.05 3.3/0.1 3.3/0.25 3.3/0.5 3.3/0.7 3.3 3.3/3
   foreach val $&RL_var
     alterparam R=$val
     reset
     save i(V_Io) v(Vo) i(Vdd) v(Vdd) 
     tran 100p 30u 20u
   end
wrdata /foss/designs/data_Chipathon_2025/data_converter_700mA_GD_100p.txt tran1.i(V_Io) tran1.v(Vo) tran1.i(Vdd) tran1.v(Vdd) tran2.i(V_Io) tran2.v(Vo) tran2.i(Vdd) tran2.v(Vdd) tran3.i(V_Io) tran3.v(Vo) tran3.i(Vdd) tran3.v(Vdd) tran4.i(V_Io) tran4.v(Vo) tran4.i(Vdd) tran4.v(Vdd) tran5.i(V_Io) tran5.v(Vo) tran5.i(Vdd) tran5.v(Vdd) tran6.i(V_Io) tran6.v(Vo) tran6.i(Vdd) tran6.v(Vdd) tran7.i(V_Io) tran7.v(Vo) tran7.i(Vdd) tran7.v(Vdd)
.endc
.end
"}
C {launcher.sym} -810 -120 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {code_shown.sym} -1230 -420 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {ind.sym} -240 -215 3 1 {name=L6
m=1
value=\{L\}
footprint=1206
device=inductor}
C {capa.sym} -170 -165 0 0 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} -130 -215 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {ammeter.sym} -320 -215 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {res.sym} -80 -175 0 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} -370 -90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -80 -228 0 1 {name=p4 sig_type=std_logic lab=Vo}
C {lab_pin.sym} -409 -220 0 0 {name=p8 sig_type=std_logic lab=Vc}
C {symbols/nfet_05v0.sym} -390 -175 0 0 {name=M3
L=\{l_M2\}
W=\{w_M2\}
nf=1
m=\{mult_M2\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -390 -295 0 0 {name=M1
L=\{l_M1\}
W=\{w_M1\}
nf=1
m=\{mult_M1\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {code.sym} -1455 -685 0 0 {name=GD_Param only_toplevel=false 

value="

*PMOS
.param mult_gd_p = 72
.param w_gd_p = 6.4u 
.param l_gd_p = 0.5u
*NMOS
.param mult_gd_n = 72
.param w_gd_n = 2u 
.param l_gd_n = 0.6u

"}
C {lab_pin.sym} -449 -295 0 0 {name=p14 sig_type=std_logic lab=s1}
C {lab_pin.sym} -439 -175 0 0 {name=p15 sig_type=std_logic lab=s2}
C {lab_pin.sym} -719 -540 0 0 {name=p10 sig_type=std_logic lab=Vg_M2}
C {devices/lab_pin.sym} -640 -590 2 0 {name=p3 sig_type=std_logic lab=Vdd
}
C {devices/lab_pin.sym} -260 -580 2 0 {name=p9 sig_type=std_logic lab=Vdd
}
C {devices/gnd.sym} -640 -490 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -260 -480 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -339 -530 0 0 {name=p16 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -541 -540 2 0 {name=p21 sig_type=std_logic lab=s2}
C {lab_pin.sym} -171 -530 2 0 {name=p22 sig_type=std_logic lab=s1}
C {GD_schem.sym} -640 -570 0 0 {name=X1}
C {GD_schem.sym} -260 -560 0 0 {name=X2}
