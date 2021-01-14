module wideexpr_00825(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $unsigned({{4{s2}},(((s2)<<<(1'sb1))|((ctrl[0]?s0:s1)))|(+((6'sb011101)<<<(s4))),(ctrl[6]?(+(s7))&($signed(s2)):(ctrl[1]?$signed(4'sb1011):s7))});
  assign y1 = (u7)&({3{4'sb0000}});
  assign y2 = s0;
  assign y3 = 4'b0000;
  assign y4 = s4;
  assign y5 = -(((-(s5))==((ctrl[7]?((5'sb01001)<<(~(1'sb1)))<<<((ctrl[2]?+(s6):-(s5))):(ctrl[5]?(4'sb0011)<<(s1):(s0)^~((s6)<<(3'sb100))))))<<($signed(+(u2))));
  assign y6 = (ctrl[3]?+((ctrl[3]?(ctrl[2]?(ctrl[6]?(5'sb00111)^((-(s5))^((ctrl[1]?5'sb00010:s7))):$signed({2{(1'b0)&(u6)}})):s0):+((2'sb11)>>((ctrl[3]?4'sb1001:(ctrl[5]?(1'sb0)>>(s5):$signed(s6))))))):(s1)>>($signed(1'sb0)));
  assign y7 = ((((ctrl[3]?(ctrl[1]?s0:s7):3'sb000))|((ctrl[6]?s4:(s5)|(s7))))>>(($signed(6'sb101011))|((ctrl[5]?(ctrl[5]?2'sb00:s2):s5))))+(4'sb0001);
endmodule
