module wideexpr_00540(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (~&((s6)+(1'sb0)))^~({4{-(($signed({2{s3}}))^(s6))}});
  assign y1 = {4{(4'sb1111)<<({$signed($signed((4'sb0110)<<(s1))),-($signed((u7)&(s5)))})}};
  assign y2 = ((6'sb010100)<<<(s7))<<(s2);
  assign y3 = (ctrl[7]?{$signed((($signed(-(2'b00)))^(((s6)|(s7))&(-(s4))))^~(s4)),s1,(~&({1{6'sb000010}}))>=((ctrl[0]?{2{s5}}:(ctrl[2]?(6'b010001)^~((3'sb010)>>>(s0)):3'b101)))}:s3);
  assign y4 = (-(s6))<<<(({1{({2'b10})<<((ctrl[4]?($signed($signed({3{2'sb11}})))&((((ctrl[3]?s6:s6))-((ctrl[5]?s0:s3)))<=(((ctrl[5]?s6:6'sb010001))&(s5))):(ctrl[1]?(ctrl[6]?(ctrl[3]?u4:&(3'sb001)):5'sb01010):{4{{(ctrl[5]?3'sb000:3'sb110),-(5'sb11010),u2}}})))}})<<(($unsigned((u2)>>>(s7)))&({2{|((s6)>>>(($signed((ctrl[4]?s7:6'sb011011)))<<<(2'sb10)))}})));
  assign y5 = {1{s3}};
  assign y6 = (ctrl[6]?(ctrl[5]?$signed((4'sb0010)>>>({2{+((1'sb1)<<<(+(1'sb1)))}})):+($unsigned(s0))):(5'sb01010)|(({4{s4}})>>($signed((s2)^~(6'sb011000)))));
  assign y7 = (((({3{u2}})<<((s7)<=(6'sb001100)))<<($signed({4'sb1011,s4,1'sb0})))|((1'b0)>>>(1'sb1)))>>((ctrl[4]?(ctrl[7]?$signed(-(u4)):1'sb0):s4));
endmodule
