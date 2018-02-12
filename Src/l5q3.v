//PIPO
module s1(rst,d,clk,q,l);

input clk,l,rst;
input [7:0] d;
output reg [7:0] q;

always @(posedge clk)
begin
if(rst)
q=0;
else if(l)
q=d;
end
endmodule

//SR

module s2(rst,l_s,clk,q1,d);

input l_s,clk,rst;
input [7:0] d;
output reg [7:0] q1;

always @(posedge clk)
begin
if(rst)
q1=0;
else if(l_s)
q1=d;
else
q1=q1>>1;
end
endmodule

//Prod1
module s4(clk,rst,d,l,q3);

input clk,rst,l,d;
output reg [7:0] q3;

always @(negedge clk)
begin
if(rst)
q3<=7'd0;
else if(l)
q3<=q3;
else
begin
q3[0]<=q3[1];
q3[1]<=q3[2];
q3[2]<=q3[3];
q3[3]<=q3[4];
q3[4]<=q3[5];
q3[5]<=q3[6];
q3[6]<=q3[7];
q3[7]<=d;
end
end
endmodule


//SR

module s3(clk,rst,d,l,q2);

input clk,rst,l;
input [7:0] d;
output reg [7:0] q2;

always @(posedge clk)
begin
if(rst)
q2=0;
else if(l)
q2=q2;
else
q2=d;
end
endmodule

 //Adder
 
 module adder(a,b,c,s);
 input [7:0] a,b;
 output [7:0] s;
 output c; 
 assign {c,s}=a+b;
 endmodule

  //Counter 

module counter(reset,l,clk);

input reset,clk;
output reg l;
integer i;

always @(posedge clk)
begin
if(reset)
begin
i=0;
l=0;
end
else
begin
if(i==7)
l=1;
else
begin
i=i+1;
l=0;
end
end
end
endmodule

// Final Multi

module final12 (a,b,op,load,reset,clk,valid);
input [7:0] a,b;
output [15:0] op;
output valid;
input clk,reset,load;
wire [7:0] x,y,z,s,po,lo;
wire c,v1,l,t;

s1 u1 (reset,a,clk,x,load);
s2 u2 (reset,load,clk,z,b);
assign y=x & {8{z[0]}};
counter u5 (t,l,clk);
assign valid=l;
adder u3 (y,po,c,s);
s3 u4 (clk,v1,{c,s[7:1]},l,po);
 s4 e1 (clk,v,s[0],l,lo);
assign op={po,lo};
assign v1= reset|load;
assign t=reset|load;

always @(l)
begin
if(op==a*b)
$display("the product of a=%d ,b=%d  is p=%d",a,b,op);
else
$display("Incorrect operation");
end
endmodule

// stimilus

module test;

reg [7:0] a,b;
wire [15:0] p;
reg clk,rst,load;
wire valid;
final12 x1 (a,b,p,load,rst,clk,valid);

initial
begin
clk=1;
forever #5 clk=~clk;
end

initial
begin
rst=1;
#20;

rst=0;
load=1;
a=255;
b=255;
#10
load=0;
#100

rst=1;
#20

rst=0;
load=1;
a=128;
b=128;
#10
load=0;
#100

load=1;
a=128;
b=0;
#10
load=0;
#100

load=1;
a=128;
b=1;
#10
load=0;
#100

load=1;
a=25;
b=5;
#10
load=0;
#100

load=1;
a=64;
b=64;
#10
load=0;
#100

load=1;
a=36;
b=36;
#10
load=0;
#100

load=1;
a=11;
b=33;
#10
load=0;
#100

load=1;
a=80;
b=10;
#10
load=0;
#100;
end
endmodule