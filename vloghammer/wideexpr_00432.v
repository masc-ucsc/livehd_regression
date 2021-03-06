module wideexpr_00432(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 1'sb0;
  assign y1 = -({1{({1{((ctrl[4]?6'sb100100:6'sb111011))<((5'sb00101)+(s3))}})>>((ctrl[5]?(1'b1)<<((6'sb000001)>>(6'sb010110)):(ctrl[5]?!(s1):(1'b0)|(1'b0))))}});
  assign y2 = ((ctrl[7]?(({4{s6}})<<($signed({1{u0}})))>>(~($signed((1'sb1)>=(3'sb010)))):{1'b0,($signed((1'sb1)<<(3'sb011)))^~((s6)^((s2)^~(s5))),(ctrl[1]?s4:2'sb10),(1'sb1)-(({s3,s4})<<<({4'b1011,s3,s7,s3}))}))>>>((ctrl[1]?{s5,+(((2'b01)^~(2'b10))>>(2'sb01))}:(s1)>((($signed(s1))<<<(^(s1)))&(1'sb0))));
  assign y3 = (ctrl[6]?-($unsigned(($signed((-(u5))<<(4'sb1010)))>>>(5'sb00110))):-(+(1'sb1)));
  assign y4 = {2{3'b110}};
  assign y5 = {3{$unsigned($signed($signed(+(6'sb001110))))}};
  assign y6 = $signed((ctrl[7]?-(s5):s1));
  assign y7 = -((3'sb001)|(((-(2'b10))>>({1{((3'b101)+(2'sb10))!=({s4,u3,s1})}}))+(((ctrl[1]?(ctrl[1]?$signed(4'sb1010):(ctrl[3]?s3:s5)):(ctrl[7]?$signed(s2):+(3'sb100))))>>>($signed(((s0)+(s2))>($signed(s6)))))));
endmodule
