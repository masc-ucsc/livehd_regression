module wideexpr_00653(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (({(-((s2)>>(s3)))<<<((ctrl[6]?(ctrl[2]?(2'sb00)+(+(s4)):((ctrl[5]?(5'sb10111)<(s2):6'b111110))>>(((ctrl[1]?1'sb0:s1))>>>((2'sb01)>>(5'sb10010)))):{3{2'b00}})),(ctrl[4]?3'sb110:(2'sb11)>>(-(({(2'sb11)^(s7)})>>(((s6)>>>(u1))^(6'sb010011))))),2'sb11})<<<(s1))<<((ctrl[5]?s1:-(((ctrl[4]?u4:s7))^~(6'sb010010))));
  assign y1 = u7;
  assign y2 = ((~|(+(3'b111)))<<({(ctrl[3]?4'sb0011:$signed({1{$signed({4{6'sb001011}})}}))}))^({2{{2{(ctrl[1]?+((ctrl[6]?u2:{4{{2'sb00}}})):2'sb10)}}}});
  assign y3 = (ctrl[5]?{3{3'sb000}}:((ctrl[2]?u6:u2))^((3'sb100)^((({s6})>>(5'b01110))<<<((+($unsigned((s4)^(s0))))|((6'sb110101)-((-(2'sb11))^~(s7)))))));
  assign y4 = {2{(((ctrl[3]?~|($signed($signed(s5))):{s4}))<({$signed({1{s5}}),s6,{4{$signed((u6)<<(s7))}}}))<<<((ctrl[1]?$signed((ctrl[1]?-({6'sb010110}):(s1)<<(+(1'b1)))):+($signed(s0))))}};
  assign y5 = s0;
  assign y6 = s5;
  assign y7 = ((+((ctrl[1]?s7:((($signed(s5))^~(1'sb1))>>(s0))-((ctrl[4]?((ctrl[7]?2'sb01:5'sb11110))<<<(s2):((3'sb011)+(s0))<<((3'sb111)<<<(s1)))))))^~(5'sb01111))<=(~|(6'sb100011));
endmodule
