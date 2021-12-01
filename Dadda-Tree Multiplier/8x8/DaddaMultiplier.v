module DaddaMul8x8(x,y,p);
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

wire s11,c11,s12,c12,s13,c13,s14,c14,s15,c15,s16,c16;
wire s21,c21,s22,c22,s23,c23,s24,c24,s25,c25,s26,c26,s27,c27,s28,c28,s29,c29,s30,c30,s31,c31,s32,c32,s33,c33,s34,c34;
wire s41,c41,s42,c42,s43,c43,s44,c44,s45,c45,s46,c46,s47,c47,s48,c48,s49,c49,s50,c50;
wire s51,c51,s52,c52,s53,c53,s54,c54,s55,c55,s56,c56,s57,c57,s58,c58,s59,c59,s60,c60,s61,c61,s62,c62;
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
HA b1 (s11,c11,z06,z15);
FA b2 (s12,c12,z07,z16,z25);
HA b3 (s13,c13,z34,z43);
FA b4 (s14,c14,z17,z26,z35);
HA b5 (s15,c15,z44,z53);
FA b6 (s16,c16,z27,z36,z45);

//Stage 2
HA b7 (s21,c21,z04,z13);
FA b8 (s22,c22,z05,z14,z23);
HA b9 (s23,c23,z32,z41);
FA b10 (s24,c24,s11,z24,z33);
FA b11 (s25,c25,z42,z51,z60);
FA b12 (s26,c26,c11,s12,s13);
FA b13 (s27,c27,z52,z61,z70);
FA b14 (s28,c28,c13,c12,s14);
FA b15 (s29,c29,s15,z62,z71);
FA b16 (s30,c30,c15,c14,s16);
FA b17 (s31,c31,z54,z63,z72);
FA b18 (s32,c32,c16,z37,z46);
FA b19 (s33,c33,z55,z64,z73);
FA b20 (s34,c34,z47,z56,z65);

//Stage 3
HA b21 (s41,c41,z03,z12);
FA b22 (s42,c42,s21,z22,z31);
FA b23 (s43,c43,s22,s23,z50);
FA b24 (s44,c44,s24,s25,c22);
FA b25 (s45,c45,s26,s27,c24);
FA b26 (s46,c46,s28,s29,c26);
FA b27 (s47,c47,s30,s31,c28);
FA b28 (s48,c48,s32,s33,c30);
FA b29 (s49,c49,s34,z74,c32);
FA b30 (s50,c50,z57,z66,z75);

//Stage 4
HA b31 (s51,c51,z02,z11);
FA b32 (s52,c52,s41,z21,z30);
FA b33 (s53,c53,s42,z40,c41);
FA b34 (s54,c54,s43,c21,c42);
FA b35 (s55,c55,s44,c23,c43);
FA b36 (s56,c56,s45,c25,c44);
FA b37 (s57,c57,s46,c27,c45);
FA b38 (s58,c58,s47,c29,c46);
FA b39 (s59,c59,s48,c31,c47);
FA b40 (s60,c60,s49,c33,c48);
FA b41 (s61,c61,s50,c34,c49);
FA b42 (s62,c62,z67,z76,c50);

assign a[0]=z00;
assign a[1]=z01;
assign a[2]=s51;
assign a[3]=s52;
assign a[4]=s53;
assign a[5]=s54;
assign a[6]=s55;
assign a[7]=s56;
assign a[8]=s57;
assign a[9]=s58;
assign a[10]=s59;
assign a[11]=s60;
assign a[12]=s61;
assign a[13]=s62;
assign a[14]=z77;
assign a[15]=0;

assign b[0]=0;
assign b[1]=z10;
assign b[2]=z20;
assign b[3]=c51;
assign b[4]=c52;
assign b[5]=c53;
assign b[6]=c54;
assign b[7]=c55;
assign b[8]=c56;
assign b[9]=c57;
assign b[10]=c58;
assign b[11]=c59;
assign b[12]=c60;
assign b[13]=c61;
assign b[14]=c62;
assign b[15]=0;

assign p=a+b;

endmodule
