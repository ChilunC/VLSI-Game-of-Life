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
| top_module U3 (.in_clka (in_clka),
|           .in_clkb (in_clkb),
|		   .in_timer5 (in_timer5),
|           .in_inp (in_inp),
|	   .in_run (in_run),
|	   .in_wai (in_wai),
|	   .in_reset (in_reset),
|	   .in_DataIn (in_DataIn),
|	   .con_loadData (con_loadData),
|	   .con_readData (con_readData),
|       .con_writeData (con_writeData),
|       .con_writeout (con_writeout),
|	   .con_restart (con_restart),
|       .out_MuxData (out_MuxData),
|	   .out_MemBData (out_MemBData),
|	   .out_lose (out_lose),
|       .out_win (out_win),
|	   .out_state (out_state),
|	   .con_count (con_count),
|	   .con_countWriteout (con_countWriteout)
|	   );
| ana in_clka in_clkb in_restart in_strtPipe in_xData\[0\] in_xData\[1\] in_xData\[2\] in_xData\[3\] in_yData\[0\] in_yData\[1\] in_yData\[2\] in_yData\[3\] out_accumData\[0\] out_accumData\[1\] out_accumData\[2\] out_accumData\[3\] 
| set a 1
| set b 0
| set c 1
| set d 0
| set e 1
| set f 0
| set g 1
| set h 0
| set i 1
| set j 0
| set k 1
| set l 0
| set m 1
| set n 0
| set o 1
| set p 0

ana in_clka in_clkb in_timer5 in_reset in_inp in_run in_wai out_MuxData\[0\] out_MuxData\[1\] out_MuxData\[2\] out_MuxData\[3\] out_MuxData\[4\] out_MuxData\[5\] out_MuxData\[6\] out_MuxData\[7\] out_MuxData\[8\] out_MuxData\[9\] out_MuxData\[10\] out_MuxData\[11\] out_MuxData\[12\] out_MuxData\[13\] out_MuxData\[14\] out_MuxData\[15\]  in_DataIn con_loadData con_readData con_writeData con_writeout con_restart out_lose out_win
w   in_clka in_clkb in_timer5 in_reset in_inp in_run in_wai out_MuxData\[0\] out_MuxData\[1\] out_MuxData\[2\] out_MuxData\[3\] out_MuxData\[4\] out_MuxData\[5\] out_MuxData\[6\] out_MuxData\[7\] out_MuxData\[8\] out_MuxData\[9\] out_MuxData\[10\] out_MuxData\[11\] out_MuxData\[12\] out_MuxData\[13\] out_MuxData\[14\] out_MuxData\[15\]  in_DataIn con_loadData con_readData con_writeData con_writeout con_restart out_lose out_win

| cycle 1 Restart (1)
V in_reset 1
V in_inp 0
V in_run 0
V in_wai 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R


| cycle 1 Restart (2)


V in_reset 0
V in_inp 1
V in_run 0
V in_wai 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 0 Input (2)


V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R



| cycle 2 Idle (1)
V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)


V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)
V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)

V in_inp 1
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 2 Idle (1)


V in_inp 0
V in_run 0
V in_wai 0
V in_DataIn 0
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 3 Not (1)


V in_inp 0
V in_run 0
V in_wai 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 4 Not (2)


V in_inp 0
V in_run 0
V in_wai 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 5 Not (3)


V in_inp 0
V in_run 0
V in_wai 1
V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 6 Not (4)


V in_inp 0
V in_run 0
V in_wai 1

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 7 idle (1)

V in_inp 0
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 idle (1)
V in_inp 0
V in_run 0
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 idle (1)
V in_inp 0
V in_run 0
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 1 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 1 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 1 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 2 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 2 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 2 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  End cycle 3 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 3 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 3 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 3 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 4 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 4 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 4 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 24IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 5 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 5 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 5 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 6 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 6 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 6 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 7 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 7 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 7 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 8 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 8 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 8 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 9 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 9 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 9 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 10 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 10 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 10 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 11 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 11 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 11 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 12 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 12 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 12 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (2)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (3)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 13 Run (4)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (5)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (6)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (7)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (8)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (9)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (10)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (11)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (12)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


|  cycle 13 Run (13)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (14)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (15)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 Run (16)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 writeOut (1)
V in_inp 0
V in_run 1
V in_wai 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 IDLE (1)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 0

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R

|  cycle 13 IDLE (2)
V in_inp 0
V in_run 1
V in_wai 0
V in_timer5 1

V in_clka 0 1 0 0
V in_clkb 0 0 0 1
clock Vdd 1
R


| cycle 8 Run (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 9 Run (2)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 10 Run (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R


| cycle 11 Run and not (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (2)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 13 Run (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (2)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 8 Run (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 9 Run (2)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 10 Run (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R


| cycle 11 Run and not (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (2)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 13 Run (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (2)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (3)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 8 Run (1)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 9 Run (2)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 10 Run (3)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R


| cycle 11 Run and not (1)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (2)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run and not (3)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 13 Run (1)


V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (2)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 Run (3)

V in_inp 0
V in_run 1
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 idle (1)

V in_inp 0
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 not (1)

V in_inp 0
V in_run 0
V in_wai 1

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 not (2)

V in_inp 0
V in_run 0
V in_wai 1

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 idle (1)

V in_inp 1
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R

| cycle 12 restart (1)

V in_inp 1
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R
| cycle 12 restart (2)

V in_inp 1
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R
| cycle 12 restart (3)

V in_inp 1
V in_run 0
V in_wai 0

V  in_clka 0 1 0 0
V  in_clkb 0 0 0 1
clock Vdd 1
R



