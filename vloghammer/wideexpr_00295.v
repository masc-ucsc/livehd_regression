module wideexpr_00295(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ~(s1);
  assign y1 = ~|(s6);
  assign y2 = $unsigned(-($signed(-((ctrl[6]?$signed((ctrl[4]?s1:s7)):{~^(s5),$signed(5'sb01000)})))));
  assign y3 = 2'sb00;
  assign y4 = (-({(-(s1))<=(s6)}))-(($signed($signed((ctrl[6]?5'sb01110:s5))))+(4'sb1011));
  assign y5 = (ctrl[5]?{1{((($unsigned(s0))>>>(-(1'sb0)))^({(ctrl[1]?s3:s0),(ctrl[2]?1'sb1:s3),$unsigned(1'sb0)}))^({1{1'sb0}})}}:u2);
  assign y6 = (2'sb00)|((ctrl[6]?{4{s6}}:{3{$signed((~($signed(s1)))>>>((($signed(&(6'sb010110)))^($signed($signed(5'sb10010))))<=(({(1'sb1)<<<(2'b11),(u1)^(u1),$signed(s4),-(s3)})>>(((1'sb1)<<<(s7))&({2{5'sb00001}})))))}}));
  assign y7 = s1;
endmodule
