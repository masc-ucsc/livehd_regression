module partsel_00311(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [3:31] x4;
  wire signed [31:3] x5;
  wire [3:28] x6;
  wire [5:26] x7;
  wire signed [30:4] x8;
  wire signed [28:7] x9;
  wire signed [0:27] x10;
  wire [27:5] x11;
  wire signed [26:1] x12;
  wire signed [0:28] x13;
  wire [29:4] x14;
  wire [4:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:1] p0 = 355615426;
  localparam signed [0:25] p1 = 408963601;
  localparam [24:5] p2 = 588453660;
  localparam signed [26:1] p3 = 342092878;
  assign x4 = {2{{((!ctrl[3] || !ctrl[1] || ctrl[0] ? p0[8 + s0 -: 5] : x2[5 + s0 +: 5]) | ({p0[15], x0} - p1[18 + s0 +: 1])), p0[12 -: 2]}}};
  assign x5 = p1[18 + s2];
  assign x6 = (({2{{{2{p0}}, (x0[30 + s1 -: 7] & p2[18 + s1 +: 6])}}} + p3[14 + s0 -: 1]) | x0);
  assign x7 = p3[12 +: 2];
  assign x8 = x0[13 + s3 +: 5];
  assign x9 = p1[23 + s0 +: 2];
  assign x10 = p0[1 + s2 -: 1];
  assign x11 = x2[16 + s0];
  assign x12 = p0[13 + s2];
  assign x13 = p2[15 +: 3];
  assign x14 = x7;
  assign x15 = (ctrl[0] && !ctrl[2] && !ctrl[1] ? (x1 | x9[23 -: 1]) : (x8 | {(ctrl[0] || ctrl[3] || ctrl[1] ? x8[16 +: 2] : (p3[22 -: 1] & p1[14 -: 1])), {{(p2[25 + s2 -: 7] - p2[15]), p2}, x8}}));
  assign y0 = ((x3 - p1[15]) | {2{(({2{p3[15 + s1]}} | ((x2 + ((x0 + ((p1 - p1[21 + s2 +: 2]) ^ p1[20])) - x3)) & (x6[11 + s1] & x15[19 +: 4]))) ^ p2)}});
  assign y1 = p3[6 + s2];
  assign y2 = (x1[19 + s1 -: 7] + ((ctrl[1] && !ctrl[1] && ctrl[0] ? ((p2[12 + s3] | (p2 + p2[28 + s2 -: 2])) - x3) : p1[26 + s1 -: 7]) | p2));
  assign y3 = x0[18 +: 3];
endmodule
