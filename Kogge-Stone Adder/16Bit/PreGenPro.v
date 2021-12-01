module Pre(p,g,a,b);
input a,b;
output p,g;


xor g1 (p,a,b);
and g2 (g,a,b);

endmodule
