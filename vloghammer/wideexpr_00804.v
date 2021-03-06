module wideexpr_00804(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {($signed(((ctrl[6]?((s0)<<(((ctrl[2]?s2:3'sb110))^(3'sb011)))>>>({5'sb10110}):(ctrl[7]?(((ctrl[6]?4'sb0001:4'sb0010))>>(2'sb11))<<<({4{(u4)>=(u7)}}):($signed((2'b11)^~(1'b0)))&((s3)^~(s4)))))!=($signed((s4)&(+(s7))))))+({1{$unsigned(u4)}}),($unsigned(s3))<<<(($signed(6'b111100))==($signed({4{($signed((s3)<<<({3{5'sb01101}})))>>>(((ctrl[3]?$signed(u3):(2'sb00)-(6'sb000101)))-((ctrl[5]?(2'sb10)^(2'sb01):5'sb10010)))}}))),(s1)|($signed((ctrl[6]?s7:s3)))};
  assign y1 = (ctrl[1]?(ctrl[6]?(ctrl[6]?&((4'sb0001)^~(s2)):{4{2'sb00}}):{4{(s6)^~((ctrl[5]?s5:s1))}}):u3);
  assign y2 = ($signed(s5))>>((ctrl[5]?$signed((s7)<<(s4)):(ctrl[3]?s5:+(s1))));
  assign y3 = -($signed($signed($signed(-((s7)&(3'sb000))))));
  assign y4 = s5;
  assign y5 = (ctrl[0]?$signed(2'sb01):s4);
  assign y6 = (6'sb100001)>>>({1'sb1,$signed(2'sb01),s7});
  assign y7 = ($signed(+(+($signed(u5)))))^(s3);
endmodule
