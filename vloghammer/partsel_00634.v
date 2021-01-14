module partsel_00634(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [29:4] x4;
  wire [1:31] x5;
  wire signed [5:26] x6;
  wire [7:26] x7;
  wire [4:28] x8;
  wire [24:0] x9;
  wire signed [25:0] x10;
  wire [26:6] x11;
  wire signed [3:24] x12;
  wire signed [6:28] x13;
  wire signed [30:6] x14;
  wire [28:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [6:27] p0 = 21033833;
  localparam signed [5:28] p1 = 39385439;
  localparam [1:30] p2 = 729496575;
  localparam signed [7:27] p3 = 422826847;
  assign x4 = (p0[17 + s0] ^ (x0[6 + s2] - x2[11 +: 3]));
  assign x5 = ({2{p2[20]}} ^ p2[17 -: 3]);
  assign x6 = {p2[22 -: 2], ({{2{p0[17]}}, ((ctrl[2] && !ctrl[0] && ctrl[0] ? p0[0 + s1 -: 6] : (x0[9 + s0] | (p3 | x3[19 +: 1]))) - x0[27 + s2 -: 8])} - (!ctrl[0] || ctrl[0] && ctrl[2] ? x5[5 + s1 +: 8] : p2[17 -: 3]))};
  assign x7 = {x2[11 + s2], {2{{(!ctrl[1] || ctrl[1] || !ctrl[0] ? {2{x0[1 + s1 -: 7]}} : (x6 + p3[12 + s0 -: 3])), x2[15 +: 3]}}}};
  assign x8 = p0[22];
  assign x9 = {2{{{{((((x7 | p3[17 -: 1]) + (p3[15 +: 1] - x1[7 + s1 -: 1])) + p0) - x8[19 +: 3]), x8}, p3[12 + s2 -: 8]}, (!ctrl[1] && !ctrl[0] || ctrl[0] ? (((p1[18 + s2 -: 5] | p2[13 + s3]) ^ p0[13 -: 1]) & (p0 - p1)) : x0[12 -: 2])}}};
  assign x10 = x9[17 + s3];
  assign x11 = x7[22 -: 2];
  assign x12 = {(x11[19 +: 2] ^ x11), (!ctrl[1] && ctrl[3] || !ctrl[0] ? {x10, p1[9 +: 3]} : (({2{x7[5 + s3]}} | ((p2 ^ p1) - (x3[20 + s2 -: 6] ^ x3[11 + s1]))) - (p3[22 + s0 +: 2] & p0[9 + s1 -: 7])))};
  assign x13 = (ctrl[1] || !ctrl[2] || ctrl[0] ? x5 : x1[13 + s3]);
  assign x14 = {(x5[8 +: 2] | ((ctrl[0] && !ctrl[3] || !ctrl[3] ? (p3 + p2[20 + s1 +: 6]) : x0[5 + s1 -: 5]) - p2)), {{2{p1[26 + s1 -: 5]}}, p3[10 + s3]}};
  assign x15 = p0;
  assign y0 = (p3[23 + s0 +: 1] ^ p1[8 + s0 -: 6]);
  assign y1 = (x10[6 + s2 -: 1] & p3[16 -: 3]);
  assign y2 = (p2[15] | (p3[16 + s2] - x13[23 -: 3]));
  assign y3 = p0[22];
endmodule
