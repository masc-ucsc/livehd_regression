module wideexpr_00755(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $unsigned(u6);
  assign y1 = ({(ctrl[1]?(((5'sb01110)<<<(5'sb10111))>>>(~^(4'sb1100)))==(4'sb1100):(^((ctrl[4]?s6:s5)))+(((2'sb01)!=(1'sb1))^~({3{5'sb10110}})))})<<((ctrl[2]?((($signed(2'sb10))<<<(s7))<((s7)+((s0)+(s0))))>>((s0)+(+(s0))):{2{^({(s2)<<<(2'sb01),~|(u5),$unsigned(1'sb0),(ctrl[1]?s3:s3)})}}));
  assign y2 = (((ctrl[7]?(s1)-((2'sb01)&(s0)):(ctrl[4]?3'sb000:(3'sb100)>>(s2))))<<<(6'sb111001))<<((ctrl[7]?$signed(+(5'b10000)):({1{(6'b111100)>>(s0)}})&(^((3'sb110)>=(3'sb010)))));
  assign y3 = {((-(1'b1))<<<(1'b1))>>>((((ctrl[6]?2'sb11:5'sb11111))-(s4))>>>(&(s3))),{+(s3),s0}};
  assign y4 = +(1'sb1);
  assign y5 = s0;
  assign y6 = {4{{4{s3}}}};
  assign y7 = 3'sb100;
endmodule
