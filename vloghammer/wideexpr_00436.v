module wideexpr_00436(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (2'sb00)^~((s5)>>>({+(+(4'sb0100)),2'b00,s5}));
  assign y1 = u3;
  assign y2 = $unsigned((3'b110)>>(((u0)|(((ctrl[6]?(~(s1))<<((ctrl[3]?2'sb01:5'sb10010)):((ctrl[0]?u7:s2))&(u1)))<<<(s4)))|({+({3{(1'sb0)<<<((ctrl[5]?s3:3'sb110))}}),$signed($signed({-(s3),{4{4'sb1010}},(ctrl[2]?2'sb11:s2),(6'sb111100)^~(s1)})),{$signed($unsigned($signed(4'sb1010))),s1,u7,$unsigned(+((ctrl[0]?s6:s4)))}})));
  assign y3 = ((($unsigned($signed(4'sb1110)))<<({-((ctrl[5]?s5:s1)),(ctrl[5]?-(1'sb0):$signed(3'sb000)),(ctrl[2]?s2:1'sb0)}))==(({(ctrl[6]?(s2)>>(s2):{4'sb1101,3'sb000}),((6'sb010000)-(s0))>>>((4'sb0111)-(2'sb11))})<=((((3'sb010)+(2'sb11))&((2'b01)|(1'b0)))!=($unsigned($signed(s7))))))<<(((ctrl[3]?(3'sb110)&({$signed(u6),(s7)<<<(5'b11011)}):2'sb00))>(($signed(+(3'sb001)))<(($signed($signed(u7)))^(+((ctrl[4]?s0:s7))))));
  assign y4 = $unsigned((s5)>>>(+((ctrl[1]?s2:$signed((ctrl[5]?-({1{{s4,2'b00}}}):(5'sb11101)<<<(^(+(s4)))))))));
  assign y5 = {(({3{(+((5'sb00110)<<(($unsigned(5'sb00001))^({s5,1'b0,5'sb01111,s2}))))^($signed(+(6'sb100000)))}})>>($signed((($signed({1{(ctrl[6]?5'b01110:6'b000110)}}))>>(s2))<<<(s6))))^~(1'b0),2'b00,s2,s4};
  assign y6 = $signed(s0);
  assign y7 = (5'sb01111)^(-((s1)|({1{(6'sb001100)&(s3)}})));
endmodule
