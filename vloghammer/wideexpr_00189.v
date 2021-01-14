module wideexpr_00189(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 1'sb1;
  assign y1 = -(6'sb100100);
  assign y2 = -(-(6'b001000));
  assign y3 = {4{((($signed(s0))&(+(5'sb11010)))>>>(2'sb10))>>>($signed(($signed(1'sb0))<<(s6)))}};
  assign y4 = ~|({4{s0}});
  assign y5 = ($unsigned((ctrl[2]?(s6)<<<((ctrl[2]?4'b0011:+(s5))):1'sb1)))|(($signed(u5))<(2'sb11));
  assign y6 = (s5)-({4{(((ctrl[5]?(ctrl[6]?1'sb1:6'sb111100):s7))^~(+(4'sb0100)))>=(1'sb1)}});
  assign y7 = (ctrl[3]?2'sb11:$signed(s3));
endmodule
