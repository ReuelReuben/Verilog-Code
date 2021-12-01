//
// File Name : ModBoothMultiplier
// Type : module
// Department : Electronics and Tele-communication
// Author : Reuel Reuben
// Author : reuel992000@gmail.com
// Purpose : Half Adder
//
module HA(x,y,a,b);
input a,b;
output x,y;

xor g1 (x,a,b);
and g2 (y,a,b);

endmodule
