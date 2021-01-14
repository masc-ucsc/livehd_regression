module wideexpr_00235(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (3'sb011)-((ctrl[5]?3'sb100:(-(4'sb0011))^~((2'sb00)>>($signed((ctrl[4]?(3'sb000)^(4'sb1000):2'sb11))))));
  assign y1 = ((ctrl[2]?(ctrl[5]?(ctrl[4]?+(s0):1'b0):(ctrl[4]?(4'sb0111)&(2'b00):(ctrl[3]?u2:5'sb11010))):2'sb10))>>>({(4'sb0010)^~((ctrl[6]?(1'sb0)&(3'sb000):-(2'b10))),(ctrl[2]?((s3)<<(4'sb0000))&((2'sb01)>>(4'b1110)):$signed((s3)>(4'sb1110))),{((s2)-(1'sb0))^~((ctrl[3]?s5:2'sb10)),{2{3'sb111}}},{3{$unsigned($signed(6'sb111010))}}});
  assign y2 = (6'sb111001)>>>(s4);
  assign y3 = -({3{-({2{(ctrl[6]?(ctrl[4]?4'b1101:s6):(s0)-(5'b00111))}})}});
  assign y4 = 3'sb101;
  assign y5 = s4;
  assign y6 = 2'sb11;
  assign y7 = (ctrl[4]?(ctrl[4]?(ctrl[1]?5'b11000:5'sb10001):$signed($signed((-(3'sb000))<<((ctrl[5]?3'sb100:s5))))):(s3)+({((-(s0))<<<((s7)|(s0)))>>>(((2'sb11)^(2'sb11))|(+(2'b01))),(ctrl[1]?$signed((s2)>>(s0)):s4),$signed({2{{2'sb11,5'sb11001}}})}));
endmodule
