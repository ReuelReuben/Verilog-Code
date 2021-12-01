module ModBooth8x8(p,a,b);
input  [7:0] a,b;
output [15:0] p;
reg [8:0] mux_1;
reg [8:0] mux_2;
reg [8:0] mux_3;
reg [8:0] mux_4;
reg msb_1;
reg msb_2;
reg msb_3;
reg msb_4;
wire [7:0] a_2comp,not_a;
wire [2:0] s1;
wire [2:0] s2;
wire [2:0] s3;
wire [2:0] s4;
reg [15:0] z1,z2,z3,z4;
wire zero;
wire s11,c11,s12,c12,s13,c13,s14,c14,s15,c15,s16,c16,s17,c17,s18,c18,s19,c19,s20,c20;
wire s41,c41,s42,c42,s43,c43,s44,c44,s45,c45,s46,c46,s47,c47,s48,c48,s49,c49,s50,c50,s51,c51,s52,c52;
wire [16:0] x,y;

assign zero = 1'b0;

assign not_a = ~a;
assign a_2comp = not_a + 1;
assign s1 = {b[1],b[0],zero};
assign s2 = {b[3],b[2],b[1]};
assign s3 = {b[5],b[4],b[3]};
assign s4 = {b[7],b[6],b[5]};

always@(*)
begin
case (s1)
3'b000 : begin
          mux_1 = 9'b000000000;
          msb_1 = 0;
			end
3'b001 : begin  mux_1 = a;
          msb_1 = a[7];
			end
3'b010 : begin  mux_1 = a;
          msb_1 = a[7];
			end
3'b011 : begin  mux_1 = a << 1;
          msb_1 = a[7];
			end
3'b100 : begin  mux_1 = a_2comp << 1;
          msb_1 = a_2comp[7];
			end
3'b101 : begin  mux_1 = a_2comp;
          msb_1 = a_2comp[7];
			end
3'b110 : begin  mux_1 = a_2comp;
          msb_1 = a_2comp[7];
			end
3'b111 : begin  mux_1 = 9'b000000000;
          msb_1 = 0;
			end
default :  mux_1 = 9'bx;

endcase
end

always@(*)
begin
case (s2)
3'b000 : begin mux_2 = 9'b000000000;
          msb_2 = 0;
			end
3'b001 : begin  mux_2 = a;
          msb_2 = a[7];
			end
3'b010 : begin  mux_2 = a;
          msb_2 = a[7];
			end
3'b011 : begin  mux_2 = a << 1;
          msb_2 = a[7];
			end
3'b100 : begin  mux_2 = a_2comp << 1;
          msb_2 = a_2comp[7];
			end
3'b101 : begin  mux_2 = a_2comp;
          msb_2 = a_2comp[7];
			end
3'b110 : begin  mux_2 = a_2comp;
          msb_2 = a_2comp[7];
			end
3'b111 : begin  mux_2 = 9'b000000000;
          msb_2 = 0;
			end
default :  mux_2 = 9'bx;

endcase
end

always@(*)
begin
case (s3)
3'b000 : begin mux_3 = 9'b000000000;
          msb_3 = 0;
			end
3'b001 : begin  mux_3 = a;
          msb_3 = a[7];
			end
3'b010 : begin  mux_3 = a;
          msb_3 = a[7];
			end
3'b011 : begin  mux_3 = a << 1;
          msb_3 = a[7];
			end
3'b100 : begin  mux_3 = a_2comp << 1;
          msb_3 = a_2comp[7];
			end
3'b101 : begin  mux_3 = a_2comp;
          msb_3 = a_2comp[7];
			end
3'b110 : begin  mux_3 = a_2comp;
          msb_3 = a_2comp[7];
			end
3'b111 : begin  mux_3 = 9'b000000000;
          msb_3 = 0;
			end
default :  mux_3 = 9'bx;

endcase
end

always@(*)
begin
case (s4)
3'b000 : begin mux_4 = 9'b000000000;
          msb_4 = 0;
			end
3'b001 : begin  mux_4 = a;
          msb_4 = a[7];
			end
3'b010 : begin  mux_4 = a;
          msb_4 = a[7];
			end
3'b011 : begin  mux_4 = a << 1;
          msb_4 = a[7];
			end
3'b100 : begin  mux_4 = a_2comp << 1;
          msb_4 = a_2comp[7];
			end
3'b101 : begin  mux_4 = a_2comp;
          msb_4 = a_2comp[7];
			end
