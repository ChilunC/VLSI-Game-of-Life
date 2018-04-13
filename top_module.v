//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : top file call main_FSM controller.
//               When in_load goes high, main_FSM issues start
//               to count_FSM which produces 4 control pulses.
//               The dp datapath then uses the 4 control pulses to
//               serially shift in in_d_in to a register. The dp
//               then increments that value and returns the value to
//               this top module.
//-----------------------------------------------------
//module top_module (in_clka, in_clkb, in_restart, in_load, out_start, out_state_main, in_d_in, out_d_out);
module top_module(in_clka, in_clkb,in_inp,in_run,in_wai,con_loadData, con_readData, con_writeData,con_writeout,in_MuxData,out_MuxDataOut,con_loseSig,out_win,out_state);
//-------------Input Ports-----------------------------
//input   in_clka, in_clkb, in_restart, in_load, in_d_in;
input    in_clka, in_clkb,in_inp,in_run,in_wai,in_MuxData [15:0];

//-------------Output Ports----------------------------
//output  out_start;
//output [1:0] out_state_main; 
//output [3:0] out_d_out;
output out_state[2:0], out_MuxDataOut [15:0];
//output con_same, con_savepattern, con_savetest, out_match,out_error,con_clearCon, con_loadA, con_loadB, con_loadC, con_loadD;
output con_loadData,con_readData,con_writeData,con_writeout,con_loseSig,out_win;
//output out_DO0, out_DO1, out_DO2, out_DO3;
//-------------Input ports Data Type-------------------
wire    in_clka, in_clkb, in_inp,in_run,in_wai;
wire [15:0] in_MuxData;
wire     [8:0] con_count      ;

//-------------Output Ports Data Type------------------
//wire     out_start;
//wire in_done;
//wire  [1:0] out_state_main;
//wire  [3:0] out_state_count;
//wire in_d_in;
//wire  [3:0] out_d_out;
//wire  [3:0] out_op_right;
//module dataPath (clka,clkb,xData, yData, accumData, accumCon, loadX,loadY, loadTemp, clearCon);
//reg in_clka, in_clkb, in_restart, in_load, in_Not, in_data0, in_data1, in_data2, in_data3;
wire con_loadData,con_readData,con_writeData,con_writeout,con_loseSig,out_win;
wire [15:0] out_MuxDataOut;


wire [3:0] out_state;
//----------Code startes Here------------------------

dataPath U2 (.clka (in_clka),
           .clkb (in_clkb),
	   .loadData (con_loadData),
	   .readData (con_readData),
       .writeData (con_writeData),
	   .writeout (con_writeout),
       .MuxData (in_MuxData),
       .MuxDataOut (out_MuxDataOut),
       .loseSig (con_loseSig),
       .count (con_count)
          );
          
//module dataPath (clka,clkb,loadData, readData, writeData,writeout,MuxData,MuxDataOut, loseSig,count);

 FSM U1 (.clka (in_clka),
           .clkb (in_clkb),
           .inp (in_inp),
        .run (in_run),
        .wai (in_wai),
       .loadData (con_loadData),
       .readData (con_readData),
	   .writeData (con_writeData),
	   .writeout (con_writeout),
	   .win (out_win),
       .loseSig (con_loseSig),
       .count (con_count),
       .state (out_state)
          );
          

//module FSM (clka, clkb, inp, run, wai, loadData,readData,writeData,writeout, win, state,count);;





endmodule // End of Module top_module
                                    

                                    
