module G(go,gin1,pin2,gin2);
input gin1,pin2,gin2;
output go;
wire w1;

or g3 (go,gin2,w1);
and g2 (w1,gin1,pin2);

endmodule
