module wideexpr_00006(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s6;
  assign y1 = (ctrl[2]?((((ctrl[1]?(({6'b000100,1'sb0,s5,s7})+(&(2'b01)))<<({s0}):(ctrl[3]?{u0,{s4,s3},(6'sb010110)+(1'sb1),u4}:(2'sb01)<<(+(4'b1101)))))>>($unsigned(s6)))<<<(4'sb0011))>>>(1'b0):s7);
  assign y2 = $signed((ctrl[6]?{3{4'b0100}}:4'sb1010));
  assign y3 = (s0)+((ctrl[0]?$signed((3'sb100)&(s2)):(+(1'b0))^~(+(+(+((ctrl[6]?-(s7):(1'sb1)>>(6'sb001111))))))));
  assign y4 = {3{(ctrl[6]?(3'sb101)>(((-({2{(s0)<(s3)}}))|(((2'sb00)^(1'sb0))>>>((ctrl[3]?-(s0):(ctrl[3]?6'sb001001:s2)))))>>($signed($signed(s7)))):u0)}};
  assign y5 = ((~(($signed(s0))>=(6'sb111111)))<=(u4))>=(($unsigned(5'sb01001))^((~((5'sb10001)>>(2'sb10)))&({4{$signed(s1)}})));
  assign y6 = -((s5)>>>($signed((ctrl[5]?s0:(($signed((s5)&(6'sb111100)))>>(((ctrl[0]?1'sb0:1'sb0))-(5'sb11100)))>>(s5)))));
  assign y7 = {((($signed(($unsigned($signed((ctrl[4]?2'sb00:6'b000110))))>=((((ctrl[7]?1'b1:5'sb01111))<<((ctrl[4]?1'sb0:3'sb101)))>=({1{$signed(s4)}}))))>>>(($signed(^(((s5)-(s5))>>>(+(s6)))))&(-(-((ctrl[5]?2'b11:^(2'b00)))))))<((ctrl[4]?s0:(ctrl[0]?((2'sb10)-((ctrl[0]?(s1)&(s0):(s5)&(s5))))|((-((2'sb10)>>>(u7)))^~((1'sb0)<<<(u1))):(ctrl[4]?(ctrl[1]?$signed(s5):((s7)<<(u7))<<({s0,6'sb011111,u1})):+(((2'sb10)+(2'sb10))>>>((s0)==(s0))))))))<((|((1'sb0)>(6'sb001110)))>>>(+((ctrl[6]?(ctrl[6]?$unsigned(&({3'sb000,s4})):(~((s6)|(s7)))|(s1)):(ctrl[3]?(2'sb01)-(1'b1):($unsigned(5'sb10000))<<(2'sb01))))))};
endmodule
