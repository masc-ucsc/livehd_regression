module wideexpr_00527(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[7]?+(s6):5'sb10100);
  assign y1 = (u6)&(((3'b001)>>>({1{$unsigned(s1)}}))<<<(s3));
  assign y2 = 3'b101;
  assign y3 = (({-((3'sb000)<<(s1)),((ctrl[1]?$signed(4'sb1010):(ctrl[4]?$signed(1'sb1):$signed(4'sb0011))))>>>(u1)})!=($signed(s7)))+(u7);
  assign y4 = s3;
  assign y5 = +(4'b1110);
  assign y6 = $signed(+($unsigned((ctrl[7]?2'sb01:s5))));
  assign y7 = (4'sb1101)+(+(4'sb1011));
endmodule
