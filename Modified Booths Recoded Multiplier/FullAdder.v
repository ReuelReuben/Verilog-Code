//
// File Name : FullAdder.v
// Type : module
// Department : Electronics and Tele-communication
// Author : Reuel Reuben
// Author : reuel992000@gmail.com
// Purpose : Full Adder
//
module FA(x,y,a,b,c);
input a,b,c;
output x,y;
wire t1,t2,t3,t4;

xor g3 (x,a,b,c);
and g4 (t1,a,b);
and g5 (t2,b,c);
and g6 (t3,a,c);
or g7 (y,t1,t2,t3);

endmodule
