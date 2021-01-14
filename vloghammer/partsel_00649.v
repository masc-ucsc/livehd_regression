module partsel_00649(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [6:28] x4;
  wire [29:3] x5;
  wire [24:3] x6;
  wire [4:30] x7;
  wire signed [30:3] x8;
  wire signed [0:29] x9;
  wire signed [27:4] x10;
  wire [1:29] x11;
  wire signed [3:27] x12;
  wire [5:25] x13;
  wire [1:28] x14;
  wire [26:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:3] p0 = 998904863;
  localparam signed [27:0] p1 = 837838099;
  localparam signed [25:4] p2 = 411121483;
  localparam [2:24] p3 = 501513934;
  assign x4 = x2[8 +: 2];
  assign x5 = {{p0[13 + s2], (!ctrl[3] && ctrl[1] || ctrl[3] ? {x2[13 +: 4], (p1[0 + s3 +: 2] | x0)} : p2[17 +: 1])}, x2[21]};
  assign x6 = x0;
  assign x7 = x0[13 + s1];
  assign x8 = x2;
  assign x9 = {2{(p2[17] | (!ctrl[2] || !ctrl[0] && !ctrl[3] ? p0[18 + s3 +: 5] : ((p0[20 + s1 +: 8] - x7) ^ p2)))}};
  assign x10 = x7;
  assign x11 = p1[20 + s0 -: 8];
  assign x12 = x4[20 + s1 +: 8];
  assign x13 = x9[2 + s1 +: 4];
  assign x14 = {2{p0}};
  assign x15 = p3;
  assign y0 = ({x14[28 + s0 +: 6], x0[10 + s1]} & x7[13]);
  assign y1 = p0[14];
  assign y2 = ((!ctrl[3] && ctrl[0] && !ctrl[0] ? p2 : x12) | x1[13 +: 1]);
  assign y3 = x4[26 + s2 -: 4];
endmodule
