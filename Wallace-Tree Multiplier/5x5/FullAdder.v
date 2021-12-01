module FA(x,y,a,b,c);
input a,b,c;
output x,y;
wire t1,t2,t3,t4;

xor g1 (x,a,b,c);
and g2 (t1,a,b);
and g2 (t2,b,c);
and g3 (t3,a,c);
or g4 (y,t1,t2,t3);

endmodule
