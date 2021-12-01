module WMul8x8Test;

reg [7:0] x,y;
wire [15:0] p;

WallaceMul8x8 test3(.x(x),.y(y),.p(p));

initial
begin
$dumpfile("WMulTest8x8Tbench.vcd");
$dumpvars(0,WMul8x8Test);

$monitor($time," X=%d , Y=%d   Product=%b ",x,y,p);

#5 x=8'd254; y=8'd254;
#5 x=8'd0; y=8'd175;
#5 x=8'd34; y=8'd96;
#5 $finish;

end

endmodule
