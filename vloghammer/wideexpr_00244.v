module wideexpr_00244(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
  input [7:0] ctrl;
  input [0:0] u0;
  input [1:0] u1;
  input [2:0] u2;
  input [3:0] u3;
  input [4:0] u4;
  input [5:0] u5;
  input [6:0] u6;
  input [7:0] u7;
  input signed [0:0] s0;
  input signed [1:0] s1;
  input signed [2:0] s2;
  input signed [3:0] s3;
  input signed [4:0] s4;
  input signed [5:0] s5;
  input signed [6:0] s6;
  input signed [7:0] s7;
  output [127:0] y;
  wire [15:0] y0;
  wire [15:0] y1;
  wire [15:0] y2;
  wire [15:0] y3;
  wire [15:0] y4;
  wire [15:0] y5;
  wire [15:0] y6;
  wire [15:0] y7;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7};
  assign y0 = s2;
  assign y1 = (ctrl[0]?4'sb0001:1'sb1);
  assign y2 = +(((4'sb0101)<<(({2{-(&(s4))}})>>>(u0)))<<<(-(((ctrl[7]?(ctrl[2]?(ctrl[2]?$signed((3'b101)&(s7)):s2):s0):s0))+(($signed(6'sb110011))<<({2{&({2{(4'sb1111)>>(5'sb11100)}})}})))));
  assign y3 = ((ctrl[4]?(ctrl[7]?(((s1)+(3'sb000))+($signed(s6)))>>>(6'sb010010):s4):(6'sb110011)<<((((2'sb00)>>>(u5))-((4'sb1000)>>>(6'sb000110)))+(($signed(u1))-(3'sb100)))))>>(-(($signed(($unsigned(6'sb111011))>>>((ctrl[3]?2'sb11:1'sb1))))|(-((ctrl[3]?{s7}:s0)))));
  assign y4 = {1{!(6'sb110111)}};
  assign y5 = 2'b01;
  assign y6 = 4'sb1001;
  assign y7 = {2{+(((({4{5'sb00001}})-($signed(3'sb011)))>=(((u0)<<<(2'sb11))+((s2)-(2'b00))))|({2{{(5'sb10100)<=(s3),$unsigned(4'sb1111),s4,(ctrl[6]?1'b1:3'sb101)}}}))}};
endmodule
