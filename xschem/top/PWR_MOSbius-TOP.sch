v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {ANALOG PINS                     DIGITAL INPUTS                DIGITAL OUTPUTS           POWER} -3245 -1370 0 0 0.3 0.3 {}
N -2130 -645 -2130 -615 {
lab=VDD}
N -2130 -495 -2130 -465 {
lab=VSS}
N -2220 -555 -2190 -555 {
lab=VCONTr}
N -2070 -575 -2040 -575 {
lab=V_1r}
N -2070 -535 -2040 -535 {
lab=V_2r}
N -2130 -965 -2130 -935 {
lab=VDD}
N -2130 -815 -2130 -785 {
lab=VSS}
N -2220 -875 -2190 -875 {
lab=VCONTs}
N -2070 -895 -2040 -895 {
lab=V_1s}
N -2070 -855 -2040 -855 {
lab=V_2s}
N -1230 -720 -1165 -720 {
lab=DOUT}
N -1700 -200 -1700 -155 {
lab=V_OUT}
N -1700 -70 -1700 -20 {
lab=VSS}
N -1700 -80 -1700 -70 {
lab=VSS}
N -1700 -270 -1700 -260 {
lab=VDD}
N -1740 -155 -1700 -155 {
lab=V_OUT}
N -1700 -150 -1700 -140 {
lab=V_OUT}
N -1700 -150 -1680 -150 {
lab=V_OUT}
N -1700 -155 -1700 -150 {
lab=V_OUT}
N -1700 -230 -1680 -230 {
lab=VDD}
N -1680 -270 -1680 -230 {
lab=VDD}
N -1700 -270 -1680 -270 {
lab=VDD}
N -1700 -110 -1680 -110 {
lab=VSS}
N -1680 -110 -1680 -70 {
lab=VSS}
N -1700 -70 -1680 -70 {
lab=VSS}
N -1780 -230 -1740 -230 {
lab=GD_P}
N -1770 -110 -1740 -110 {
lab=GD_N}
N -1700 -300 -1700 -270 {
lab=VDD}
N -1380 -820 -1380 -790 {
lab=DVDD}
N -1380 -650 -1380 -620 {
lab=DVSS}
N -1810 -265 -1780 -265 {lab=GD_P}
N -1810 -90 -1790 -90 {lab=GD_N}
N -1600 -740 -1530 -740 {lab=V_1s_buff}
N -1600 -700 -1530 -700 {lab=V_1r_buff}
N -2005 -265 -1940 -265 {lab=GD_IN_1}
N -1985 -90 -1940 -90 {lab=GD_IN_2}
N -1720 -740 -1700 -740 {
lab=#net1}
N -1700 -740 -1680 -740 {lab=#net1}
N -1720 -670 -1700 -670 {
lab=#net2}
N -1700 -670 -1680 -670 {lab=#net2}
N -1600 -700 -1600 -670 {lab=V_1r_buff}
N -1680 -150 -1480 -150 {lab=V_OUT}
N -1480 -150 -1480 -125 {lab=V_OUT}
N -1790 -110 -1790 -90 {lab=GD_N}
N -1780 -265 -1780 -230 {lab=GD_P}
N -1790 -110 -1770 -110 {lab=GD_N}
N -2005 -90 -1985 -90 {lab=GD_IN_2}
N -2085 -195 -2085 -160 {lab=VDD}
N -2055 -205 -2055 -150 {lab=OL_MUX}
N -2190 -110 -2135 -110 {lab=#net3}
N -2190 -175 -2190 -110 {lab=#net3}
N -2190 -245 -2135 -245 {lab=#net4}
N -2190 -245 -2190 -215 {lab=#net4}
N -1965 -90 -1965 -40 {lab=GD_IN_2}
N -1965 -305 -1965 -265 {lab=GD_IN_1}
C {devices/lab_pin.sym} -2130 -645 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -2130 -465 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2220 -555 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} -2050 -575 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} -2040 -535 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {devices/lab_pin.sym} -2130 -965 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -2130 -785 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2220 -875 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} -2050 -895 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} -2040 -855 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {devices/lab_pin.sym} -1190 -720 1 0 {name=p39 sig_type=std_logic lab=DOUT}
C {lab_pin.sym} -1700 -298 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1739 -155 0 0 {name=p26 sig_type=std_logic lab=V_OUT}
C {symbols/nfet_05v0.sym} -1720 -110 0 0 {name=M3
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
C {symbols/pfet_05v0.sym} -1720 -230 0 0 {name=M4
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
C {devices/lab_wire.sym} -1700 -20 2 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1380 -620 3 0 {name=p23 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -1380 -820 1 0 {name=p24 sig_type=std_logic lab=DVDD}
C {gf180_digital/PD/PD_vto1p1.sym} -1380 -720 0 0 {name=x1}
C {vco/Esm22_CMOSVCOlowG_v5p1_GF180-5V.sym} -2130 -875 0 0 {name=x8}
C {vco/Esm22_CMOSVCOlowG_v5p1_GF180-5V.sym} -2130 -555 0 0 {name=x2}
C {devices/lab_pin.sym} -1530 -740 1 0 {name=p12 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} -1530 -700 3 0 {name=p14 sig_type=std_logic lab=V_1r_buff}
C {capa.sym} -2040 -505 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -2040 -475 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {capa.sym} -2040 -825 0 0 {name=C3
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -2040 -795 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {pwr_stage/GD_schem.sym} -1880 -295 0 0 {name=X3}
C {pwr_stage/GD_schem.sym} -1880 -120 0 0 {name=X5}
C {devices/lab_pin.sym} -1790 -90 1 1 {name=l18 sig_type=std_logic lab=GD_N
}
C {devices/lab_wire.sym} -1880 -315 0 0 {name=l20 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1880 -140 0 0 {name=l21 sig_type=std_logic lab=VDD}
C {gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -1760 -740 0 0 {name=x10 VGND=DVSS VNB=DVDD VPB=DVSS VPWR=DVDD prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} -1640 -740 0 0 {name=x11 VGND=DVSS VNB=DVDD VPB=DVSS VPWR=DVDD  prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {devices/lab_pin.sym} -1800 -740 1 0 {name=p19 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} -1800 -670 3 0 {name=p20 sig_type=std_logic lab=V_1r}
C {pinsymbols/io_asig_5p0.sym} -3370 -825 0 0 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3250 -985 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3250 -825 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3290 -985 1 0 {name=p27 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3290 -825 3 0 {name=p28 sig_type=std_logic lab=DVSS}
C {gf180_digital/NOL/NOL_vto1p1.sym} -2310 -195 0 0 {name=x14}
C {pinsymbols/io_asig_5p0.sym} -3380 -535 0 0 {name=IO2
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3260 -695 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3260 -535 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3300 -695 1 0 {name=p31 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3300 -535 3 0 {name=p32 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3170 -905 1 0 {name=p33 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} -3180 -615 1 0 {name=p34 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} -3370 -905 1 0 {name=p35 sig_type=std_logic lab=VCONTs_PAD}
C {devices/lab_pin.sym} -3380 -615 1 0 {name=p36 sig_type=std_logic lab=VCONTr_PAD}
C {devices/lab_pin.sym} -3455 -910 1 0 {name=p37 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} -3465 -620 1 0 {name=p38 sig_type=std_logic lab=V_1r}
C {pinsymbols/io_asig_5p0.sym} -3655 -830 0 0 {name=IO3
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3535 -990 1 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3535 -830 3 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3575 -990 1 0 {name=p42 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3575 -830 3 0 {name=p43 sig_type=std_logic lab=DVSS}
C {pinsymbols/io_asig_5p0.sym} -3665 -540 0 0 {name=IO4
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3545 -700 1 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3545 -540 3 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3585 -700 1 0 {name=p46 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3585 -540 3 0 {name=p47 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3655 -910 1 0 {name=p50 sig_type=std_logic lab=VCO_OUT_S_PAD}
C {devices/lab_pin.sym} -3665 -620 1 0 {name=p51 sig_type=std_logic lab=VCO_OUT_R_PAD}
C {devices/lab_pin.sym} -2310 -135 3 0 {name=p15 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -2310 -255 1 0 {name=p16 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -2430 -195 1 0 {name=p17 sig_type=std_logic lab=DOUT}
C {pinsymbols/io_asig_5p0.sym} -1280 -45 0 1 {name=IO5
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -1400 -205 3 1 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1400 -45 1 1 {name=p48 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1360 -205 3 1 {name=p49 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -1360 -45 1 1 {name=p52 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -1280 -125 3 1 {name=p54 sig_type=std_logic lab=V_OUT_PAD}
C {devices/iopin.sym} -3135 -1315 2 0 {name=p53 lab=VCO_OUT_S_PAD}
C {devices/iopin.sym} -3135 -1285 2 0 {name=p55 lab=VCO_OUT_R_PAD}
C {devices/iopin.sym} -3135 -1255 2 0 {name=p56 lab=VCONTs_PAD}
C {devices/iopin.sym} -3135 -1225 2 0 {name=p57 lab=VCONTr_PAD}
C {devices/iopin.sym} -3135 -1120 2 0 {name=p59 lab=V_OUT_PAD}
C {pinsymbols/io_in_c.sym} -3045 -810 0 0 {name=IO7
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {devices/iopin.sym} -2920 -1315 2 0 {name=p60 lab=OL_MUX_PAD}
C {devices/iopin.sym} -2920 -1270 2 0 {name=p61 lab=PWM_EXT_1_PAD}
C {devices/iopin.sym} -2920 -1230 2 0 {name=p62 lab=PWM_EXT_2_PAD}
C {pinsymbols/io_asig_5p0.sym} -3390 -190 0 0 {name=IO8
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3270 -350 1 0 {name=p63 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3270 -190 3 0 {name=p64 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3310 -350 1 0 {name=p65 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3310 -190 3 0 {name=p66 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3390 -270 1 0 {name=p68 sig_type=std_logic lab=GD_P_PAD}
C {pinsymbols/io_asig_5p0.sym} -3675 -195 0 0 {name=IO9
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {devices/lab_pin.sym} -3555 -355 1 0 {name=p70 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -3555 -195 3 0 {name=p71 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -3595 -355 1 0 {name=p72 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -3595 -195 3 0 {name=p73 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3675 -275 1 0 {name=p74 sig_type=std_logic lab=GD_N_PAD}
C {devices/lab_pin.sym} -1780 -265 1 0 {name=l1 sig_type=std_logic lab=GD_P
}
C {devices/lab_pin.sym} -3475 -275 0 1 {name=l2 sig_type=std_logic lab=GD_N
}
C {devices/lab_pin.sym} -3190 -270 2 0 {name=l3 sig_type=std_logic lab=GD_P
}
C {devices/iopin.sym} -3135 -1175 2 0 {name=p67 lab=GD_N_PAD}
C {devices/iopin.sym} -3135 -1145 2 0 {name=p69 lab=GD_P_PAD}
C {devices/lab_pin.sym} -2925 -970 1 0 {name=p75 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -2925 -810 3 0 {name=p76 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2965 -970 1 0 {name=p77 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -2965 -810 3 0 {name=p78 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3045 -890 1 0 {name=p87 sig_type=std_logic lab=OL_MUX_PAD}
C {devices/lab_pin.sym} -2785 -890 1 0 {name=p79 sig_type=std_logic lab=OL_MUX}
C {devices/lab_pin.sym} -2785 -850 2 0 {name=p80 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -2785 -870 2 0 {name=p81 sig_type=std_logic lab=DVSS}
C {pinsymbols/io_in_c.sym} -3035 -520 0 0 {name=IO6
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {devices/lab_pin.sym} -2915 -680 1 0 {name=p82 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -2915 -520 3 0 {name=p83 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2955 -680 1 0 {name=p84 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -2955 -520 3 0 {name=p85 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3035 -600 1 0 {name=p86 sig_type=std_logic lab=PWM_EXT_1_PAD}
C {devices/lab_pin.sym} -2775 -600 1 0 {name=p88 sig_type=std_logic lab=PWM_EXT_1}
C {devices/lab_pin.sym} -2775 -560 2 0 {name=p89 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -2775 -580 2 0 {name=p90 sig_type=std_logic lab=DVSS}
C {pinsymbols/io_in_c.sym} -3025 -205 0 0 {name=IO10
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {devices/lab_pin.sym} -2905 -365 1 0 {name=p91 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -2905 -205 3 0 {name=p92 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2945 -365 1 0 {name=p93 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} -2945 -205 3 0 {name=p94 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -3025 -285 1 0 {name=p95 sig_type=std_logic lab=PWM_EXT_2_PAD}
C {devices/lab_pin.sym} -2765 -285 1 0 {name=p96 sig_type=std_logic lab=PWM_EXT_2}
C {devices/lab_pin.sym} -2765 -245 2 0 {name=p97 sig_type=std_logic lab=DVSS}
C {devices/lab_pin.sym} -2765 -265 2 0 {name=p98 sig_type=std_logic lab=DVSS}
C {gf180_digital/mux2.sym} -1995 -110 0 0 {name=x4}
C {gf180_digital/mux2.sym} -1995 -245 2 1 {name=x6}
C {devices/lab_pin.sym} -2055 -175 0 1 {name=p99 sig_type=std_logic lab=OL_MUX}
C {devices/lab_pin.sym} -2135 -275 1 0 {name=p100 sig_type=std_logic lab=PWM_EXT_1}
C {devices/lab_pin.sym} -2135 -80 3 0 {name=p101 sig_type=std_logic lab=PWM_EXT_2}
C {devices/lab_pin.sym} -2095 -325 1 0 {name=p102 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2095 -30 3 0 {name=p103 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -2085 -175 0 0 {name=p104 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -2630 -1320 2 1 {name=p58 lab=VDD}
C {devices/iopin.sym} -2625 -1290 2 1 {name=p105 lab=VSS}
C {devices/iopin.sym} -2625 -1255 2 1 {name=p106 lab=DVDD}
C {devices/iopin.sym} -2625 -1220 2 1 {name=p107 lab=DVSS}
C {gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -1760 -670 0 0 {name=x7 VGND=DVSS VNB=DVDD VPB=DVSS VPWR=DVDD prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} -1640 -670 0 0 {name=x9 VGND=DVSS VNB=DVDD VPB=DVSS VPWR=DVDD  prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {devices/lab_wire.sym} -1965 -305 0 0 {name=l6 sig_type=std_logic lab=GD_IN_1}
C {devices/lab_wire.sym} -1965 -40 0 0 {name=l8 sig_type=std_logic lab=GD_IN_2}
C {devices/lab_wire.sym} -1880 -215 2 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1880 -40 2 0 {name=l5 sig_type=std_logic lab=VSS}
