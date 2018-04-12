//-----------------------------------------------------
// File Name   : 2 Phase Clock fsm_using_function.v  0 - 3 - 1 - 2 
// with count hold input and odd output
//-----------------------------------------------------
//module FSM (clka, clkb, restart, clearCon, strtPipe, loadV, loadX,loadY,loadW,loadR1,loadR2,state);
module dataPath (clka,clkb,restart, loadData, readData, writeData,writeout,MuxData,MuxDataOut, DataIn, loseSig,count);
//-------------Input Ports-----------------------------
input   clka,clkb,restart, loadData, readData, writeData, writeout, DataIn, MuxData[15:0], count[8:0];
//-------------Output Ports----------------------------
output  loseSig, MuxDataOut[15:0]; 
wire loadData, readData, writeData,writeout, DataIn;
//wire A, B,C, D;
//reg tempA, tempB,tempC, tempD;
//reg nextA, nextB,nextC, nextD;

wire tempSimBit;
reg NextBData;
reg contin, loseSig;
//reg [3:0]accumData;
//-------------Input ports Data Type-------------------
//wire    loadData, notData, clearData, data0,data1,data2,data3;
//-------------Output Ports Data Type------------------
//reg     accumData[3:0]; 
//Internal Constants--------------------------
parameter SIZE = 16;
parameter SIZE1 = 9;
parameter SIZEC = 4;
parameter SIZENUM = 3;

parameter CLEARCOUN  = 4'b0000, CLEARADD = 3'b000, LOAD= 3'b001, NOT = 3'b101, NOLOAD= 3'b010, RESTART = 3'b111;
parameter FIN = 4'b1111, ZERO = 4'b0000, ONE = 4'b0001, TWO = 4'b0010, THREE = 4'b0011, FOUR = 4'b0100, FIVE = 4'b0101, SIX = 4'b0110, SEVEN = 4'b0111, EIGHT = 4'b1000;
parameter NINE = 4'b1001, TEN = 4'b1010, ELEVEN = 4'b1011, TWELVE = 4'b1100, THIRTEEN = 4'b1101, FOURTEEN = 4'b1110, FIFTEEN = 4'b1111;
parameter TWOONECYCLE = 9'b0000, TWOCYCLE = 9'b100000000, ONEITER = 9'b000000001;
parameter CLEAR = 16'b0000000000000000;

//-------------Internal Variables---------------------------
wire  [SIZE-1:0]          MuxData           ;
reg  [SIZE-1:0]          MuxDataOut           ;
wire     [SIZE1-1:0]         count      ;
//reg   [SIZE-1:0]          accumData        ;// Seq part of the FSM
//wire   [SIZE-1:0]          temp_accumData   ;// Internal state reg
//reg   [SIZE-1:0]          next_accumData   ;// combo part of FSM

reg     [SIZENUM-1:0]       addNum          ;
wire    [SIZENUM-1:0]       temp_addNum     ;

wire  TempMuxData           ;
//wire  [SIZE-1:0]          NextMuxData           ;
//wire  [SIZE-1:0]          Temp2MuxData           ;


wire  [SIZE-1:0]          temp_InData           ;
reg  [SIZE-1:0]          MemBData           ;
reg          fin_SimBit          ;
reg memBHold;

//reg   [SIZE-1:0]          r1Data        ;// Seq part of the FSM
//wire   [SIZE-1:0]          temp_r1Data   ;// Internal state reg
//reg   [SIZE-1:0]          next_r1Data   ;// combo part of FSM

