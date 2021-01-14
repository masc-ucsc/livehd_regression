module wideexpr_00734(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (1'sb1)>($signed({1{3'b000}}));
  assign y1 = (ctrl[7]?{|(($unsigned((((ctrl[2]?2'sb10:1'b1))-(s5))|((~&(u4))<<<(s0))))!=(-(1'sb1))),s4,(6'sb000010)<<(6'sb110101)}:{2{|(-(4'sb0011))}});
  assign y2 = s0;
  assign y3 = (ctrl[6]?$unsigned(!({{3{(6'b101000)^~(3'b101)}},s1,((2'sb00)>>(s4))<<<(1'sb1),1'sb0})):($signed((1'sb1)&($signed($signed(6'sb101111)))))!=(((4'sb0001)^~((5'sb00100)-(s3)))^~((s7)|(+({3{3'sb001}})))));
  assign y4 = {+((ctrl[0]?((4'sb0001)>>>($signed(1'b0)))&(($signed(3'sb000))+(2'sb10)):($signed(2'sb11))>>(((s1)-(s7))<<<((ctrl[1]?s0:2'sb00))))),(((+(u3))^~(4'sb1110))<<<((ctrl[0]?((ctrl[4]?5'sb11001:s5))<<<($unsigned(2'b11)):(3'sb110)|(6'sb000001))))-((ctrl[5]?3'sb001:s6)),(ctrl[0]?(ctrl[1]?4'sb1110:(s5)<<<({4{-(s2)}})):(3'sb111)^~($signed(~((2'sb01)&(2'sb10))))),(((((ctrl[5]?3'sb000:s1))+($signed(5'sb11000)))&((6'sb010101)-((s6)>>(5'b00100))))<<((($unsigned(5'sb01100))<<<(s3))^~(4'b1110)))<<<($signed(3'sb110))};
  assign y5 = {(ctrl[0]?((((+(1'b0))^~($signed(s6)))>>>(+(-(5'b11000))))<<<(&(($signed(4'sb1100))>>>(1'sb0))))|((((+(4'sb0110))+(-(u1)))^~(4'sb1111))>>((3'sb000)==(+(-(u1))))):(s5)>>>((+({1'b0}))&(s6))),s7,((4'sb1000)>>>((+(((ctrl[2]?s3:s2))|(+(s6))))^(5'sb00010)))+((ctrl[6]?((2'sb11)-(5'sb01111))<<<(-(((s0)>>(5'sb10000))-(2'sb00))):(+((ctrl[6]?s6:(ctrl[5]?5'b10001:1'sb0))))|((ctrl[7]?+((u7)^(s0)):+(s5))))),+($signed(s1))};
  assign y6 = (s4)<<<({4{$signed($signed(s3))}});
  assign y7 = (s6)<<($signed(($signed(s2))>>(5'b10001)));
endmodule