3'b110 : begin  mux_4 = a_2comp;
          msb_4 = a_2comp[7];
			end
3'b111 : begin  mux_4 = 9'b000000000;
          msb_4 = 0;
			end
default :  mux_4 = 9'bx;

endcase
end


always@ (*)
begin
if(s1 == 3 || s1 == 4)
begin
z1[15:9]={7{msb_1}};
z1[8:0]=mux_1;
end
else
begin
z1[15:8]={8{msb_1}};
z1[7:0]=mux_1;
end
end

always@ (*)
begin
if(s2 == 3 || s2 == 4)
begin
z2[15:11] = {5{msb_2}};
z2[10:2] = mux_2;
z2[1:0] = 2'b00;
end
else
begin
z2[15:10] = {6{msb_2}};
z2[9:2] = mux_2;
z2[1:0] = 2'b00;
end
end

always@ (*)
begin
if(s3 == 3 || s3 == 4)
begin
z3[15:13] = {3{msb_3}};
z3[12:4] = mux_3;
z3[3:0] = 4'b0000;
end
else
begin
z3[15:12] = {4{msb_3}};
z3[11:4] = mux_3;
z3[3:0] = 4'b0000;
end
end

always@ (*)
begin
if(s4 == 3 || s4 == 4)
begin
z4[15] = msb_4;
z4[14:6] = mux_4;
z4[5:0] = 6'b000000;
end
else
begin
z4[15:14] = {2{msb_4}};
z4[13:6] = mux_4;
z4[5:0] = 6'b000000;
end
end


//Stage 1 s11,c11,s12,c12,s13,c13,s14,c14,s15,c15,s16,c16,s17,c17,s18,c18,s19,c19,s20,c20;
HA m1 (s11,c11,z1[6],z2[6]);
FA m2 (s12,c12,z1[7],z2[7],z3[7]);
FA m3 (s13,c13,z1[8],z2[8],z3[8]);
FA m4 (s14,c14,z1[9],z2[9],z3[9]);
FA m5 (s15,c15,z1[10],z2[10],z3[10]);
FA m6 (s16,c16,z1[11],z2[11],z3[11]);
FA m7 (s17,c17,z1[12],z2[12],z3[12]);
FA m8 (s18,c18,z1[13],z2[13],z3[13]);
FA m9 (s19,c19,z1[14],z2[14],z3[14]);
FA m10 (s20,c20,z1[15],z2[15],z3[15]);

//Stage 2 s41,c41,s42,c42,s43,c43,s44,c44,s45,c45,s46,c46,s47,c47,s48,c48,s49,c49,s50,c50,s51,c51,s52,c52;
HA m11 (s41,c41,z1[4],z2[4]);
FA m12 (s42,c42,z1[5],z2[5],z3[5]);
FA m13 (s43,c43,s11,z3[6],z4[6]);
FA m14 (s44,c44,s12,z4[7],c11);
FA m15 (s45,c45,s13,z4[8],c12);
FA m16 (s46,c46,s14,z4[9],c13);
FA m17 (s47,c47,s15,z4[10],c14);
FA m18 (s48,c48,s16,z4[11],c15);
FA m19 (s49,c49,s17,z4[12],c16);
FA m20 (s50,c50,s18,z4[13],c17);
FA m21 (s51,c51,s19,z4[14],c18);
FA m22 (s52,c52,s20,z4[15],c19);

//Stage 3
assign x[0]=z1[0];
assign x[1]=z1[1];
assign x[2]=z1[2];
assign x[3]=z1[3];
assign x[4]=s41;
assign x[5]=s42;
assign x[6]=s43;
assign x[7]=s44;
assign x[8]=s45;
assign x[9]=s46;
assign x[10]=s47;
assign x[11]=s48;
assign x[12]=s49;
assign x[13]=s50;
assign x[14]=s51;
assign x[15]=s52;
assign x[16]=c20;
assign y[0]=0;
assign y[1]=0;
assign y[2]=z2[2];
assign y[3]=z2[3];
assign y[4]=z3[4];
assign y[5]=c41;
assign y[6]=c42;
assign y[7]=c43;
assign y[8]=c44;
assign y[9]=c45;
assign y[10]=c46;
assign y[11]=c47;
assign y[12]=c48;
assign y[13]=c49;
assign y[14]=c50;
assign y[15]=c51;
assign y[16]=c52;

assign p=x+y;

endmodule
