module WallaceMul5x5(x,y,p);
input [4:0] x,y;
output [9:0] p;

wire z00,z01,z02,z03,z04;
wire z10,z11,z12,z13,z14;
wire z20,z21,z22,z23,z24;
wire z30,z31,z32,z33,z34;
wire z40,z41,z42,z43,z44;
wire c11,s12,c12,s13,c13,s14,c14,s15,c15;
wire c21,s23,c22,s24,c23,s25,c24,s26,c25;
wire [8:0] a,b;

and g1 (z00,x[0],y[0]);
and g2 (z01,x[1],y[0]);
and g3 (z02,x[2],y[0]);
and g4 (z03,x[3],y[0]);
and g5 (z04,x[4],y[0]);

and g11 (z10,x[0],y[1]);
and g12 (z11,x[1],y[1]);
and g13 (z12,x[2],y[1]);
and g14 (z13,x[3],y[1]);
and g15 (z14,x[4],y[1]);

and g21 (z20,x[0],y[2]);
and g22 (z21,x[1],y[2]);
and g23 (z22,x[2],y[2]);
and g24 (z23,x[3],y[2]);
and g25 (z24,x[4],y[2]);

and g31 (z30,x[0],y[3]);
and g32 (z31,x[1],y[3]);
and g33 (z32,x[2],y[3]);
and g34 (z33,x[3],y[3]);
and g35 (z34,x[4],y[3]);

and g41 (z40,x[0],y[4]);
and g42 (z41,x[1],y[4]);
and g43 (z42,x[2],y[4]);
and g44 (z43,x[3],y[4]);
and g45 (z44,x[4],y[4]);

//step 1
assign a[0] = z00;
HA a1 (a[1],c11,z01,z10);
FA a2 (s12,c12,z02,z11,z20);
FA a3 (s13,c13,z03,z12,z21);
FA a4 (s14,c14,z04,z13,z22);
HA a5 (s15,c15,z14,z23);

//step 2
HA a6 (a[2],c21,c11,s12);
FA a7 (s23,c22,c12,s13,z30);
FA a8 (s24,c23,c13,s14,z31);
FA a9 (s25,c24,c14,s15,z32);
FA a10 (s26,c25,c15,z24,z33);

//step 3
HA a11 (a[3],b[4],c21,s23);
FA a12 (a[4],b[5],c22,s24,z40);
FA a13 (a[5],b[6],c23,s25,z41);
FA a14 (a[6],b[7],c24,s26,z42);
FA a15 (a[7],b[8],c25,z34,z43);
assign a[8] = z44;

assign b[3] = 0;
assign b[2] = 0;
assign b[1] = 0;
assign b[0] = 0;

assign p=a+b;

endmodule
