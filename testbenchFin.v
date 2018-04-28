module top_module_tb();

reg in_clka, in_clkb, in_timer5, in_inp, in_run, in_wai, in_reset, in_DataIn;
wire [15:0] out_MuxData;
wire [15:0] out_MemBData;
wire con_loadData, con_readData, con_writeData, out_win, out_lose, con_restart, out_finalbit;

//parameter B1  = 16'b0000000000000001, A1= 16'b1010010011010010, C1 = 16'b0000000000000001, D1= 16'b0000000000000010;
//Win Start
parameter A1  = 16'b1001000000001001;
//parameter A1  = 16'b0110111111110110;
//parameter A1  = 16'b0110000001100000;
//parameter A1  = 16'b0000011001100000;
//parameter A1  = 16'b1111100110011111;
//Lose Start
//parameter A1  = 16'b0000010011100100;
//parameter A1  = 16'b0000010011110100;
//parameter A1  = 16'b0000111111110000;

parameter A2 = 3'b010, B2 = 3'b011, C2 = 3'b010, D2 = 3'b011;
parameter A3 = 3'b011, B3 = 3'b100, C3 = 3'b011, D3 = 3'b100;
parameter CLEAR = 3'b000;


wire [2:0] out_state;
//wire [2:0] out_substate;
wire [3:0] con_count;
wire [8:0] con_countWriteout;
//wire out_DO0, out_DO1, out_DO2, out_DO3;

//create an FSM instance.
//module top_module(in_clka, in_clkb,in_timer5, in_inp,in_run,in_wai,in_reset,in_DataIn, con_loadData, con_readData, con_writeData,con_writeout,con_restart, out_MuxData,out_MemBData, out_lose,out_win,out_state, con_count,con_countWriteout);
top_module U3 (.in_clka (in_clka),
           .in_clkb (in_clkb),
		   .in_timer5 (in_timer5),
           .in_inp (in_inp),
	   .in_run (in_run),
	   .in_wai (in_wai),
	   .in_reset (in_reset),
	   .in_DataIn (in_DataIn),
	   .con_loadData (con_loadData),
	   .con_readData (con_readData),
       .con_writeData (con_writeData),
       .con_writeout (con_writeout),
	   .con_restart (con_restart),
       .out_MuxData (out_MuxData),
	   .out_MemBData (out_MemBData),
	   .out_lose (out_lose),
       .out_win (out_win),
	   .out_state (out_state),
	   .con_count (con_count),
	   .con_countWriteout (con_countWriteout)
	   );

//create an FSM instance.
/*
mainFSM U3 (.clka (in_clka),
           .clkb (in_clkb),
           .inp (in_inp),
	   .run (in_run),
	   .wai (in_wai),
	   .loadData (con_loadData),
	   .readData (con_readData),
       .writeData (con_writeData),
	.data0 (in_data0),
	   .data1 (in_data1),
	   .data2 (in_data2),
	   .data3 (in_data3),
	   .DO0 (out_DO0),
	   .DO1 (out_DO1),
	   .DO2 (out_DO2),
   	   .DO3 (out_DO3)
	   );

 FSM U1 (.clka (in_clka),
           .clkb (in_clkb),
           .inp (in_inp),
	   .run (in_run),
	   .wai (in_wai),
	   .loadData (con_loadData),
	   .readData (con_readData),
       .writeData (con_writeData),
	.win (con_win),
       .count (sub_count),
       .state (out_state)
          );
*/          
//dataPath U2 (.data0 (in_data0),
//	   .data1 (in_data1),
//	   .data2 (in_data2),
//	   .data3 (in_data3),
//	   .loadData (con_loadData),
//	   .notData (con_readData),
//	   .clearData (con_writeData),
//	   .DO0 (out_DO0),
//	   .DO1 (out_DO1),
//	   .DO2 (out_DO2),
//   	   .DO3 (out_DO3)
//          );

initial
begin

// cycle 1 Restart (1)
in_reset = 1;
in_inp = 0;
in_run = 0;
in_wai = 0;
in_timer5 = 1;


in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 1 Restart (2)
in_reset = 0;
in_inp = 1;
in_run = 0;
in_wai = 0;


in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 0 Input (2)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[0];


in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;

#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2



// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[1];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[2];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[3];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[4];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[5];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[6];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[7];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[8];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[9];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[10];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[11];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[12];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[13];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[14];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 1;
in_run = 0;
in_wai = 0;
in_DataIn = A1[15];
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;
//in_DataIn = A1[16];

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Not (1)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Not (2)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Not (3)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Not (4)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 1 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 1 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 1 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 2 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 2 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 2 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// End cycle 3 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 3 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 3 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 3 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 4 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 4 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 4 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 24IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 5 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 5 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 5 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 6 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 6 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 6 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 7 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 7 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 7 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 8 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 8 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 9 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 9 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 9 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 10 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 10 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 10 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 11 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 11 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 11 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 12 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 12 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 12 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 13 Run (4)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (5)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (6)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (7)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (8)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (9)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (10)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (11)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (12)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle 13 Run (13)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (14)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (15)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 Run (16)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 writeOut (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 IDLE (1)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 13 IDLE (2)
in_inp = 0;
in_run = 1;
in_wai = 0;
in_timer5 = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle 8 load (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2


// cycle New load and not (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load and not (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load and not (3)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (1)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (2)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New load (27)
in_inp = 0;
in_run = 1;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New not (1)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New not (2)
in_inp = 0;
in_run = 0;
in_wai = 1;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

// cycle New restart (1)
in_inp = 1;
in_run = 0;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2
// cycle New restart (2)
in_inp = 1;
in_run = 0;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2
// cycle New restart (3)
in_inp = 1;
in_run = 0;
in_wai = 0;

in_clka = 0;
in_clkb = 0;
#2
in_clka = 1;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 0;
#2
in_clka = 0;
in_clkb = 1;
#2

$dumpfile ("FSM_tb.vcd"); 
$dumpvars; 
$display ("in_clka, \t in_clkb, \t in_inp, \t in_run, \t in_wai");

    
$stop;
end 

endmodule
