module wideexpr_00398(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s3;
  assign y1 = s1;
  assign y2 = $signed((ctrl[2]?{$unsigned((ctrl[0]?((ctrl[6]?1'sb0:(s2)<<<(s0)))<<(1'b1):((s2)<<<(+((5'sb01111)&(5'sb11010))))<<<(((ctrl[5]?$signed(1'sb1):(ctrl[4]?2'sb01:3'sb111)))<($signed((ctrl[0]?2'sb11:1'sb0)))))),{u1},2'b01,-({1{s1}})}:^((2'sb00)-($unsigned(4'b1010)))));
  assign y3 = (ctrl[0]?5'sb10010:(((($signed(s7))>>>((-(2'sb00))<<({$signed(1'sb0),^(5'b00000),{1'sb0,3'sb000,5'sb10111,5'sb01010}})))>>(3'sb001))|((((($signed(u3))>>((6'sb100011)>=(s0)))>>>(6'sb111001))>>>((ctrl[3]?(ctrl[1]?s2:(s6)-(4'sb0010)):+({3{s3}}))))<<<(((ctrl[6]?$signed((s2)==(2'sb11)):s0))-(s1))))<<<((ctrl[2]?2'sb10:(ctrl[2]?(ctrl[7]?6'sb100000:((ctrl[3]?s5:(ctrl[3]?s5:s3)))>>>((ctrl[4]?$signed(1'b1):-(6'sb101111)))):$signed((s2)+(({6'sb011001,s2})^~({2{4'sb0010}})))))));
  assign y4 = {(((4'sb1110)<<(6'sb111011))>>({((3'sb110)|(s5))<=(s3),(ctrl[5]?(s0)+(1'sb0):(3'sb000)>>(2'sb10))}))>>>(($signed(({s2,4'sb1111,1'sb0,2'b00})>>>(~|(2'sb00))))>>>({-(-(s7)),{3{s4}}})),^(6'sb011000),3'sb001};
  assign y5 = {1{({$signed(6'sb011010),((ctrl[3]?(3'sb100)-($signed((ctrl[4]?3'sb110:6'sb100001))):2'sb10))|(s5)})!=(((!(((ctrl[7]?5'sb01011:~^(6'sb011101)))>($unsigned((6'sb110010)^~(s1)))))>>($signed(4'sb0111)))&((~|({3{3'sb101}}))>>>((ctrl[3]?1'b1:1'sb0))))}};
  assign y6 = $signed(s1);
  assign y7 = s1;
endmodule
