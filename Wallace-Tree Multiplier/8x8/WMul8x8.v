module WallaceMul8x8(x,y,p);
input [7:0] x,y;
output [15:0] p;

wire z00,z01,z02,z03,z04,z05,z06,z07;
wire z10,z11,z12,z13,z14,z15,z16,z17;
wire z20,z21,z22,z23,z24,z25,z26,z27;
wire z30,z31,z32,z33,z34,z35,z36,z37;
wire z40,z41,z42,z43,z44,z45,z46,z47;
wire z50,z51,z52,z53,z54,z55,z56,z57;
wire z60,z61,z62,z63,z64,z65,z66,z67;
wire z70,z71,z72,z73,z74,z75,z76,z77;

wire w12,c12,w13,c13,w14,c14,w15,c15,w16,c16,w17,c17,w18,c18,w19,c19;
wire w121,c121,w122,c122,w123,c123,w124,c124,w125,c125,w126,c126,w127,c127,w128,c128;
wire w21,c21,w22,c22,w23,c23,w24,c24,w25,c25,w26,c26,w27,c27,w28,c28;
wire w221,c221,w222,c222,w223,c223,w224,c224,w225,c225,w226,c226,w227,c227,w228,c228;
wire w31,c31,w32,c32,w33,c33,w34,c34,w35,c35,w36,c36,w37,c37,w38,c38,w39,c39,w40,c40;
wire [15:0] a,b;

and g111 (z00,x[0],y[0]);
and g112 (z01,x[0],y[1]);
and g113 (z02,x[0],y[2]);
and g114 (z03,x[0],y[3]);
and g115 (z04,x[0],y[4]);
and g116 (z05,x[0],y[5]);
and g117 (z06,x[0],y[6]);
and g118 (z07,x[0],y[7]);

and g11 (z10,x[1],y[0]);
and g12 (z11,x[1],y[1]);
and g13 (z12,x[1],y[2]);
and g14 (z13,x[1],y[3]);
and g15 (z14,x[1],y[4]);
and g16 (z15,x[1],y[5]);
and g17 (z16,x[1],y[6]);
and g18 (z17,x[1],y[7]);

and g21 (z20,x[2],y[0]);
and g22 (z21,x[2],y[1]);
and g23 (z22,x[2],y[2]);
and g24 (z23,x[2],y[3]);
and g25 (z24,x[2],y[4]);
and g26 (z25,x[2],y[5]);
and g27 (z26,x[2],y[6]);
and g28 (z27,x[2],y[7]);

and g31 (z30,x[3],y[0]);
and g32 (z31,x[3],y[1]);
and g33 (z32,x[3],y[2]);
and g34 (z33,x[3],y[3]);
and g35 (z34,x[3],y[4]);
and g36 (z35,x[3],y[5]);
and g37 (z36,x[3],y[6]);
and g38 (z37,x[3],y[7]);

and g41 (z40,x[4],y[0]);
and g42 (z41,x[4],y[1]);
and g43 (z42,x[4],y[2]);
and g44 (z43,x[4],y[3]);
and g45 (z44,x[4],y[4]);
and g46 (z45,x[4],y[5]);
and g47 (z46,x[4],y[6]);
and g48 (z47,x[4],y[7]);

and g51 (z50,x[5],y[0]);
and g52 (z51,x[5],y[1]);
and g53 (z52,x[5],y[2]);
and g54 (z53,x[5],y[3]);
and g55 (z54,x[5],y[4]);
and g56 (z55,x[5],y[5]);
and g57 (z56,x[5],y[6]);
and g58 (z57,x[5],y[7]);

and g61 (z60,x[6],y[0]);
and g62 (z61,x[6],y[1]);
and g63 (z62,x[6],y[2]);
and g64 (z63,x[6],y[3]);
and g65 (z64,x[6],y[4]);
and g66 (z65,x[6],y[5]);
and g67 (z66,x[6],y[6]);
and g68 (z67,x[6],y[7]);

and g71 (z70,x[7],y[0]);
and g72 (z71,x[7],y[1]);
and g73 (z72,x[7],y[2]);
and g74 (z73,x[7],y[3]);
and g75 (z74,x[7],y[4]);
and g76 (z75,x[7],y[5]);
and g77 (z76,x[7],y[6]);
and g78 (z77,x[7],y[7]);

//Stage 1
assign a[0]=z00;
HA s11 (w12,c12,z01,z10);
FA s12 (w13,c13,z02,z11,z20);
FA s13 (w14,c14,z03,z12,z21);
FA s14 (w15,c15,z04,z13,z22);
FA s15 (w16,c16,z05,z14,z23);
FA s16 (w17,c17,z06,z15,z24);
FA s17 (w18,c18,z07,z16,z25);
HA s18 (w19,c19,z17,z26);

HA s19 (w121,c121,z31,z40);
FA s20 (w122,c122,z32,z41,z50);
FA s21 (w123,c123,z33,z42,z51);
FA s22 (w124,c124,z34,z43,z52);
FA s23 (w125,c125,z35,z44,z53);
FA s24 (w126,c126,z36,z45,z54);
FA s25 (w127,c127,z37,z46,z55);
HA s26 (w128,c128,z47,z56);

//Stage 2
assign a[1]=w12;
HA s27 (w21,c21,w13,c12);
FA s28 (w22,c22,w14,c13,z30);
FA s29 (w23,c23,w15,c14,w121);
FA s30 (w24,c24,w16,c15,w122);
FA s31 (w25,c25,w17,c16,w123);
FA s32 (w26,c26,w18,c17,w124);
FA s33 (w27,c27,w19,c18,w125);
FA s34 (w28,c28,z27,c19,w126);

HA s35 (w221,c221,c122,z60);
FA s36 (w222,c222,c123,z61,z70);
FA s37 (w223,c223,c124,z62,z71);
FA s38 (w224,c224,c125,z63,z72);
FA s39 (w225,c225,c126,z64,z73);
FA s40 (w226,c226,c127,z65,z74);
FA s41 (w227,c227,c128,z66,z75);
HA s42 (w228,c228,z67,z76);

//Stage 3
assign a[2]=w21;
HA s43 (w31,c31,w22,c21);
HA s44 (w32,c32,w23,c22);
FA s45 (w33,c33,w24,c23,c121);
FA s46 (w34,c34,w25,c24,w221);
FA s47 (w35,c35,w26,c25,w222);
FA s48 (w36,c36,w27,c26,w223);
FA s49 (w37,c37,w28,c27,w224);
FA s50 (w38,c38,w127,c28,w225);
HA s51 (w39,c39,w128,w226);
HA s52 (w40,c40,z57,c227);

//Stage 4
assign a[3]=w31;
HA s53 (a[4],b[5],w32,c31);
HA s54 (a[5],b[6],w33,c32);
HA s55 (a[6],b[7],w34,c33);
FA s56 (a[7],b[8],w35,c34,c221);
FA s57 (a[8],b[9],w36,c35,c222);
FA s58 (a[9],b[10],w37,c36,c223);
FA s59 (a[10],b[11],w38,c37,c224);
FA s60 (a[11],b[12],w39,c38,c225);
FA s61 (a[12],b[13],w40,c39,c226);
FA s62 (a[13],b[14],w228,c40,c227);
HA s63 (a[14],b[15],z77,c228);

assign a[15]=0;
assign b[4]=0;
assign b[3]=0;
assign b[2]=0;
assign b[1]=0;
assign b[0]=0;

assign p = a + b;

endmodule
