module wideexpr_00418(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = |(3'sb011);
  assign y1 = ({+(s3),(ctrl[0]?$signed($signed(((s0)<<((2'b11)<<<(~^(s2))))^~((((1'sb0)^(3'sb011))&(1'sb1))>=(1'sb0)))):{2{{1{+(-(((1'sb1)<<<(s7))&(&(3'b110))))}}}})})!=(u2);
  assign y2 = $signed($signed(4'b0001));
  assign y3 = +(^((ctrl[4]?(1'sb1)|(+(6'sb111100)):+(s0))));
  assign y4 = {2{4'sb1011}};
  assign y5 = (ctrl[5]?$signed($signed(6'sb001110)):4'sb0010);
  assign y6 = (ctrl[5]?(s1)^($signed({s7,s7,-(u5),|(s7)})):$signed(($signed((5'sb11110)<(4'sb1100)))+(((s3)-(s0))<<({4{3'sb001}}))));
  assign y7 = u0;
endmodule
