module wideexpr_00141(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ({^(3'sb000),{1{~(({-(2'sb01),(s0)>>(5'b10010)})&(({2{u3}})^($unsigned(1'sb0))))}},{3{($signed(s3))!=(+((~|(5'sb11010))>((5'sb11100)>>(u4))))}},s5})<=(((1'sb0)+((3'sb000)+((ctrl[3]?((s5)>>(s4))&((4'sb0000)-(6'sb010111)):6'sb100000))))!=((-(u0))>>>(s3)));
  assign y1 = $signed(-((ctrl[7]?+(5'sb00110):((ctrl[4]?s2:(ctrl[2]?&(((s3)>>(3'sb100))+(^(s4))):(3'sb111)<<<(((2'sb11)>>>(3'b011))>((ctrl[3]?3'sb111:6'sb001100))))))<<<(($unsigned((2'sb00)<<((ctrl[3]?{2{s7}}:(4'b0001)==(u6)))))-(~&(2'b01))))));
  assign y2 = s0;
  assign y3 = {-(s7)};
  assign y4 = 6'sb111001;
  assign y5 = (ctrl[1]?$unsigned({3{(2'sb00)+(s7)}}):u6);
  assign y6 = s5;
  assign y7 = (({1{(ctrl[7]?+((s2)^(s7)):1'sb0)}})^~(5'b11110))>>((((ctrl[6]?((ctrl[2]?$signed(+(s1)):3'sb010))+(((-(s5))-(-(5'sb00101)))>>(-((u6)>>(1'sb0)))):((ctrl[6]?s7:$signed(u1)))&(1'sb0)))>>>((s7)<=(+((5'sb00010)&($signed(s1))))))>>>((+(($signed(-((3'sb100)>(2'b10))))<<<(-(1'sb0))))-(s0)));
endmodule
