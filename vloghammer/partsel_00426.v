module partsel_00426(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [3:30] x4;
  wire [29:5] x5;
  wire [26:3] x6;
  wire signed [31:4] x7;
  wire [6:24] x8;
  wire signed [1:30] x9;
  wire signed [27:1] x10;
  wire [28:2] x11;
  wire signed [31:1] x12;
  wire [3:26] x13;
  wire signed [29:2] x14;
  wire [31:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:26] p0 = 628055277;
  localparam signed [27:2] p1 = 632966394;
  localparam [6:30] p2 = 545994315;
  localparam signed [2:29] p3 = 720570274;
  assign x4 = (!ctrl[1] || !ctrl[3] && !ctrl[2] ? (x0[23 -: 4] | p3[26 + s3 -: 8]) : ({2{p3[19 -: 3]}} - {p0[16 +: 3], {2{p0[11 +: 2]}}}));
  assign x5 = p2[29 + s2 +: 3];
  assign x6 = {(!ctrl[1] || ctrl[3] && !ctrl[3] ? {2{(ctrl[0] && ctrl[3] || ctrl[2] ? x5[18 +: 2] : x3[9])}} : x3[13 -: 4]), ((ctrl[0] || ctrl[1] || !ctrl[3] ? (ctrl[2] || ctrl[3] || !ctrl[3] ? (p1[5 + s0] & (x4[12 + s1 -: 2] - x5[19 + s2])) : (((x1 + x2[19 +: 4]) + x0) | x5[17 +: 1])) : p3[18 + s0 -: 8]) | x5[21 -: 3])};
  assign x7 = (p2 + x0[16]);
  assign x8 = p3;
  assign x9 = ({x7[12 + s2], p1[18 -: 2]} - p1[8 + s3]);
  assign x10 = x4;
  assign x11 = ({2{{{2{(p1[13 +: 1] & p3[23])}}, x9[25 + s0 +: 4]}}} ^ p1);
  assign x12 = (!ctrl[3] || ctrl[1] && ctrl[2] ? ((p3[9 + s2 -: 6] - (!ctrl[3] && ctrl[3] || ctrl[0] ? p0[23 + s1 -: 4] : x1[18])) & x5) : p3[17 + s3]);
  assign x13 = (p3[8 + s1] - x0[10 +: 4]);
  assign x14 = p3;
  assign x15 = p0;
  assign y0 = p1[28 + s2 +: 4];
  assign y1 = p0[11 +: 3];
  assign y2 = p0[12 +: 1];
  assign y3 = (ctrl[3] || !ctrl[1] && ctrl[2] ? (p1[14] - x9[7 + s1]) : (x4[23] ^ x12[11 +: 1]));
endmodule
