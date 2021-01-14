module partsel_00205(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [27:3] x4;
  wire [7:29] x5;
  wire [7:24] x6;
  wire [1:31] x7;
  wire signed [4:24] x8;
  wire signed [0:28] x9;
  wire signed [7:25] x10;
  wire signed [30:4] x11;
  wire [29:1] x12;
  wire [6:24] x13;
  wire signed [1:30] x14;
  wire [5:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:28] p0 = 364121187;
  localparam signed [6:28] p1 = 101385855;
  localparam [7:28] p2 = 215054757;
  localparam [0:25] p3 = 139653832;
  assign x4 = p3[13 + s0 +: 6];
  assign x5 = x0;
  assign x6 = {2{((p1[12 +: 3] - (x1[20 -: 2] + (!ctrl[3] || ctrl[1] || ctrl[1] ? (p0[15 -: 2] - p3) : x0[26 + s3 -: 8]))) | {2{x2[21 -: 1]}})}};
  assign x7 = (ctrl[0] || ctrl[2] || !ctrl[1] ? x5[9 + s2] : {2{p3}});
  assign x8 = p0[2 + s0 +: 3];
  assign x9 = {(x5[14 -: 2] | p0), p0[17 +: 4]};
  assign x10 = (x9[7 + s3] + ((!ctrl[3] || ctrl[1] && !ctrl[1] ? x8[14 + s0] : ((ctrl[2] || ctrl[0] || !ctrl[1] ? p1[3 + s2 -: 4] : x0[17 + s1 -: 5]) & (!ctrl[0] || ctrl[2] || !ctrl[3] ? x9 : (x2[19 + s3 +: 5] & p3[17 +: 3])))) ^ (x0[19 + s2 +: 4] - {{2{(x5 | x4[8])}}, p3[8 +: 1]})));
  assign x11 = ((x4[23 + s1 -: 7] ^ {{{2{p0[15 -: 3]}}, ((p3[19 +: 3] ^ p0[29 + s3 +: 8]) | x7[21])}, x10[18 +: 4]}) & (x10[10 + s2 -: 2] ^ x6));
  assign x12 = ({(ctrl[2] || !ctrl[1] && ctrl[0] ? {((p1[12] & p3[12 +: 3]) & x5[12 +: 2]), (x9 + p0[14 +: 3])} : p2[19 +: 3]), p0} | {p1[3 + s0 -: 6], (!ctrl[3] || ctrl[1] && !ctrl[1] ? {{2{x7[16 -: 3]}}, x1[17 + s3 +: 1]} : p2)});
  assign x13 = p2[13 +: 2];
  assign x14 = ((x8[9 +: 1] - x5[14 +: 3]) - (({2{p3[21 + s0 +: 5]}} + x8) & p2));
  assign x15 = (((({2{(p3[28 + s3 +: 4] + x13)}} | (ctrl[0] && !ctrl[1] && !ctrl[1] ? x2[13 +: 4] : x14)) + x11[8 +: 2]) | (({x0[18], p1[9]} | (p3 | x3[15 -: 4])) | p3)) | (((!ctrl[0] && !ctrl[2] || ctrl[1] ? (p0[12 +: 2] - p1[2 + s3 -: 7]) : (((p3[23 + s0 +: 7] & (x12 + p3)) & (x7 ^ x6[12 + s1])) ^ x12)) - p0[20]) - x0));
  assign y0 = x9[21 + s3 +: 2];
  assign y1 = ({2{(ctrl[0] && ctrl[2] && !ctrl[1] ? (ctrl[0] || !ctrl[0] || ctrl[1] ? p0[16 + s0 -: 1] : (p2[20 -: 3] ^ p1[17 +: 1])) : (x0[1 + s0 +: 1] - (p3[13] ^ (x0[28 + s0 +: 6] ^ x14))))}} & (!ctrl[2] || !ctrl[2] && ctrl[3] ? p2[11 +: 1] : {p3[31 + s3 -: 8], p0}));
  assign y2 = {p3, p3[11 +: 4]};
  assign y3 = x13[17 +: 2];
endmodule
