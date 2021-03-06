module wideexpr_00117(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {(((ctrl[2]?((3'sb001)<<(s3))-((s7)^~(6'sb110111)):(ctrl[5]?$signed(s4):(2'sb11)<<(3'sb101))))<<<((ctrl[0]?((1'sb1)|(u5))>((ctrl[4]?6'sb100110:3'b000)):4'b1001)))|(s6)};
  assign y1 = {3{u0}};
  assign y2 = -(-((~($unsigned((s1)|((ctrl[0]?s6:6'sb110010)))))<<($signed(s2))));
  assign y3 = {(ctrl[1]?{((1'sb1)<<<(4'sb0110))<<<({3{s3}}),s5,((ctrl[3]?u0:s1))>>((6'sb001001)==(2'sb10))}:{4{((ctrl[6]?s7:5'sb00110))<(s1)}}),(5'sb11000)-((ctrl[4]?s6:3'sb111)),4'b1001};
  assign y4 = (ctrl[6]?-(-(({s0})^~($unsigned(4'sb0101)))):s3);
  assign y5 = {2{($unsigned(((4'sb0110)<<<(1'b1))<<((s6)<<<(u6))))&(|((ctrl[4]?(3'sb001)&(1'sb1):5'sb01100)))}};
  assign y6 = {{1'sb0,{4{({2{$signed(({5'sb00000,s6,6'sb111101})<<((ctrl[0]?s7:4'sb0011)))}})>>>((s6)&((ctrl[6]?u1:({u4})-(1'b1))))}}},s0,({(ctrl[7]?5'sb11111:(ctrl[4]?(s7)^(3'sb111):$signed(s0))),(2'b00)<<<(s0)})<<<(!((+((((ctrl[5]?s0:s2))>>((3'b100)!=(3'b100)))>>(s3)))+($signed(1'sb0))))};
  assign y7 = ($signed((3'sb111)<<<({3{+({3{(ctrl[2]?$unsigned(s2):(u1)^(3'b000))}})}})))>>>((({{1{$signed($unsigned(2'sb00))}},(5'sb01011)>>>(s3)})>>((|(s5))<<((-((ctrl[0]?(2'sb11)!=(s3):6'sb111010)))^((s2)>=(({s7})>=((s4)<<(5'sb00111)))))))>>(($unsigned({+({{1{1'sb1}}}),5'sb11000,(ctrl[7]?(ctrl[1]?s2:+(3'sb101)):+({s3,6'sb001011,5'sb10010}))}))<=({(((6'sb100100)>>>((5'sb10101)<<(s2)))^((-(u5))&($signed(s5))))-(-(((1'sb0)^~(u1))>>>((s7)!=(s1))))})));
endmodule
