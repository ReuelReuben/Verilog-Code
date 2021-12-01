module KSA4bit(s,c,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] s,c;
wire [3:0] p,g;

//Pre Processing
Pre b1 (p[0],g[0],a[0],b[0]);
Pre b2 (p[1],g[1],a[1],b[1]);
Pre b3 (p[2],g[2],a[2],b[2]);
Pre b4 (p[3],g[3],a[3],b[3]);
//Stage 1
G b10 (c[0],cin,p[0],g[0]);
G b5 (c[1],c[0],p[1],g[1]);
PG b6 (p12,g12,p[1],g[1],p[2],g[2]);
PG b7 (p23,g23,p[2],g[2],p[3],g[3]);

//Stage 2
G b8 (c[2],c[0],p12,g12);
G b9 (c[3],c[1],p23,g23);

//Post Processing
xor b10 (s[0],p[0],cin);
xor b11 (s[1],p[1],c[0]);
xor b12 (s[2],p[2],c[1]);
xor b13 (s[3],p[3],c[2]);

endmodule
