module wideexpr_00492(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u0;
  assign y1 = ^(((ctrl[5]?$signed(-(+(s6))):{4{(((ctrl[0]?$signed((ctrl[0]?2'b10:u6)):(s5)>>((s7)^~(5'sb11011))))<<<(((ctrl[3]?{s7}:{2{s6}}))|(({2'sb01,s5,5'sb10011,6'b101111})<<<(+(5'sb01111)))))^((ctrl[2]?6'sb110110:(((1'sb1)-(2'sb00))<<(s6))>>>(4'sb1001)))}}))+((ctrl[4]?s4:+($signed((((+(s4))^~((ctrl[1]?3'sb001:s6)))^~(4'sb0111))+(+({2{u7}})))))));
  assign y2 = (ctrl[5]?s6:((s3)|((ctrl[7]?(ctrl[6]?$unsigned({4{s2}}):{s5}):(ctrl[5]?{{1{s6}}}:{-(4'sb0000)}))))>>>(4'sb1001));
  assign y3 = $unsigned(($signed({4{2'sb11}}))>>>((-(~^(^(({4'sb0010,4'b1011,u1})+((ctrl[6]?u6:u4))))))>>(({1{{1{6'sb010111}}}})>>>(1'sb1))));
  assign y4 = u5;
  assign y5 = -({(ctrl[4]?(ctrl[5]?($signed(2'sb01))+(6'sb000001):6'sb011010):(ctrl[6]?$signed(+(5'sb10010)):2'sb01)),$signed($signed((ctrl[4]?-(4'sb1011):s5))),$signed(s3)});
  assign y6 = -((({3{$signed(((($signed(3'sb101))|(s0))^~($signed((3'sb101)-(6'sb111001))))>>>((((2'sb11)>(u2))<<<((ctrl[2]?s5:u7)))^(((u6)+(5'sb10111))-((u3)>>>(s2)))))}})>>(4'sb1101))<<({3{(+(s4))<<<((ctrl[5]?(ctrl[6]?6'sb000111:-((ctrl[7]?(3'sb110)+(4'sb0111):s0))):($signed(2'sb01))^(3'sb100)))}}));
  assign y7 = (-(+((ctrl[1]?s3:!(^($unsigned(1'sb1)))))))<<<({s7});
endmodule
