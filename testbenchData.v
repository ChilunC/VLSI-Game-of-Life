module dataPath_tb();

reg in_clka, in_clkb, in_restart;
wire con_loseSig;

wire [15:0] out_MuxData;
wire [15:0] out_MemBData;
reg con_loadData, con_readData, con_writeData, con_writeout, in_DataIn;

parameter A10  = 16'b0110010101010101, B1= 16'b0000000000000010, C1 = 16'b0000000000000001, D1= 16'b0000000000000010;
parameter A1 = 16'b0000000000000000;
parameter A2 = 3'b010, B2 = 3'b011, C2 = 3'b010, D2 = 3'b011;
parameter A3 = 3'b011, B3 = 3'b100, C3 = 3'b011, D3 = 3'b100;
parameter CLEAR = 3'b000;
parameter BEG = 9'b000000000;


//wire [2:0] out_state;
//wire [2:0] out_substate;
reg [8:0] sub_count;
reg [8:0] tempsub_count;
wire [2:0] out_temp_addNumTest;
//wire out_DO0, out_DO1, out_DO2, out_DO3;

//create an FSM instance.
//module top_module(in_clka, in_clkb,con_loadData,con_readData,con_writeData,con_loadData, con_readData, con_writeData,con_writeout,in_MuxData,out_MuxDataOut,con_loseSig,out_win,out_state);
/*
top_module U3 (.in_clka (in_clka),
           .in_clkb (in_clkb),
           .con_loadData (con_loadData),
	   .con_readData (con_readData),
	   .con_writeData (con_writeData),
	   .con_loadData (con_loadData),
	   .con_readData (con_readData),
       .con_writeData (con_writeData),
       .con_writeout (con_writeout),
       .in_MuxData (in_MuxData),
       .out_MuxDataOut (ou_MuxDataOut),
       .con_loseSig (con_loseSig),
       .out_win (out_win),
	   .out_state (out_state)
	   );
*/

//create an FSM instance.
/*
mainFSM U3 (.clka (in_clka),
           .clkb (in_clkb),
           .inp (con_loadData),
	   .run (con_readData),
	   .wai (con_writeData),
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
           .inp (con_loadData),
	   .run (con_readData),
	   .wai (con_writeData),
	   .loadData (con_loadData),
	   .readData (con_readData),
       .writeData (con_writeData),
	.win (con_win),
       .count (sub_count),
       .state (out_state)
          );
*/          
dataPath U2 (.clka (in_clka),
	   .clkb (in_clkb),
	   .restart (in_restart),
	   .loadData (con_loadData),
	   .readData (con_readData),
	   .writeData (con_writeData),
	   .writeout (con_writeout),
	   .MuxData (out_MuxData),
	   .MemBData (out_MemBData),
	   .DataIn (in_DataIn),
	   .loseSig (con_loseSig),
	   .count (sub_count),
	   .temp_addNumTest (out_temp_addNumTest)
        );
		  
//module dataPath (clka,clkb,restart, loadData, readData, writeData,writeout,MuxData, MemBData, DataIn, loseSig,count, temp_addNumTest);

initial
begin

// cycle 0
//in_MuxData = A1;
in_restart = 1;
con_loadData = 0;
con_readData= 0;
con_writeData = 0;
//in_DataIn = A1[0];
con_writeout = 0;
sub_count = BEG;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;

#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

//in_MuxData = A1 (0);
in_restart = 0;
con_loadData = 1;
con_readData= 0;
con_writeData = 1;
in_DataIn = A1[0];
con_writeout = 0;
sub_count = BEG;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;

#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

//in_MuxData = A1 (0);
in_restart = 0;
con_loadData = 1;
con_readData= 0;
con_writeData = 1;
in_DataIn = A1[1];
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;

#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 1 Restart (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[2];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 2 Idle (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[3];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 3 Not (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[4];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 4 Not (2)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[5];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 5 Not (3)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[6];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 6 Not (4)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[7];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 7 idle (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[8];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 8 load (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[9];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 9 load (2)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[10];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 10 load (3)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[11];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


// cycle 11 load and not (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[12];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (2)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[13];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (3)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[14];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 13 load (1)
con_loadData = 1;
con_readData = 0;
con_writeData = 1;
con_writeout = 0;
in_DataIn = A1[15];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (2)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 0;
//in_DataIn = A1[15];
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (3)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 1;
//in_DataIn = A1[16];
sub_count = BEG;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (3)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
//in_DataIn = A1[16];
sub_count = BEG;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 8 load (4)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = BEG; //tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 9 load (1)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = BEG; //tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 10 load (2)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


// cycle 11 load and not (3)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (4)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (5)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 13 load (6)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (7)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (8)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 8 load (9)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 9 load (10)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 10 load (11)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


// cycle 11 load and not (12)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (13)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (14)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 13 load (15)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 8 load (4)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 0;
sub_count = BEG; //tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 9 load (1)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 10 load (2)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


// cycle 11 load and not (3)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (4)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (5)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 13 load (6)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (7)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load (8)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 8 load (9)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 9 load (10)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 10 load (11)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


// cycle 11 load and not (12)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (13)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 load and not (14)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 13 load (15)
con_loadData = 0;
con_readData = 1;
con_writeData = 1;
con_writeout = 0;
sub_count = tempsub_count+1'b1;
tempsub_count = sub_count;
in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1
// cycle 12 restart (1)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 0;
//sub_count = tempsub_count+1'b1;
//tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1
// cycle 12 restart (1)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 1;
//sub_count = tempsub_count+1'b1;
//tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 restart (1)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 0;
//sub_count = tempsub_count+1'b1;
//tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1

// cycle 12 restart (1)
con_loadData = 0;
con_readData = 0;
con_writeData = 0;
con_writeout = 0;
//sub_count = tempsub_count+1'b1;
//tempsub_count = sub_count;

in_clka = 0;
in_clkb = 0;
#1
in_clka = 1;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 0;
#1
in_clka = 0;
in_clkb = 1;
#1


$dumpfile ("FSM_tb.vcd"); 
$dumpvars; 
$display ("in_clka, \t in_clkb, \t con_loadData, \t con_readData, \t con_writeData");

    
$stop;
end 

endmodule
