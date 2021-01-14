module wideexpr_00505(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed({~|((ctrl[3]?(ctrl[0]?{4{(ctrl[6]?s6:$signed(s6))}}:(((4'sb0010)<(s1))|((1'b0)&(u3)))<<((s0)>>>((5'sb01110)>>(5'b11010)))):6'b011010)),s6,($signed((1'sb1)-(6'sb100001)))|($signed($signed(s5))),$signed(s3)});
  assign y1 = s3;
  assign y2 = 5'sb00000;
  assign y3 = 2'sb00;
  assign y4 = s5;
  assign y5 = (s2)<<(((6'sb110100)+(+(($signed($unsigned(s2)))!=((ctrl[2]?-(u1):(6'sb010110)<<<(3'sb010))))))>>({1{{4{5'b00111}}}}));
  assign y6 = s1;
  assign y7 = s0;
endmodule
