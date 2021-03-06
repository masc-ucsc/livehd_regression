module wideexpr_00459(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = !((ctrl[1]?u4:|((ctrl[5]?((-(((ctrl[2]?s7:4'b1101))|({3{5'sb10001}})))<<((ctrl[7]?$signed(s7):4'sb1000)))+(((ctrl[0]?(ctrl[7]?(2'sb01)^(1'sb1):$signed(6'b010111)):$signed((ctrl[3]?s6:s4))))^(((ctrl[4]?+(1'b1):$signed(2'sb01)))^((s4)<<<((5'b10100)+(1'b1))))):(($signed((s0)<<<((6'sb110110)>>>(3'sb001))))<<<(+($signed((2'sb10)^(5'sb00111)))))^~((3'sb000)&(((ctrl[3]?5'sb00010:(s6)<<(u6)))<<<(3'sb011)))))));
  assign y1 = +((ctrl[7]?(ctrl[5]?s7:s2):(ctrl[7]?4'sb0010:$signed((^((ctrl[0]?{(ctrl[2]?u6:u5),1'sb1,3'sb110,(ctrl[6]?6'sb100111:s3)}:(6'sb110100)>>>(2'sb01))))+(~((ctrl[5]?4'sb0100:&((s7)|(s3)))))))));
  assign y2 = s6;
  assign y3 = (ctrl[1]?s5:(ctrl[5]?s5:s1));
  assign y4 = (-({3{((s4)^~(+(-(^((ctrl[4]?4'sb1001:3'sb001))))))>>>(6'sb100000)}}))<((ctrl[3]?$signed(((ctrl[5]?4'sb0000:(~^(~&({3'b010,s5,s5,3'sb001})))<<(1'sb1)))-((((ctrl[5]?{5'sb11001}:((s7)>(4'sb1010))>>>((ctrl[3]?6'b011101:s4))))<<<(+(s5)))==({$signed(($signed(4'sb1001))+(6'sb011000))}))):6'b001010));
  assign y5 = 5'b01110;
  assign y6 = u0;
  assign y7 = s4;
endmodule
