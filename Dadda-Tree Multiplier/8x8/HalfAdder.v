module HA(x,y,a,b);
input a,b;
output x,y;

xor g1 (x,a,b);
and g2 (y,a,b);

endmodule
