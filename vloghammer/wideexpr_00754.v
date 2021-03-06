module wideexpr_00754(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 6'sb111111;
  assign y1 = $signed((({$signed(((ctrl[1]?(3'sb010)<<(s3):(s0)>>(4'b1100)))|(6'b101101)),(1'sb1)+({6'sb000011}),{s2,3'sb011},(ctrl[5]?(($signed(2'sb01))^($signed(s1)))<<((ctrl[7]?6'b110110:(u0)<<(s6))):(ctrl[6]?$signed(s0):((ctrl[7]?2'sb10:s2))&((2'sb00)>>>(5'b10011))))})>=(((((ctrl[2]?(4'sb1010)-(3'sb000):(1'b0)+(u5)))^~($signed(s2)))&((ctrl[0]?{4{1'sb1}}:(6'sb011001)-(u6))))==({3{$signed(+(1'b0))}})))^~({3{5'b01010}}));
  assign y2 = -((3'sb010)<=($unsigned(((ctrl[0]?(s2)>>(4'sb1111):(ctrl[7]?2'sb00:1'sb1)))>>(((ctrl[3]?6'sb010101:4'b1001))>>>({1{3'b011}})))));
  assign y3 = -((1'sb1)|((6'sb001000)>>>(($signed((s6)^(^(s3))))|($signed({+(s7),$signed(s4),5'b01010,{4{s7}}})))));
  assign y4 = $signed((s6)>>(+(+(-($unsigned((ctrl[3]?$unsigned(s1):(2'sb10)^(6'sb111000))))))));
  assign y5 = ((s3)^((ctrl[1]?-((s1)>>>(3'sb001)):($signed(4'sb0011))>>>((ctrl[3]?s6:s5)))))>>>((ctrl[5]?((5'sb00100)|($signed(s1)))^~($signed({u3,4'b0011,4'sb1001})):(ctrl[6]?+((1'sb0)<=(5'sb11101)):$signed((s3)^~(s6)))));
  assign y6 = (($signed(5'sb11010))<=(-(({4'sb0010,5'sb00010,s1})<<<((+(((s7)>=(s1))<<<(u0)))|((s5)>>>(6'sb000010))))))&(3'sb110);
  assign y7 = (ctrl[2]?+(u6):(-($signed({4{s1}})))-(((ctrl[2]?$signed(3'sb010):-(s7)))<<<(((ctrl[7]?4'b1110:s6))-(4'b0111))));
endmodule
