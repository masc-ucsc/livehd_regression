module wideexpr_00562(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s7;
  assign y1 = +({3{u2}});
  assign y2 = s4;
  assign y3 = $signed(((+((2'b10)<<<(u5)))!=(s1))>>>(~^((ctrl[0]?$signed(((s0)<<<(2'sb11))^(s1)):$signed(s3)))));
  assign y4 = (+(((((ctrl[4]?(s7)<<<(s0):(s1)>>>(u3)))>>>((3'sb101)^(3'sb010)))-(s3))+(s7)))-(($signed(((ctrl[5]?s7:+(s7)))|(1'sb1)))>>>(-(((ctrl[6]?((ctrl[4]?1'sb0:2'sb00))<<((ctrl[0]?s6:s2)):6'sb001101))>>>($signed(+(6'sb010011))))));
  assign y5 = {4{(s4)>>((ctrl[3]?(ctrl[3]?s3:s1):-((ctrl[4]?(ctrl[3]?+(4'sb0100):-(s3)):(ctrl[0]?(1'sb0)<<<(3'sb001):s2)))))}};
  assign y6 = $signed(u0);
  assign y7 = (ctrl[5]?$signed($signed($signed({1{(ctrl[3]?s4:(s5)>>>(s4))}}))):(((s1)+((ctrl[4]?(s1)|(s7):s3)))+(+((ctrl[3]?+((6'sb000011)^~(5'sb11101)):(ctrl[6]?$signed(6'sb111001):$signed(4'b0011))))))<<<((ctrl[3]?{{(ctrl[5]?s0:$signed(6'sb011111)),(ctrl[7]?~&(4'sb0001):(1'b1)^~(6'sb101010)),(-(4'sb0110))&((1'sb1)^~(5'sb00001))},(ctrl[5]?{(2'sb11)&(s0),(s7)^~(s4)}:u5),$signed(($unsigned(3'sb010))!=((s0)>>>(4'b0011))),3'sb010}:((((3'sb010)|(5'b11111))+($signed(3'sb001)))<<<($signed(s0)))^(u1))));
endmodule