//reg   [SIZE-1:0]          r2Data        ;// Seq part of the FSM
//wire   [SIZE-1:0]          temp_r2Data   ;// Internal state reg
//reg   [SIZE-1:0]          next_r2Data   ;// combo part of FSM
//reg   [SIZE-1:0]          next_accumData   ;// combo part of FSM
//----------Code startes Here------------------------
//assign notData_q = notData & clka;
//assign control =  loadData | notData | clearData;
//----------Seq Logic-----------------------------
//assign loadTempCon = loadTemp & clkb;
//----------Code startes Here------------------------
//assign NextMuxData = 
assign MuxData = MuxDataOut;
assign tempSimBit = mux_function(MuxData,count);
assign temp_addNum = add_function(count,MuxData);
assign TempMuxData = DataIn; //memBInp_function(count,DataIn);
assign temp_InData = MuxData;
//----------Function for Combo Logic-----------------
function mux_function;
  //input  hold;
  input [SIZE-1:0] MuxData;
  input [SIZE1-1:0] count;
  //input nextC;
  //input nextD;
    if (count[SIZEC-1:0]==ZERO) begin
        mux_function = MuxData[0];
    end else if(count[SIZEC-1:0]==ONE) begin
        mux_function = MuxData[1];
    end else if(count[SIZEC-1:0]==TWO) begin
        mux_function = MuxData[2];
    end else if(count[SIZEC-1:0]==THREE) begin
        mux_function = MuxData[3];
    end else if(count[SIZEC-1:0]==FOUR) begin
        mux_function = MuxData[4];
    end else if(count[SIZEC-1:0]==FIVE) begin
        mux_function = MuxData[5];
    end else if(count[SIZEC-1:0]==SIX) begin
        mux_function = MuxData[6];
    end else if(count[SIZEC-1:0]==SEVEN) begin
        mux_function = MuxData[7];
    end else if(count[SIZEC-1:0]==EIGHT) begin
        mux_function = MuxData[8];
    end else if(count[SIZEC-1:0]==NINE) begin
        mux_function = MuxData[9];
    end else if(count[SIZEC-1:0]==TEN) begin
        mux_function = MuxData[10];
    end else if(count[SIZEC-1:0]==ELEVEN) begin
        mux_function = MuxData[11];
    end else if(count[SIZEC-1:0]==TWELVE) begin
        mux_function = MuxData[12];
    end else if(count[SIZEC-1:0]==THIRTEEN) begin
        mux_function = MuxData[13];
    end else if(count[SIZEC-1:0]==FOURTEEN) begin
        mux_function = MuxData[14];
    end else if(count[SIZEC-1:0]==FIFTEEN) begin  
        mux_function = MuxData[15];    
    end
endfunction

function [SIZEC-1:0]add_function;
  //input  hold;
  input [SIZE1-1:0] count;
  input [SIZE-1:0]  MuxData;
  //input addNum;
  //input fin_SimBit;  
  
    if (count[SIZEC-1:0]==ZERO) begin
        add_function = MuxData[1]+MuxData[4]+MuxData[5]+MuxData[15]+MuxData[12]+MuxData[13]+MuxData[3]+MuxData[7];
    end else if(count[SIZEC-1:0]==ONE) begin
        add_function = MuxData[0]+MuxData[4]+MuxData[5]+MuxData[6]+MuxData[2]+MuxData[12]+MuxData[13]+MuxData[14];
    end else if(count[SIZEC-1:0]==TWO) begin
        add_function = MuxData[1]+MuxData[5]+MuxData[6]+MuxData[7]+MuxData[3]+MuxData[13]+MuxData[14]+MuxData[15];
    end else if(count[SIZEC-1:0]==THREE) begin
        add_function = MuxData[2]+MuxData[6]+MuxData[7]+MuxData[4]+MuxData[0]+MuxData[14]+MuxData[15]+MuxData[12];
    end else if(count[SIZEC-1:0]==FOUR) begin
        add_function = MuxData[7]+MuxData[11]+MuxData[8]+MuxData[9]+MuxData[5]+MuxData[3]+MuxData[0]+MuxData[1];
    end else if(count[SIZEC-1:0]==FIVE) begin
        add_function = MuxData[4]+MuxData[8]+MuxData[9]+MuxData[10]+MuxData[6]+MuxData[0]+MuxData[1]+MuxData[2];
    end else if(count[SIZEC-1:0]==SIX) begin
        add_function = MuxData[5]+MuxData[9]+MuxData[10]+MuxData[11]+MuxData[7]+MuxData[1]+MuxData[2]+MuxData[3];
    end else if(count[SIZEC-1:0]==SEVEN) begin
        add_function = MuxData[6]+MuxData[10]+MuxData[11]+MuxData[8]+MuxData[4]+MuxData[2]+MuxData[3]+MuxData[0];
    end else if(count[SIZEC-1:0]==EIGHT) begin
        add_function = MuxData[11]+MuxData[15]+MuxData[12]+MuxData[13]+MuxData[9]+MuxData[7]+MuxData[4]+MuxData[5];
    end else if(count[SIZEC-1:0]==NINE) begin
        add_function = MuxData[8]+MuxData[12]+MuxData[13]+MuxData[14]+MuxData[10]+MuxData[4]+MuxData[5]+MuxData[6];
    end else if(count[SIZEC-1:0]==TEN) begin
        add_function = MuxData[9]+MuxData[13]+MuxData[14]+MuxData[15]+MuxData[11]+MuxData[5]+MuxData[6]+MuxData[7];
    end else if(count[SIZEC-1:0]==ELEVEN) begin
        add_function = MuxData[10]+MuxData[14]+MuxData[15]+MuxData[12]+MuxData[8]+MuxData[6]+MuxData[7]+MuxData[4];
    end else if(count[SIZEC-1:0]==TWELVE) begin
        add_function = MuxData[15]+MuxData[3]+MuxData[0]+MuxData[1]+MuxData[13]+MuxData[11]+MuxData[8]+MuxData[9];
    end else if(count[SIZEC-1:0]==THIRTEEN) begin
        add_function = MuxData[12]+MuxData[0]+MuxData[1]+MuxData[2]+MuxData[14]+MuxData[8]+MuxData[9]+MuxData[10];
    end else if(count[SIZEC-1:0]==FOURTEEN) begin
        add_function = MuxData[13]+MuxData[1]+MuxData[2]+MuxData[3]+MuxData[15]+MuxData[9]+MuxData[10]+MuxData[11];
    end else if(count[SIZEC-1:0]==FIFTEEN) begin  
        add_function = MuxData[14]+MuxData[2]+MuxData[3]+MuxData[0]+MuxData[12]+MuxData[10]+MuxData[11]+MuxData[8];  
    end
