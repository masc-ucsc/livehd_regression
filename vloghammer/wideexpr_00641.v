module wideexpr_00641(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (3'b101)>>>({2{{{s0},|(s7)}}});
  assign y1 = 5'sb00010;
  assign y2 = (5'b01100)^~(({$signed(3'sb001)})>>>(6'sb001000));
  assign y3 = ((-($signed((5'sb01101)>>>(s4))))==($signed(u7)))<((ctrl[5]?(u7)==(({3'sb100,s5,5'sb00010,5'sb00001})|(u0)):3'sb010));
  assign y4 = {s0};
  assign y5 = ($signed(+($signed((ctrl[5]?+(u6):(((s3)>>>(2'sb10))>>>(~|(4'sb1101)))&(($signed(s2))&($signed(2'sb11))))))))+(~|(s4));
  assign y6 = s6;
  assign y7 = s3;
endmodule
