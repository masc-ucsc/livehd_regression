module wideexpr_00955(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +((ctrl[2]?(ctrl[5]?(ctrl[6]?$signed($signed(s1)):+(({1'b0,s2,3'sb100,s7})<<<(s2))):($signed((5'b00011)>($signed(s6))))>>(((ctrl[7]?2'sb01:s5))>=((ctrl[4]?(4'sb0101)-(s5):(ctrl[2]?1'sb0:2'sb10))))):((ctrl[4]?s7:3'sb111))^~((ctrl[6]?4'sb1101:(ctrl[5]?s0:6'sb110011)))));
  assign y1 = {2{(6'b110010)>>(s2)}};
  assign y2 = s0;
  assign y3 = ((s0)>>(((ctrl[2]?((4'sb0111)>>>((&(6'b001111))>>>(($signed(s6))>>>((s2)&(s7)))))<<<((s6)^(((ctrl[1]?$signed(s1):s2))^~($signed({1{s5}})))):$signed((|((s6)<=(u4)))>($signed(1'sb0)))))<<((($signed((-((u3)+(4'b1110)))-((ctrl[5]?s6:6'sb101010))))|(($signed((s6)&(-(s7))))&((ctrl[7]?((ctrl[4]?5'sb11011:s1))<<<($signed(6'sb110111)):((ctrl[1]?s0:4'sb1101))^(5'sb11111)))))<<<(+(1'sb1)))))^~((s0)<<<($signed(s4)));
  assign y4 = s5;
  assign y5 = (+($signed(u4)))^~($signed((ctrl[0]?(((ctrl[5]?$signed(s6):$signed($signed(u4))))-(((ctrl[6]?(ctrl[4]?3'sb010:s3):(s6)-(s7)))<<((s0)>>>(s6))))|(s6):(-(((-(s3))<<<({4{1'b0}}))&((s7)^(-(u6)))))-((s6)|(3'sb000)))));
  assign y6 = (+(((ctrl[5]?(ctrl[6]?$signed(3'sb000):$signed((((s3)&(6'sb111011))>=(+(s7)))<<<(^(+(1'b1))))):s6))==(6'sb111100)))==((s0)>>>(5'b11110));
  assign y7 = s3;
endmodule