endfunction

/*
function [SIZE-1:0] memBInp_function;
  //input  hold;
  input [SIZE1-1:0] count;
  input DataIn;
  
    if (count[SIZEC-1:0]==ZERO) begin
        memBHold[0] = tempToB;
    end else if(count[SIZEC-1:0]==ONE) begin
        memBHold[1] = tempToB;
    end else if(count[SIZEC-1:0]==TWO) begin
        memBHold[2] = tempToB;
    end else if(count[SIZEC-1:0]==THREE) begin
        memBHold[3] = tempToB;
    end else if(count[SIZEC-1:0]==FOUR) begin
        memBHold[4] = tempToB;
    end else if(count[SIZEC-1:0]==FIVE) begin
        memBHold[5] = tempToB;
    end else if(count[SIZEC-1:0]==SIX) begin
        memBHold[6] = tempToB;
    end else if(count[SIZEC-1:0]==SEVEN) begin
        memBHold[7] = tempToB;
    end else if(count[SIZEC-1:0]==EIGHT) begin
        memBHold[8] = tempToB;
    end else if(count[SIZEC-1:0]==NINE) begin
        memBHold[9] = tempToB;
    end else if(count[SIZEC-1:0]==TEN) begin
        memBHold[10] = tempToB;
    end else if(count[SIZEC-1:0]==ELEVEN) begin
        memBHold[11] = tempToB;
    end else if(count[SIZEC-1:0]==TWELVE) begin
        memBHold[12] = tempToB;
    end else if(count[SIZEC-1:0]==THIRTEEN) begin
        memBHold[13] = tempToB;
    end else if(count[SIZEC-1:0]==FOURTEEN) begin
        memBHold[14] = tempToB;
    end else if(count[SIZEC-1:0]==FIFTEEN) begin  
        memBHold[15] = tempToB;    
    end 
    
    memB_function = memBHold;
endfunction
*/


//always @ (posedge clkb)
//begin : 

