module partsel_00967(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [0:30] x4;
  wire signed [3:27] x5;
  wire signed [4:25] x6;
  wire signed [4:28] x7;
  wire [25:4] x8;
  wire signed [24:2] x9;
  wire [30:0] x10;
  wire signed [30:4] x11;
  wire [5:30] x12;
  wire signed [26:4] x13;
  wire signed [31:4] x14;
  wire signed [27:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:24] p0 = 829629854;
  localparam [31:5] p1 = 964431797;
  localparam signed [3:31] p2 = 567538021;
  localparam signed [24:1] p3 = 557068023;
  assign x4 = p0[10 + s1 +: 6];
  assign x5 = ((x3[22 + s3 +: 8] ^ {(ctrl[1] && ctrl[2] || !ctrl[3] ? (((x2[26 + s2 +: 3] ^ x1) + x1[23]) + p2[12 + s1]) : x4[14 + s2]), p2[18 +: 1]}) & ((p0 ^ ((x0 | (p3[19 + s0 +: 4] ^ p0)) ^ p2[30 + s3 +: 3])) | p0));
  assign x6 = x4[8 + s3];
  assign x7 = x0;
  assign x8 = {p2[18 +: 3], x2[22 -: 4]};
  assign x9 = x0;
  assign x10 = x5[16 + s2];
  assign x11 = ({(ctrl[1] || ctrl[1] && !ctrl[2] ? (p3[16] + {2{p3[14 + s2 +: 2]}}) : p1[20 + s0 -: 6]), x3} | p3[8 + s2 -: 3]);
  assign x12 = p0[21];
  assign x13 = (!ctrl[1] || !ctrl[1] || !ctrl[1] ? x11[8 + s1] : ({2{(ctrl[3] || !ctrl[0] || !ctrl[0] ? (x7[30 + s1 -: 8] ^ x10) : {p0[18], x5[17 -: 3]})}} + x11[6 + s1 +: 4]));
  assign x14 = (p0[18 -: 4] - (x11[16] | ((!ctrl[3] && !ctrl[1] || !ctrl[0] ? (p2[13 -: 3] | p2[4 + s0 +: 2]) : x1[29 + s0 +: 6]) ^ p3[18])));
  assign x15 = {2{{p1, {p1[27 + s0 +: 5], x6[5 + s2 +: 8]}}}};
  assign y0 = x6;
  assign y1 = x3[9 + s0 +: 2];
  assign y2 = ((!ctrl[1] && !ctrl[0] && ctrl[3] ? (ctrl[1] && ctrl[3] && ctrl[3] ? x7[14 + s0 -: 1] : ((p3[28 + s0 +: 8] ^ x13[11 +: 2]) + p2)) : x6[11 + s3 +: 2]) ^ x5[18 + s3 -: 6]);
  assign y3 = ((x11 - (((x8[12] - x3) - (p3[28 + s0 -: 3] - (p1[10 +: 3] | x2))) & x8[9 + s1])) ^ (p0[16 + s0 +: 1] + ({{2{x14[22 -: 1]}}, x13[18 + s0]} | p2[23 -: 4])));
endmodule
