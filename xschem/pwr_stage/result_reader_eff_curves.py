import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
import matplotlib as mpl
from matplotlib import font_manager as fm
from matplotlib import ticker

plt.rcParams['figure.figsize'] = [15, 7]
plt.rcParams.update({'font.size': 15})
mpl.rcParams['mathtext.fontset'] = 'cm'

# Path to CMU Serif TTF font — adjust if needed
# font_path = "/USERS/MRMEO/APPDATA/LOCAL/MICROSOFT/WINDOWS/FONTS/CMUNRM.TTF"
# cmu_font = fm.FontProperties(fname=font_path)

# Data output format: tran.v(ldo_out) tran.i(vldo_out) tran.v(vh) tran.i(vh) tran.v(vdd_gd) tran.i(vdd_gd) tran.v(vdd) tran.i(vvdd) tran.v(vdig) tran.i(vvdig)

# Header: ['Time', 'v_out', 't1', 'I_out', 't2', 'vh', 't3', 'I_vh', 't4', 'vdd_gd', 't5', 'I_vdd_gd', 't6', 'v_dd', 't7', 'I_vdd', 't8', 'v_dig', 't9', 'I_vdig']

# TT
spice_data_tt = pd.read_csv('data_converter_150mA.txt',delim_whitespace=True, header=None,names=['t', 'I_out1', 't1', 'v_out1', 't2', 'I_vdd1', 't3', 'v_dd1', 
                                                                                                 't4', 'I_out2', 't5', 'v_out2', 't6', 'I_vdd2', 't7', 'v_dd2', 
                                                                                                 't8', 'I_out3', 't9', 'v_out3', 't10', 'I_vdd3', 't11', 'v_dd3', 
                                                                                                 't12', 'I_out4', 't13', 'v_out4', 't14', 'I_vdd4', 't15', 'v_dd4', 
                                                                                                 't16', 'I_out5', 't17', 'v_out5', 't18', 'I_vdd5', 't19', 'v_dd5', 
                                                                                                 't20', 'I_out6', 't21', 'v_out6', 't22', 'I_vdd6', 't23', 'v_dd6', 
                                                                                                 't24', 'I_out7', 't25', 'v_out7', 't26', 'I_vdd7', 't27', 'v_dd7'])

I_out_1 = spice_data_tt['I_out1'].dropna().tolist()
V_out_1 = spice_data_tt['v_out1'].dropna().tolist()
I_vdd_1 = spice_data_tt['I_vdd1'].dropna().tolist()
V_dd_1 = spice_data_tt['v_dd1'].dropna().tolist()

P_out_1 = np.mean(I_out_1)*np.mean(V_out_1)
P_in_1 = -np.mean(I_vdd_1)*np.mean(V_dd_1)

eff_1 = P_out_1/P_in_1

I_out_2 = spice_data_tt['I_out2'].dropna().tolist()
V_out_2 = spice_data_tt['v_out2'].dropna().tolist()
I_vdd_2 = spice_data_tt['I_vdd2'].dropna().tolist()
V_dd_2 = spice_data_tt['v_dd2'].dropna().tolist()

P_out_2 = np.mean(I_out_2)*np.mean(V_out_2)
P_in_2 = -np.mean(I_vdd_2)*np.mean(V_dd_2)
print(np.mean(I_vdd_2),'i_vdd2')
print(np.mean(I_out_1))
eff_2 = P_out_2/P_in_2

I_out_3 = spice_data_tt['I_out3'].dropna().tolist()
V_out_3 = spice_data_tt['v_out3'].dropna().tolist()
I_vdd_3 = spice_data_tt['I_vdd3'].dropna().tolist()
V_dd_3 = spice_data_tt['v_dd3'].dropna().tolist()

P_out_3 = np.mean(I_out_3)*np.mean(V_out_3)
P_in_3 = -np.mean(I_vdd_3)*np.mean(V_dd_3)

eff_3 = P_out_3/P_in_3

I_out_4 = spice_data_tt['I_out4'].dropna().tolist()
V_out_4 = spice_data_tt['v_out4'].dropna().tolist()
I_vdd_4 = spice_data_tt['I_vdd4'].dropna().tolist()
V_dd_4 = spice_data_tt['v_dd4'].dropna().tolist()

P_out_4 = np.mean(I_out_4)*np.mean(V_out_4)
P_in_4 = -np.mean(I_vdd_4)*np.mean(V_dd_4)

eff_4 = P_out_4/P_in_4

I_out_5 = spice_data_tt['I_out5'].dropna().tolist()
V_out_5 = spice_data_tt['v_out5'].dropna().tolist()
I_vdd_5 = spice_data_tt['I_vdd5'].dropna().tolist()
V_dd_5 = spice_data_tt['v_dd5'].dropna().tolist()

P_out_5 = np.mean(I_out_5)*np.mean(V_out_5)
P_in_5 = -np.mean(I_vdd_5)*np.mean(V_dd_5)

eff_5 = P_out_5/P_in_5

I_out_6 = spice_data_tt['I_out6'].dropna().tolist()
V_out_6 = spice_data_tt['v_out6'].dropna().tolist()
I_vdd_6 = spice_data_tt['I_vdd6'].dropna().tolist()
V_dd_6 = spice_data_tt['v_dd6'].dropna().tolist()

P_out_6 = np.mean(I_out_6)*np.mean(V_out_6)
P_in_6 = -np.mean(I_vdd_6)*np.mean(V_dd_6)

eff_6 = P_out_6/P_in_6

I_out_7 = spice_data_tt['I_out7'].dropna().tolist()
V_out_7 = spice_data_tt['v_out7'].dropna().tolist()
I_vdd_7 = spice_data_tt['I_vdd7'].dropna().tolist()
V_dd_7 = spice_data_tt['v_dd7'].dropna().tolist()

P_out_7 = np.mean(I_out_7)*np.mean(V_out_7)
P_in_7 = -np.mean(I_vdd_7)*np.mean(V_dd_7)

eff_7 = P_out_7/P_in_7

curr_arr = [0.0115,0.075,0.15,0.3,0.6,1.2,3.3]
eff_arr_tt = np.multiply([eff_1, eff_2, eff_3, eff_4, eff_5, eff_6, eff_7],100)
# eff_arr_ss =  np.multiply([eff_50mA_ss, eff_100mA_ss, eff_250mA_ss, eff_500mA_ss, eff_750mA_ss, eff_1A_ss, eff_3A_ss],100)
# eff_arr_ff =  np.multiply([eff_50mA_ff, eff_100mA_ff, eff_250mA_ff, eff_500mA_ff, eff_750mA_ff, eff_1A_ff, eff_3A_ff],100)
plt.plot(curr_arr, eff_arr_tt, marker='x', linestyle='-', color='b', markeredgewidth=2.5, linewidth=2.5,label='TT, VDD, 27°C')
# plt.plot(curr_arr, eff_arr_ss, marker='x', linestyle='-', color='r', markeredgewidth=2.5, linewidth=2.5, label='SS, 0.9VDD, -40°C')
# plt.plot(curr_arr, eff_arr_ff, marker='x', linestyle='-', color='k', markeredgewidth=2.5, linewidth=2.5, label='FF, 1.1VDD, 125°C')
plt.xlabel('Current (A)')
plt.ylabel('Efficiency (%)')
plt.title('Converter efficiency curve')
# plt.xticks(fontproperties=cmu_font)
# plt.yticks(fontproperties=cmu_font)
# plt.legend(prop=cmu_font)
plt.grid(True)
plt.tight_layout()
plt.show()
