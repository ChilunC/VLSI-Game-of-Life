module top_module_tb();

reg in_clka, in_clkb, in_inp, in_run, in_wai;
reg [15:0] in_MuxData;
wire con_loadData, con_readData, con_writeData, con_win;

parameter A1  = 16'b0000000000000001, B1= 16'b0000000000000010, C1 = 16'b0000000000000001, D1= 16'b0000000000000010;
parameter A2 = 3'b010, B2 = 3'b011, C2 = 3'b010, D2 = 3'b011;
parameter A3 = 3'b011, B3 = 3'b100, C3 = 3'b011, D3 = 3'b100;
parameter CLEAR = 3'b000;


wire [2:0] out_state;
//wire [2:0] out_substate;
wire [8:0] sub_count;
//wire out_DO0, out_DO1, out_DO2, out_DO3;

//create an FSM instance.
//module top_module(in_clka, in_clkb,in_inp,in_run,in_wai,con_loadData, con_readData, con_writeData,con_writeout,in_MuxData,out_MuxDataOut,con_loseSig,out_win,out_state);
top_module U3 (.in_clka (in_clka),
           .in_clkb (in_clkb),
           .in_inp (in_inp),
	   .in_run (in_run),
	   .in_wai (in_wai),
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

// cycle 0
in_inp = 0;
in_run = 0;
in_wai = 0;
in_MuxData = A1;


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
in_inp = 1;
in_run = 0;
in_wai = 0;

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
in_inp = 0;
in_run = 0;
in_wai = 0;

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
in_inp = 0;
in_run = 0;
in_wai = 1;

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
in_inp = 0;
in_run = 0;
in_wai = 1;

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
in_inp = 0;
in_run = 0;
in_wai = 1;

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
in_inp = 0;
in_run = 0;
in_wai = 1;

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
in_inp = 0;
in_run = 0;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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
in_inp = 0;
in_run = 1;
in_wai = 0;

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

// cycle 12 idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;

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

// cycle 12 not (1)
in_inp = 0;
in_run = 0;
in_wai = 1;

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

// cycle 12 not (2)
in_inp = 0;
in_run = 0;
in_wai = 1;

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

// cycle 12 idle (1)
in_inp = 0;
in_run = 0;
in_wai = 0;

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
in_inp = 1;
in_run = 0;
in_wai = 0;

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
// cycle 12 restart (2)
in_inp = 1;
in_run = 0;
in_wai = 0;

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
// cycle 12 restart (3)
in_inp = 1;
in_run = 0;
in_wai = 0;

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
$display ("in_clka, \t in_clkb, \t in_inp, \t in_run, \t in_wai");

    
$stop;
end 

endmodule



