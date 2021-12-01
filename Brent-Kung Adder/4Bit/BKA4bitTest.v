module BKA4bitTest;

reg [3:0] a,b;
reg cin;
wire [3:0] s,c;

BKA4bit test (.s(s),.c(c),.a(a),.b(b),.cin(cin));

initial
begin
$dumpfile("BKA4bitTbench.vcd");
$dumpvars(0,BKA4bitTest);

$monitor($time," A=%b , B=%b   Sum=%b  Carry=%b ",a,b,s,c);
cin=0;
#5 a=4'b1001; b=4'b1100;
#5 a=4'b0001; b=4'b1110;
#5 a=4'b1111; b=4'b1101;
#5 a=4'b1101; b=4'b1000;
#5 $finish;

end

endmodule
