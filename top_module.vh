/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Feb 28 12:15:55 2018
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_load, in_Not, 
        con_loadData, con_notData, con_clearData, in_data0, in_data1, in_data2, 
        in_data3, out_DO0, out_DO1, out_DO2, out_DO3, out_state );
  output [2:0] out_state;
  input in_clka, in_clkb, in_restart, in_load, in_Not, in_data0, in_data1,
         in_data2, in_data3;
  output con_loadData, con_notData, con_clearData, out_DO0, out_DO1, out_DO2,
         out_DO3;
  wire   \U2/n18 , \U2/n17 , \U2/n16 , \U2/n15 , \U2/n14 , \U2/n13 , \U2/n12 ,
         \U2/n11 , \U2/n10 , \U2/n9 , \U2/n8 , \U2/n7 , \U2/n6 , \U2/n5 ,
         \U2/n4 , \U2/n3 , \U2/n2 , \U2/n1 , \U1/n18 , \U1/n17 , \U1/n16 ,
         \U1/n15 , \U1/n14 , \U1/n13 , \U1/n12 , \U1/n11 , \U1/n10 , \U1/n9 ,
         \U1/n8 , \U1/n7 , \U1/n6 , \U1/n5 , \U1/n4 , \U1/n3 , \U1/n2 ,
         \U1/n1 , \U1/N56 , \U1/N55 , \U1/N54 , \U1/N41 , \U1/N40 , \U1/N39 ;
  wire   [2:0] \U1/next_state ;

  NAND3X1 \U2/U20  ( .A(\U2/n6 ), .B(\U2/n5 ), .C(con_notData), .Y(\U2/n14 )
         );
  NAND3X1 \U2/U19  ( .A(\U2/n6 ), .B(\U2/n5 ), .C(\U2/n14 ), .Y(\U2/n10 ) );
  AOI22X1 \U2/U18  ( .A(\U2/n4 ), .B(\U2/n1 ), .C(in_data3), .D(con_loadData), 
        .Y(\U2/n13 ) );
  OAI21X1 \U2/U17  ( .A(\U2/n10 ), .B(\U2/n1 ), .C(\U2/n13 ), .Y(\U2/n18 ) );
  AOI22X1 \U2/U16  ( .A(\U2/n4 ), .B(\U2/n2 ), .C(in_data0), .D(con_loadData), 
        .Y(\U2/n12 ) );
  OAI21X1 \U2/U15  ( .A(\U2/n10 ), .B(\U2/n2 ), .C(\U2/n12 ), .Y(\U2/n17 ) );
  AOI22X1 \U2/U14  ( .A(\U2/n4 ), .B(\U2/n3 ), .C(in_data1), .D(con_loadData), 
        .Y(\U2/n11 ) );
  OAI21X1 \U2/U13  ( .A(\U2/n10 ), .B(\U2/n3 ), .C(\U2/n11 ), .Y(\U2/n16 ) );
  XNOR2X1 \U2/U12  ( .A(con_notData), .B(out_DO2), .Y(\U2/n7 ) );
  NAND2X1 \U2/U11  ( .A(\U2/n6 ), .B(\U2/n5 ), .Y(\U2/n8 ) );
  NAND2X1 \U2/U10  ( .A(con_loadData), .B(in_data2), .Y(\U2/n9 ) );
  OAI21X1 \U2/U9  ( .A(\U2/n7 ), .B(\U2/n8 ), .C(\U2/n9 ), .Y(\U2/n15 ) );
  INVX2 \U2/U8  ( .A(con_clearData), .Y(\U2/n6 ) );
  INVX2 \U2/U7  ( .A(con_loadData), .Y(\U2/n5 ) );
  INVX2 \U2/U6  ( .A(\U2/n14 ), .Y(\U2/n4 ) );
  INVX2 \U2/U5  ( .A(out_DO1), .Y(\U2/n3 ) );
  INVX2 \U2/U4  ( .A(out_DO0), .Y(\U2/n2 ) );
  INVX2 \U2/U3  ( .A(out_DO3), .Y(\U2/n1 ) );
  DFFPOSX1 \U2/DO2_reg  ( .D(\U2/n15 ), .CLK(in_clka), .Q(out_DO2) );
  DFFPOSX1 \U2/DO1_reg  ( .D(\U2/n16 ), .CLK(in_clka), .Q(out_DO1) );
  DFFPOSX1 \U2/DO0_reg  ( .D(\U2/n17 ), .CLK(in_clka), .Q(out_DO0) );
  DFFPOSX1 \U2/DO3_reg  ( .D(\U2/n18 ), .CLK(in_clka), .Q(out_DO3) );
  NOR2X1 \U1/U26  ( .A(out_state[2]), .B(out_state[0]), .Y(\U1/n18 ) );
  NAND2X1 \U1/U25  ( .A(out_state[0]), .B(\U1/n5 ), .Y(\U1/n16 ) );
  AOI22X1 \U1/U24  ( .A(\U1/n18 ), .B(in_Not), .C(in_load), .D(\U1/n16 ), .Y(
        \U1/n17 ) );
  XOR2X1 \U1/U23  ( .A(out_state[0]), .B(out_state[1]), .Y(\U1/n12 ) );
  OAI21X1 \U1/U22  ( .A(\U1/n17 ), .B(\U1/n12 ), .C(\U1/n6 ), .Y(\U1/N39 ) );
  OAI21X1 \U1/U21  ( .A(\U1/n4 ), .B(\U1/n12 ), .C(in_load), .Y(\U1/n15 ) );
  NAND2X1 \U1/U20  ( .A(\U1/n15 ), .B(\U1/n6 ), .Y(\U1/N40 ) );
  OAI21X1 \U1/U19  ( .A(out_state[0]), .B(\U1/n8 ), .C(\U1/n5 ), .Y(\U1/n14 )
         );
  NAND2X1 \U1/U18  ( .A(\U1/n14 ), .B(\U1/n7 ), .Y(\U1/n13 ) );
  OAI21X1 \U1/U17  ( .A(\U1/n12 ), .B(\U1/n13 ), .C(\U1/n6 ), .Y(\U1/N41 ) );
  NAND2X1 \U1/U16  ( .A(\U1/next_state [2]), .B(\U1/next_state [0]), .Y(
        \U1/n11 ) );
  NOR2X1 \U1/U15  ( .A(\U1/n2 ), .B(\U1/n11 ), .Y(\U1/N54 ) );
  NAND2X1 \U1/U14  ( .A(\U1/next_state [0]), .B(\U1/n2 ), .Y(\U1/n10 ) );
  NOR2X1 \U1/U13  ( .A(\U1/n1 ), .B(\U1/n10 ), .Y(\U1/N55 ) );
  NAND2X1 \U1/U12  ( .A(\U1/n2 ), .B(\U1/n1 ), .Y(\U1/n9 ) );
  NOR2X1 \U1/U11  ( .A(\U1/n3 ), .B(\U1/n9 ), .Y(\U1/N56 ) );
  INVX2 \U1/U10  ( .A(in_Not), .Y(\U1/n8 ) );
  INVX2 \U1/U9  ( .A(in_load), .Y(\U1/n7 ) );
  INVX2 \U1/U8  ( .A(in_restart), .Y(\U1/n6 ) );
  INVX2 \U1/U7  ( .A(out_state[2]), .Y(\U1/n5 ) );
  INVX2 \U1/U6  ( .A(\U1/n16 ), .Y(\U1/n4 ) );
  INVX2 \U1/U5  ( .A(\U1/next_state [0]), .Y(\U1/n3 ) );
  INVX2 \U1/U4  ( .A(\U1/next_state [1]), .Y(\U1/n2 ) );
  INVX2 \U1/U3  ( .A(\U1/next_state [2]), .Y(\U1/n1 ) );
  DFFPOSX1 \U1/loadData_reg  ( .D(\U1/N56 ), .CLK(in_clkb), .Q(con_loadData)
         );
  DFFPOSX1 \U1/notData_reg  ( .D(\U1/N55 ), .CLK(in_clkb), .Q(con_notData) );
  DFFPOSX1 \U1/clearData_reg  ( .D(\U1/N54 ), .CLK(in_clkb), .Q(con_clearData)
         );
  DFFPOSX1 \U1/next_state_reg[0]  ( .D(\U1/N39 ), .CLK(in_clka), .Q(
        \U1/next_state [0]) );
  DFFPOSX1 \U1/state_reg[1]  ( .D(\U1/next_state [1]), .CLK(in_clkb), .Q(
        out_state[1]) );
  DFFPOSX1 \U1/next_state_reg[1]  ( .D(\U1/N40 ), .CLK(in_clka), .Q(
        \U1/next_state [1]) );
  DFFPOSX1 \U1/state_reg[2]  ( .D(\U1/next_state [2]), .CLK(in_clkb), .Q(
        out_state[2]) );
  DFFPOSX1 \U1/next_state_reg[2]  ( .D(\U1/N41 ), .CLK(in_clka), .Q(
        \U1/next_state [2]) );
  DFFPOSX1 \U1/state_reg[0]  ( .D(\U1/next_state [0]), .CLK(in_clkb), .Q(
        out_state[0]) );
endmodule

