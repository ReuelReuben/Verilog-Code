module PG(po,go,pin1,gin1,pin2,gin2);
input pin1,gin1,pin2,gin2;
output po,go;
wire w1;

and g1 (po,pin1,pin2);
or g3 (go,gin2,w1);
and g2 (w1,gin1,pin2);

endmodule