always @ (posedge clka)
begin : Load_SEQ2
//  rreg[0] = data[0];
//  rreg[1] = data[1];
//  rreg[2] = data[2];
//  rreg[3] = data[3];
	if(restart ==1'b1) begin
		MemBData = CLEAR;
		
	end
    if(loadData==1'b1) begin
        if (count[SIZEC-1:0]==ZERO) begin
			MemBData[0] = NextBData;
		end else if(count[SIZEC-1:0]==ONE) begin
			MemBData[1] = NextBData;
		end else if(count[SIZEC-1:0]==TWO) begin
			MemBData[2] = NextBData;
		end else if(count[SIZEC-1:0]==THREE) begin
			MemBData[3] = NextBData;
		end else if(count[SIZEC-1:0]==FOUR) begin
			MemBData[4] = NextBData;
		end else if(count[SIZEC-1:0]==FIVE) begin
			MemBData[5] = NextBData;
		end else if(count[SIZEC-1:0]==SIX) begin
			MemBData[6] = NextBData;
		end else if(count[SIZEC-1:0]==SEVEN) begin
			MemBData[7] = NextBData;
		end else if(count[SIZEC-1:0]==EIGHT) begin
			MemBData[8] = NextBData;
		end else if(count[SIZEC-1:0]==NINE) begin
			MemBData[9] = NextBData;
		end else if(count[SIZEC-1:0]==TEN) begin
			MemBData[10] = NextBData;
		end else if(count[SIZEC-1:0]==ELEVEN) begin
			MemBData[11] = NextBData;
		end else if(count[SIZEC-1:0]==TWELVE) begin
			MemBData[12] = NextBData;
		end else if(count[SIZEC-1:0]==THIRTEEN) begin
			MemBData[13] = NextBData;
		end else if(count[SIZEC-1:0]==FOURTEEN) begin
			MemBData[14] = NextBData;
		end else if(count[SIZEC-1:0]==FIFTEEN) begin  
			MemBData[15] = NextBData;    
		end 
    end
    
    if(readData==1'b1) begin
        fin_SimBit = tempSimBit;
        contin <=1'b0;
    end else begin
        fin_SimBit = fin_SimBit;
    end
    
    if(writeData==1'b1) begin
        if (addNum>3'b001) begin
            contin <= 1'b1;
        end
		
		if (count[SIZEC-1:0]==ZERO) begin
			MemBData[0] = cellSt;
		end else if(count[SIZEC-1:0]==ONE) begin
			MemBData[1] = cellSt;
		end else if(count[SIZEC-1:0]==TWO) begin
			MemBData[2] = cellSt;
		end else if(count[SIZEC-1:0]==THREE) begin
			MemBData[3] = cellSt;
		end else if(count[SIZEC-1:0]==FOUR) begin
			MemBData[4] = cellSt;
		end else if(count[SIZEC-1:0]==FIVE) begin
			MemBData[5] = cellSt;
		end else if(count[SIZEC-1:0]==SIX) begin
			MemBData[6] = cellSt;
		end else if(count[SIZEC-1:0]==SEVEN) begin
			MemBData[7] = cellSt;
		end else if(count[SIZEC-1:0]==EIGHT) begin
			MemBData[8] = cellSt;
		end else if(count[SIZEC-1:0]==NINE) begin
			MemBData[9] = cellSt;
		end else if(count[SIZEC-1:0]==TEN) begin
			MemBData[10] = cellSt;
		end else if(count[SIZEC-1:0]==ELEVEN) begin
			MemBData[11] = cellSt;
		end else if(count[SIZEC-1:0]==TWELVE) begin
			MemBData[12] = cellSt;
		end else if(count[SIZEC-1:0]==THIRTEEN) begin
			MemBData[13] = cellSt;
		end else if(count[SIZEC-1:0]==FOURTEEN) begin
			MemBData[14] = cellSt;
		end else if(count[SIZEC-1:0]==FIFTEEN) begin  
			MemBData[15] = cellSt;    
		end 
        /*
        if ((addNum>=3'b011)&(addNum<=3'b101)) begin
                //tempToB = 1'b1;
			if (count[SIZEC-1:0]==ZERO) begin
				MemBData[0] = 1'b1;
			end else if(count[SIZEC-1:0]==ONE) begin
				MemBData[1] = 1'b1;
			end else if(count[SIZEC-1:0]==TWO) begin
				MemBData[2] = 1'b1;
			end else if(count[SIZEC-1:0]==THREE) begin
				MemBData[3] = 1'b1;
			end else if(count[SIZEC-1:0]==FOUR) begin
				MemBData[4] = 1'b1;
			end else if(count[SIZEC-1:0]==FIVE) begin
				MemBData[5] = 1'b1;
			end else if(count[SIZEC-1:0]==SIX) begin
				MemBData[6] = 1'b1;
			end else if(count[SIZEC-1:0]==SEVEN) begin
				MemBData[7] = 1'b1;
			end else if(count[SIZEC-1:0]==EIGHT) begin
				MemBData[8] = 1'b1;
			end else if(count[SIZEC-1:0]==NINE) begin
				MemBData[9] = 1'b1;
			end else if(count[SIZEC-1:0]==TEN) begin
				MemBData[10] = 1'b1;
			end else if(count[SIZEC-1:0]==ELEVEN) begin
				MemBData[11] = 1'b1;
			end else if(count[SIZEC-1:0]==TWELVE) begin
				MemBData[12] = 1'b1;
			end else if(count[SIZEC-1:0]==THIRTEEN) begin
				MemBData[13] = 1'b1;
			end else if(count[SIZEC-1:0]==FOURTEEN) begin
				MemBData[14] = 1'b1;
			end else if(count[SIZEC-1:0]==FIFTEEN) begin  
				MemBData[15] = 1'b1;    
			end 
        end else begin
            //tempToB = 1'b0;
            if (count[SIZEC-1:0]==ZERO) begin
                MemBData[0] = 1'b0;
            end else if(count[SIZEC-1:0]==ONE) begin
                MemBData[1] = 1'b0;
            end else if(count[SIZEC-1:0]==TWO) begin
                MemBData[2] = 1'b0;
            end else if(count[SIZEC-1:0]==THREE) begin
                MemBData[3] = 1'b0;
            end else if(count[SIZEC-1:0]==FOUR) begin
                MemBData[4] = 1'b0;
            end else if(count[SIZEC-1:0]==FIVE) begin
                MemBData[5] = 1'b0;
            end else if(count[SIZEC-1:0]==SIX) begin
                MemBData[6] = 1'b0;
            end else if(count[SIZEC-1:0]==SEVEN) begin
                MemBData[7] = 1'b0;
            end else if(count[SIZEC-1:0]==EIGHT) begin
                MemBData[8] = 1'b0;
            end else if(count[SIZEC-1:0]==NINE) begin
                MemBData[9] = 1'b0;
            end else if(count[SIZEC-1:0]==TEN) begin
                MemBData[10] = 1'b0;
            end else if(count[SIZEC-1:0]==ELEVEN) begin
                MemBData[11] = 1'b0;
            end else if(count[SIZEC-1:0]==TWELVE) begin
                MemBData[12] = 1'b0;
            end else if(count[SIZEC-1:0]==THIRTEEN) begin
                MemBData[13] = 1'b0;
            end else if(count[SIZEC-1:0]==FOURTEEN) begin
                MemBData[14] = 1'b0;
            end else if(count[SIZEC-1:0]==FIFTEEN) begin  
                MemBData[15] = 1'b0;    
            end 
        end
		*/
    end
end

//always @ (posedge clkb)
//begin : 

always @ (posedge clkb)
begin : Load_SEQ
//  rreg[0] = data[0];
//  rreg[1] = data[1];
//  rreg[2] = data[2];
//  rreg[3] = data[3];
  if(restart==1'b1) begin
	MuxDataOut = CLEAR;
  end else if(loadData==1'b1) begin  
      addNum = CLEARADD;
      loseSig = 1'b0;
	  NextBData = TempMuxData;
  end else if (readData==1'b1) begin
      //addNum = temp_addNum;
	  cellSt = (temp_addNum>=3'b011)&(temp_addNum<=3'b101);
  end else if (writeData==1'b1) begin
      addNum = CLEARADD;
  end else if (writeout==1'b1) begin
      if(contin==1'b0) begin
        loseSig = 1'b1;
      end
      MuxDataOut = MemBData;
  end
end
/*
always @ (posedge loadData)
begin : Load_SEQ
//  rreg[0] = data[0];
//  rreg[1] = data[1];
//  rreg[2] = data[2];
//  rreg[3] = data[3];
  DO0 = data0;
  DO1 = data1;
  DO2 = data2;
  DO3 = data3;
end
//----------Output Logic
always @ (posedge clearData)
begin : Clear_SEQ
//  	rreg[0] = 1'b0;
//  	rreg[1] = 1'b0;
//  	rreg[2] = 1'b0;
//  	rreg[3] = 1'b0;

	DO0 = 1'b0;
	DO1 = 1'b0;
	DO2 = 1'b0;
	DO3 = 1'b0;
end // End Of Block OUTPUT_LOGIC
*/
//----------Output Logic
//always @ (posedge notData)
//begin : Not_SEQ
//	DO0 = ~DO0;
//  	DO1 = ~DO1;
//  	DO2 = ~DO2;
//  	DO3 = ~DO3;
//	DO[0] = rreg[0];
//	DO[1] = rreg[1];
//	DO[2] = rreg[2];
//	DO[3] = rreg[3];
//end // End Of Block OUTPUT_LOGIC

endmodule // End of Module FSM


