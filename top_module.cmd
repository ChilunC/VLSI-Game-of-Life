
|
| NANDProB2A.CmD.txt
|
| CommEnts
| ElEC422/527 
| CMOS NAND For AMI05
|
| SprinG 2018
| 
| loGFilE NANDtEst_sim.loG
ana in_clka in_clkb in_restart in_load in_Not in_data0 in_data1 in_data2 in_data3 con_loadData con_notData con_clearData out_DO0 out_DO1 out_DO2 out_DO3
w   in_clka in_clkb in_restart in_load in_Not in_data0 in_data1 in_data2 in_data3 con_loadData con_notData con_clearData out_DO0 out_DO1 out_DO2 out_DO3
| test
| idle (1)
V  in_data0 0
V  in_data1 1
V  in_data2 0
V  in_data3 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| in_restart(1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| idle (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| in_Not (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| in_Not (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| in_Not (3)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| in_Not (4)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| idle (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| in_load (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| in_load (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| in_load (3)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| in_Not and in_load (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 1

clock Vdd 1
R

| in_Not and in_load (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 1

clock Vdd 1
R

| in_Not and in_load (3)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 1

clock Vdd 1
R

| in_load (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| in_load (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| in_load (3)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 1
V  in_Not 0

clock Vdd 1
R

| idle (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| Not (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| Not (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 1

clock Vdd 1
R

| idle (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 0
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| restart (1)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| restart (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| restart (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| restart (2)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R

| restart (3)
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
V  in_restart 1
V  in_load 0
V  in_Not 0

clock Vdd 1
R








