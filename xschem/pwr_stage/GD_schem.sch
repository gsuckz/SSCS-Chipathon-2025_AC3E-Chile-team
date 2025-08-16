v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 -225 -380 -225 {lab=VN}
N -380 -225 -380 -175 {lab=VN}
N -400 -175 -380 -175 {lab=VN}
N -400 -195 -400 -175 {lab=VN}
N -400 -365 -380 -365 {lab=VP}
N -380 -415 -380 -365 {lab=VP}
N -400 -415 -380 -415 {lab=VP}
N -400 -335 -400 -255 {lab=Y}
N -490 -365 -440 -365 {lab=#net1}
N -490 -225 -440 -225 {lab=#net1}
N -400 -295 -300 -295 {lab=Y}
N -490 -365 -490 -225 {lab=#net1}
N -640 -295 -490 -295 {lab=#net1}
N -640 -230 -620 -230 {lab=VN}
N -620 -230 -620 -180 {lab=VN}
N -640 -180 -620 -180 {lab=VN}
N -640 -180 -640 -160 {lab=VN}
N -640 -200 -640 -180 {lab=VN}
N -640 -460 -640 -400 {lab=VP}
N -640 -370 -620 -370 {lab=VP}
N -620 -420 -620 -370 {lab=VP}
N -640 -420 -620 -420 {lab=VP}
N -640 -340 -640 -260 {lab=#net1}
N -730 -370 -680 -370 {lab=A}
N -730 -230 -680 -230 {lab=A}
N -730 -370 -730 -230 {lab=A}
N -880 -300 -730 -300 {lab=A}
N -640 -440 -400 -440 {lab=VP}
N -400 -435 -400 -395 {lab=VP}
N -400 -440 -400 -435 {lab=VP}
N -400 -175 -400 -160 {lab=VN}
N -640 -160 -400 -160 {lab=VN}
N -640 -160 -640 -140 {lab=VN}
C {symbols/nfet_05v0.sym} -420 -225 0 0 {name=M11
L=\{l_gd_n\}
W=\{w_gd_n\}
nf=1
m=\{mult_gd_n\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -420 -365 0 0 {name=M12
L=\{l_gd_p\}
W=\{w_gd_p\}
nf=1
m=\{mult_gd_p\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} -660 -230 0 0 {name=M13
L=\{l_gd_n\}
W=\{w_gd_n\}
nf=1
m=\{mult_gd_n\}/4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} -660 -370 0 0 {name=M14
L=\{l_gd_p\}
W=\{w_gd_p\}
nf=1
m=\{mult_gd_p\}/4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {ipin.sym} -880 -300 0 0 {name=p1 lab=A}
C {iopin.sym} -640 -460 3 0 {name=p2 lab=VP}
C {iopin.sym} -640 -140 1 0 {name=p3 lab=VN}
C {opin.sym} -300 -295 0 0 {name=p4 lab=Y}
