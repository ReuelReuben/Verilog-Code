module WMulTest;

reg [4:0] x,y;
wire [9:0] p;

WallaceMul5x5 test2 (.x(x),.y(y),.p(p));

initial
begin
$dumpfile("WMulTestTbench.vcd");
$dumpvars(0,WMulTest);

$monitor($time," X=%d , Y=%d   Product=%d ",x,y,p);

#5 x=5'd12; y=5'd12;
#5 x=5'd15; y=5'd5;
#5 x=5'd9; y=5'd5;
#5 x=5'd10; y=5'd10;
#5 x=5'd31; y=5'd31;
#5 x=5'd30; y=5'd20;
#5 x=5'd0; y=5'd27;
#5 x=5'd7; y=5'd7;
#5 $finish;

end

endmodule
