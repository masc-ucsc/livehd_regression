module wideexpr_00308(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[6]?{($signed((((5'sb10011)>>>(u3))>>>({3{s6}}))>>>(((3'sb000)<<<(u4))+((1'sb1)<<<(s1)))))-((ctrl[0]?s3:($signed(~|(u5)))>>(s3))),(ctrl[7]?(+(((s6)<<(s4))>>((u5)^~(1'b0))))-((($signed(s7))>>((3'sb110)+(4'sb1001)))<<({2{$unsigned(s0)}})):3'sb001)}:(s5)>>>($signed(s1)));
  assign y1 = {3'sb101,(2'sb01)^~(((-(s5))<<(1'sb1))+(((s4)>>>(4'b1100))^~(-(3'b111)))),$signed((+((ctrl[0]?s1:s5)))-(-((ctrl[5]?2'b01:s4)))),{{4{5'sb11100}},$signed(($unsigned(u4))<(3'sb011)),$signed(2'sb10)}};
  assign y2 = -(s4);
  assign y3 = ((ctrl[3]?$signed(((ctrl[2]?$unsigned(s5):(3'b000)|(5'b00010)))<<(s0)):$signed(4'b1101)))^((s0)>>({2{+(((u3)<=(s7))>>>({1{u4}}))}}));
  assign y4 = (s6)|(4'b1000);
  assign y5 = ((ctrl[5]?$signed((u3)<<(2'sb01)):s4))|(|($signed(((ctrl[7]?{(((ctrl[4]?1'b1:s0))<<<(4'sb0111))>>>(1'sb1)}:({$signed((ctrl[4]?s0:s3))})>>($signed(($signed(3'b011))-((5'sb00110)+(s1))))))>>>((((ctrl[0]?(ctrl[0]?(s1)>>(6'sb011000):{6'sb001101,s6,s4,u1}):((ctrl[6]?s2:u3))+(u5)))>>(((5'sb00100)>>>(-(u2)))|((+(2'b01))>>(4'sb1100))))>((((2'sb01)-(~^(3'b111)))>=({4{s0}}))<=(!(+({3{u2}}))))))));
  assign y6 = +(((ctrl[1]?-(((ctrl[1]?(s0)>>(4'sb1100):(5'sb11011)>>(2'sb01)))>>>($unsigned($signed(u5)))):(ctrl[6]?(ctrl[5]?(s1)<<(s2):((2'sb01)+(s0))>>((ctrl[2]?2'sb01:s7))):+(((ctrl[0]?6'sb101100:s3))>>((2'sb01)>>>(u5))))))|(2'sb11));
  assign y7 = s4;
endmodule
