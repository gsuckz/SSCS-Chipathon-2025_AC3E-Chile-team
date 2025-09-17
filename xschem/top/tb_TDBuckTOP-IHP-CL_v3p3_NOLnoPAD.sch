v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {DOUT too many 0s
--> VCOREF faster than VCOSENS
--> VCOSENS needs to  be faster by DECREASING VCONTs
--> this is done by having more 1s in D1 (PMOS)
--> DOUT connected to D1_N to have negative FB} 3220 -1465 0 0 0.3 0.3 {}
N 2795 -630 2795 -610 { lab=GND}
N 2795 -740 2795 -690 { lab=VH}
N 2905 -630 2905 -610 { lab=GND}
N 2905 -740 2905 -690 { lab=VDIG}
N 3080 -300 3080 -240 {
lab=VCONTs}
N 3080 -85 3080 -45 {
lab=GND}
N 3080 -400 3080 -360 {
lab=ldo_out}
N 3080 -180 3080 -145 {
lab=#net1}
N 2580 -630 2580 -610 { lab=GND}
N 2580 -740 2580 -690 { lab=VDD_GD}
N 2410 -225 2410 -175 {
lab=VSS}
N 2430 -225 2700 -225 {
lab=VSS}
N 2610 -305 2620 -305 {
lab=#net2}
N 2410 -305 2430 -305 {
lab=Vc}
N 2490 -305 2510 -305 {
lab=#net3}
N 2410 -225 2430 -225 {
lab=VSS}
N 2700 -235 2700 -225 {
lab=VSS}
N 2700 -305 2700 -295 {
lab=ldo_out}
N 2680 -305 2700 -305 {
lab=ldo_out}
N 2610 -305 2610 -285 {
lab=#net2}
N 2570 -305 2610 -305 {
lab=#net2}
N 2700 -320 2700 -305 {
lab=ldo_out}
N 2425 -610 2425 -590 { lab=GND}
N 2425 -720 2425 -670 { lab=VCONTr}
N 3045 -625 3045 -605 { lab=GND}
N 3045 -735 3045 -685 { lab=MUX}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value=".param VDIG = 5
.param VH = 5
.param VDD_GD = 5
.param VCONTR = 2
*LATEST TDBuckLOADS
*300mA
*.param RL = 6
*270mA
*.param RL = 6.67
*240mA
*.param RL = 7.5
*210mA
*.param RL = 8.57
*180mA
*.param RL = 10
*150mA
*.param RL = 12
*120mA
*.param RL = 15
*60mA
*.param RL = 30
*30mA
*.param RL = 60
*15mA
.param RL = 120
*.save v(ldo_out) v(D1) v(D1_N) v(DOUT) v(VCONTr) v(VCONTs) v(V_1r) v(V_1s) v(DOUT_buff) v(DOUT_buffn) v(vh) i(vh) v(vdd_gd) i(vdd_gd) i(v_res) v(VCONTs_OL) v(vcp) v(vcn) i(vldo_out) i(vvdig) i(vvdd)
.save all
vvdd vdd 0 dc 5
vvss vss 0 0
vdvdd dvdd 0 dc 5
vdvss dvss 0 0
*vvconts VCONTs 0 dc 0.61
*.option temp = 200
*.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.ic v(VCONTs) = 2
*.ic v(V_1s) = 2
*.ic v(V_2s) = 4
*.ic v(V_1r) = 5
*.ic v(V_2r) = 0
.ic v(x4.V_1s) = 2
.ic v(x4.V_2s) = 4
.ic v(x4.V_1r) = 5
.ic v(x4.V_2r) = 0
.ic v(ldo_out) = 2.5

.control
*tran 2n 1m
*tran 4n 250u
tran 10p 20u uic
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_TDBuckTOP-CL_v5p3_RL60.txt tran.v(vh) tran.i(vh) tran.v(ldo_out) tran.i(vldo_out) tran.v(vh_gd) tran.i(vh_gd) tran.i(vvdig) tran.i(vvdd)
plot v(ldo_out)
plot v(v_res)
plot v(D1) v(D1_N)+5
plot v(DOUT) 
plot v(V_1s)+5 v(V_1r)+10
plot v(VCONTr) v(VCONTs)
*plot v(VCONTs_OL)
.endc
"}
C {devices/lab_pin.sym} 2425 -720 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/vsource.sym} 2795 -660 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} 2795 -610 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 2795 -740 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} 2905 -660 0 0 {name=VVDIG value=\{VDIG\}}
C {devices/gnd.sym} 2905 -610 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2905 -740 0 0 {name=l2 sig_type=std_logic lab=VDIG}
C {devices/res.sym} 3080 -330 0 0 {name=RDIV1
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3080 -210 0 0 {name=RDIV2
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 3080 -45 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3080 -400 2 0 {name=p27 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 3080 -270 2 0 {name=p28 sig_type=std_logic lab=VCONTs}
C {devices/res.sym} 3080 -115 0 0 {name=RDIV3
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 2580 -660 0 0 {name=VDD_GD value=\{VDD_GD\}}
C {devices/gnd.sym} 2580 -610 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2580 -740 0 0 {name=l8 sig_type=std_logic lab=VDD_GD}
C {ind.sym} 2540 -305 3 1 {name=L14
m=1
value=\{L\}
footprint=1206
device=inductor}
C {capa.sym} 2610 -255 0 0 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {ammeter.sym} 2650 -305 3 0 {name=V_Io savecurrent=true spice_ignore=0}
C {ammeter.sym} 2460 -305 3 0 {name=V_IL savecurrent=true spice_ignore=0}
C {res.sym} 2700 -265 0 0 {name=R2
value=\{RL\}
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 2411 -305 0 0 {name=p26 sig_type=std_logic lab=Vc}
C {code.sym} 3965 -1445 0 0 {name=GD_Param only_toplevel=false 

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
C {code_shown.sym} 4160 -1625 0 0 {name=POWER_MOS_GD_Parameters only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 2000
.param w_M1 =10u 
.param l_M1 = 0.5u


.param mult_M2 = 625
.param w_M2 =10u 
.param l_M2 =0.6u

*PMOS
.param mult_gd_p = 72
.param w_gd_p = 6.4u 
.param l_gd_p = 0.5u
*NMOS
.param mult_gd_n = 72
.param w_gd_n = 2u 
.param l_gd_n = 0.6u


"}
C {code_shown.sym} 4444 -1444 0 0 {name=RLC_Parameters only_toplevel=false 
value="
*.param L = 550n
*.param R = 16.7
*.param C = 640n
.param L = 220n
*.param C = 1u
.param C = 150n

"}
C {devices/lab_pin.sym} 2700 -320 2 0 {name=p32 sig_type=std_logic lab=ldo_out

}
C {devices/lab_wire.sym} 2410 -175 2 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 3220 -1170 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
*.include $::180MCU_MODELS/design.ngspice
.include "gf180mcu_fd_io__asig_5p0_extracted.spice"
.include "gf180mcu_fd_io.spice"
*.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 2425 -640 0 0 {name=VDD_GD1 value=\{VCONTR\}}
C {devices/gnd.sym} 2425 -590 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 2860 -990 2 0 {name=p16 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 2860 -1170 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2860 -1150 2 0 {name=p18 sig_type=std_logic lab=MUX}
C {devices/lab_pin.sym} 2860 -1110 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2860 -910 2 0 {name=p30 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 2860 -970 2 0 {name=p31 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} 2860 -1050 2 0 {name=p33 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 2860 -1030 2 0 {name=p34 sig_type=std_logic lab=VCONTs}
C {devices/code_shown.sym} 3200 -1325 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"}
C {devices/vsource.sym} 3045 -655 0 0 {name=VVDIG1 value=\{VDIG\}}
C {devices/gnd.sym} 3045 -605 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 3045 -735 0 0 {name=l5 sig_type=std_logic lab=MUX}
C {devices/res.sym} 2890 -930 1 0 {name=RDIV4
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -930 3 0 {name=l9 lab=GND}
C {devices/res.sym} 2890 -950 1 0 {name=RDIV5
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -950 3 0 {name=l10 lab=GND}
C {devices/res.sym} 2890 -1010 1 0 {name=RDIV6
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -1010 3 0 {name=l11 lab=GND}
C {devices/res.sym} 2890 -1090 1 0 {name=RDIV7
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -1090 3 0 {name=l12 lab=GND}
C {devices/res.sym} 2890 -1070 1 0 {name=RDIV8
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -1070 3 0 {name=l13 lab=GND}
C {devices/res.sym} 2890 -1130 1 0 {name=RDIV9
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2920 -1130 3 0 {name=l16 lab=GND}
C {top/PWR_MOSbius-TOP_noPAD.sym} 2710 -1040 0 0 {name=x4}
