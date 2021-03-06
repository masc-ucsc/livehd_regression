module wideexpr_00658(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {s2,((((ctrl[3]?(ctrl[7]?s0:5'sb10010):-(s2)))>>>($signed((1'sb1)<<<(4'b0010))))<<((ctrl[3]?(+(u4))&((s5)>>>(s0)):(ctrl[5]?1'sb1:(ctrl[5]?s0:s5)))))<<(|(3'b101))};
  assign y1 = {6'sb100000};
  assign y2 = s2;
  assign y3 = {2{(ctrl[0]?(ctrl[0]?((ctrl[3]?-((s3)<<(3'sb100)):-(3'sb100)))^~(-(((s3)>>>(2'sb01))>>((ctrl[3]?5'b10001:u1)))):4'sb1111):(5'sb10100)|((ctrl[0]?4'sb0000:($signed(5'sb00011))^(2'sb11))))}};
  assign y4 = s2;
  assign y5 = s7;
  assign y6 = {3{(ctrl[3]?-($signed(2'sb11)):-(u7))}};
  assign y7 = (ctrl[1]?((ctrl[2]?$signed((((ctrl[0]?($signed(s6))|(s7):((1'sb0)^~(5'sb11011))^(s0)))^(2'sb10))-(-((-(s7))<<<(s6)))):({(ctrl[1]?(((s2)+(s2))>>>((4'b0100)<(u1)))<<<({s5,^(s1)}):s3),s0})>>((+(((+(5'sb10111))^~($signed(s0)))^(s6)))<=(s0))))<<<((ctrl[2]?{+({3{(((2'sb10)-(s4))>>>(s6))<((ctrl[5]?s3:(s4)-(s3)))}})}:(((ctrl[0]?2'b11:(ctrl[2]?4'b0110:u4)))<<<({2{u2}}))==((u3)<<<(-(s5))))):+($signed((ctrl[2]?s3:$signed($unsigned((ctrl[6]?($signed(6'sb111111))==(5'sb10111):2'b00)))))));
endmodule
