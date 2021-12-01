module BKA16bitTest;

reg [15:0] a,b;
reg cin;
wire [15:0] s,c;

BKA16bit test1 (.s(s),.c(c),.a(a),.b(b),.cin(cin));

initial
begin
$dumpfile("BKA16bitTbench.vcd");
$dumpvars(0,BKA16bitTest);

$monitor($time," A=%d , B=%d   Sum=%d  Carry=%d ",a,b,s,c);
cin=0;
#5 a=16'd5; b=16'd5;
#5 a=16'd12; b=16'd15;
#5 a=16'd9; b=16'd14;
#5 a=16'd13; b=16'd2;
#5 a=16'd13324; b=16'd2234;
#5 a=16'd53421; b=16'd1234;
#5 a=16'd13; b=16'd62000;
#5 $finish;

end

endmodule
