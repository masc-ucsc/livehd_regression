module wideexpr_00158(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (+((s1)>>>(u5)))<<<($unsigned(($signed(s5))^~(+($signed(+(+($signed(6'sb011011))))))));
  assign y1 = (ctrl[2]?1'sb1:|((((4'sb0110)<<((((u6)>(!(u1)))<<<((ctrl[2]?+(1'sb1):s7)))!=(((1'sb1)^(-(s1)))==((ctrl[7]?(s0)&(s0):$signed(s1))))))-(-((($signed((1'sb0)==(s7)))<<<(2'sb10))<<(({(6'sb100111)>>>(6'sb111010),$unsigned(s3),{2'sb11,u4}})^~(3'sb001)))))>>>(s2)));
  assign y2 = ((~({3{(3'b111)&(s3)}}))<((((ctrl[6]?u5:u1))<<<((6'sb000101)<<(s7)))+(1'b0)))>>(s5);
  assign y3 = 1'sb0;
  assign y4 = s4;
  assign y5 = (ctrl[6]?6'sb001000:((ctrl[1]?(ctrl[5]?$signed((((ctrl[7]?{4{u4}}:{1{1'sb0}}))-((+(u6))==(-(s2))))-(({$signed(s4)})>>(u5))):((ctrl[3]?$signed(-((ctrl[4]?s7:s6))):$signed((3'sb001)-((2'sb11)&(s4)))))|($signed({4{{2{$signed(1'sb1)}}}}))):-(-(s0))))>>>(((4'sb1011)>>((ctrl[1]?(ctrl[4]?(s7)+(s4):s7):(+(((ctrl[2]?1'sb0:1'sb1))<(-(6'sb000000))))<<<(4'sb1001))))<<(((5'sb11100)|(((ctrl[2]?4'sb1001:($signed(5'b11001))^~($signed(u1))))&(((ctrl[5]?(ctrl[1]?2'sb11:s7):(ctrl[6]?3'sb100:s5)))<<<(3'b100))))==($signed((ctrl[6]?s5:-((s0)>>(1'sb0))))))));
  assign y6 = $unsigned(s1);
  assign y7 = {1'b1,($signed((ctrl[4]?u6:s3)))|((-($unsigned((s7)+(5'b11011))))+($signed((-(6'sb011100))&(u6)))),({3'b001,(ctrl[1]?(ctrl[0]?{4{3'b000}}:(6'sb001100)^~(2'sb00)):6'b000111),&(+(+(3'sb010))),(s6)<<(((2'b00)-(s7))+(6'b100111))})&({^((6'sb010111)>(-(2'sb00))),u4,$signed((s1)^~((3'sb110)>>(s5))),(ctrl[6]?((s5)^~(6'sb100011))<<((6'sb101101)<=(s4)):(ctrl[1]?4'sb0110:(ctrl[7]?s1:5'sb00100)))}),s1};
endmodule
