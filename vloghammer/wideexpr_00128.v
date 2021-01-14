module wideexpr_00128(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ($signed(($signed(-(u7)))<<(({3'b011,2'sb11,s0,s0})^~($unsigned(1'sb1)))))^(({(ctrl[4]?3'sb100:(1'sb1)>>(6'sb000101)),s7,s5})<<<($signed((s5)<=(4'sb1010))));
  assign y1 = u0;
  assign y2 = ~(((ctrl[3]?&($signed(u4)):(s7)>>>(4'sb1111)))>>>(((ctrl[6]?(ctrl[1]?((ctrl[0]?1'sb0:6'sb110111))|(s5):((1'sb1)>>>(s6))<<<((u2)^~(4'sb1111))):(+((s1)>>>(3'sb111)))>>(u2)))<<<((ctrl[0]?($signed($signed(s2)))|((ctrl[6]?+(s6):(ctrl[4]?2'sb00:s2))):(ctrl[3]?(+(s7))&($signed(2'sb10)):(-(5'sb11100))>>>(|(s0)))))));
  assign y3 = (ctrl[4]?(ctrl[4]?(ctrl[1]?(ctrl[1]?s1:{(3'sb010)<<(-($signed(-(6'sb001111)))),(1'sb1)-(((2'sb01)!=(+(s5)))+((ctrl[4]?$unsigned(s4):{1{s7}}))),s7,~^((((ctrl[6]?4'sb0110:2'sb01))>>>(~&(u0)))>>>(s4))}):(~($unsigned((ctrl[4]?(1'sb0)<<((3'sb111)>>(u0)):s1))))>>>($signed({-(((s1)-(5'sb10101))==((ctrl[0]?s7:s6))),+($signed(2'sb10))}))):$signed(6'sb010010)):{(((ctrl[2]?$signed({1{3'sb100}}):(+(1'b1))>>>((ctrl[2]?(-(5'b11111))<<(s0):(ctrl[2]?+(3'sb011):3'sb010)))))<<(1'sb1))+((1'sb1)^((s6)&($signed(+(s6))))),{4{(((($signed((s4)-(s7)))-(s2))>>(5'sb00010))<=(s7))>>((ctrl[0]?$signed(|(((u0)<=(5'b11111))-({u0,4'b0111,3'sb111}))):$signed(((6'sb111100)^(s3))<=((-(s0))>>>({1{s0}})))))}}});
  assign y4 = ((s5)<<(((6'sb110001)>>(-(~(u7))))<<(($signed($signed(3'sb010)))<=((1'sb1)^($signed(2'sb11))))))+($signed((&($signed((s2)<<(s0))))|((((ctrl[2]?u3:u0))|((4'b1001)^(6'sb011101)))<<(~&(2'sb10)))));
  assign y5 = 5'sb10100;
  assign y6 = $signed((((ctrl[0]?($signed(s2))==(1'b1):(s7)>>((ctrl[7]?6'sb001000:-((3'sb110)>=(5'sb01011))))))|((s2)>((ctrl[5]?4'sb1110:$signed(3'sb011)))))>>>(((ctrl[1]?(ctrl[1]?$signed(({4'sb1010,s6,6'sb111101,u0})>(s1)):((ctrl[0]?$signed(s0):s2))^~(($signed(s6))>>(s4))):(-((ctrl[1]?s0:(s4)>>>(2'b00))))^~(-(((5'sb00100)>>>(4'b1011))>>>({4{s0}})))))-((ctrl[3]?s7:s5))));
  assign y7 = (s5)>>>(($signed((ctrl[2]?-(-(s4)):s6)))==($signed((ctrl[6]?6'sb111011:-((2'sb10)<<<(s5))))));
endmodule
