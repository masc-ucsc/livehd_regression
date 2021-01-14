module wideexpr_00319(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = -(1'b0);
  assign y1 = (s3)<<({(ctrl[6]?s5:s7)});
  assign y2 = (((ctrl[4]?-(({$signed((5'sb01010)&(+(s0))),(ctrl[7]?$signed(1'sb0):(ctrl[3]?4'sb1010:2'sb11)),$signed((ctrl[5]?(s0)>>(1'sb0):-(1'sb0)))})>>((((ctrl[5]?(1'b1)-(4'b1010):(s7)>>>(4'sb0110)))<<<((6'sb111010)>>({6'b110010})))<<<({3{~&(4'sb1100)}}))):({6'b100111,(ctrl[4]?$signed(((2'sb00)<<(s3))^~({4{u1}})):2'sb11)})>>>(+(5'sb10000))))^~(3'sb010))<<(+(((ctrl[3]?((($signed($signed(s4)))==((ctrl[6]?s0:(s0)|(2'sb00))))+(6'sb101000))<<<((ctrl[0]?(((s7)<<(3'sb110))-(s0))>>((ctrl[1]?$signed(s6):1'sb1)):(ctrl[6]?5'sb00110:-((u0)+(4'sb0001))))):~&($signed(({s7})>>(~^((6'sb111000)==(s2)))))))>>>((((ctrl[4]?(ctrl[2]?$signed($unsigned(2'sb01)):(ctrl[6]?+(3'sb010):(s3)<<(4'sb1110))):(ctrl[6]?(-(5'sb11000))>>(-(s1)):((s4)|(s0))<<<((s2)>>>(s3)))))>>>((-({(s1)-(s3)}))>>(s7)))>>(s2))));
  assign y3 = (ctrl[0]?($signed(((4'sb1100)<<($unsigned(((ctrl[1]?1'sb1:2'sb00))|(5'sb10111))))<<(s2)))<<(s2):s2);
  assign y4 = (+($unsigned(5'b10110)))^~(1'sb1);
  assign y5 = {3'sb100};
  assign y6 = 4'sb0010;
  assign y7 = $signed((ctrl[6]?u4:(ctrl[0]?u2:(ctrl[5]?{1{s2}}:&((((s4)<<<((u4)>=(u2)))<<<((ctrl[6]?5'sb11111:{s7,s0})))^(s1))))));
endmodule
