module wideexpr_00104(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (s0)^~((ctrl[5]?2'sb00:(2'sb00)|(+(({1{1'sb0}})&(({3{({1'b0,1'sb1,1'sb0,4'sb0110})<=(|(2'b10))}})<<<(s5))))));
  assign y1 = |(((ctrl[1]?$signed(((ctrl[4]?u1:6'b001011))&((6'sb110110)>=(1'sb1))):+(({2{s2}})>>>($signed(4'sb0100)))))-(s4));
  assign y2 = (({s2,s4,(+(|(5'sb11010)))-((s5)<<<((3'sb000)^(s4)))})>>((ctrl[0]?u7:(s6)<<(((s6)<<(1'sb1))-((3'b010)>>({s4,-(4'sb0110),4'sb1110,(ctrl[0]?u5:u7)}))))))-((s4)>(-(4'sb1100)));
  assign y3 = ((ctrl[3]?-((s7)&((ctrl[2]?s5:6'sb110110))):(ctrl[0]?(1'sb1)+($signed({1{s5}})):(5'sb00110)|((s6)^(s4)))))<<<((+({(+({4{5'sb01111}}))>>((ctrl[1]?(ctrl[2]?3'b100:2'sb11):(6'sb000001)^(4'b0001)))}))<<<(({($signed((ctrl[0]?s2:s5)))-(($signed(u2))>>({3{s7}})),&($unsigned(-(s1)))})>>>(~^(5'sb11101))));
  assign y4 = ((~^({(ctrl[6]?5'sb00111:s3),(ctrl[6]?s6:1'sb0)}))<<<(s4))>>({s2,s5,s1,1'sb0});
  assign y5 = +({(ctrl[6]?$signed(+(s4)):(s0)>>>((ctrl[2]?+(s7):+(s4))))});
  assign y6 = {4{({~^((5'sb10010)^~($signed($unsigned(s3)))),+($signed(-((s7)&(6'sb011011)))),($signed({4{(4'sb0011)<<<(s0)}}))>>>({2{{(s7)>=(4'b0110),(s0)-(s0),{3{s2}}}}})})+(-(s1))}};
  assign y7 = {4{(ctrl[6]?+((ctrl[4]?({4{s4}})<<($signed((ctrl[1]?$signed({4{2'sb00}}):(ctrl[7]?3'b101:{5'sb10011,s6,s2,u3})))):{(ctrl[0]?+(s4):s3),s3})):3'sb110)}};
endmodule
