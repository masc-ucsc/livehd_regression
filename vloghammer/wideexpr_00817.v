module wideexpr_00817(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s3;
  assign y1 = 2'sb01;
  assign y2 = (~&(u0))&((ctrl[1]?3'b100:~^(-((s1)>>>(1'b0)))));
  assign y3 = ~($signed(s4));
  assign y4 = (s0)<<(s7);
  assign y5 = s6;
  assign y6 = s0;
  assign y7 = (ctrl[5]?(4'sb0011)<<<($signed(s2)):(ctrl[0]?+(((ctrl[7]?$signed(3'sb010):(1'sb1)<<(1'sb0)))^~($signed(6'b111100))):(ctrl[4]?($signed(3'sb110))|((s6)>>>(s1)):1'sb1)));
endmodule
