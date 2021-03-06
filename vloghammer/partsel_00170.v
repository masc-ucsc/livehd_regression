module partsel_00170(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [25:0] x4;
  wire signed [6:27] x5;
  wire [24:5] x6;
  wire [4:30] x7;
  wire signed [0:30] x8;
  wire signed [27:1] x9;
  wire [26:1] x10;
  wire signed [29:6] x11;
  wire [31:6] x12;
  wire signed [0:29] x13;
  wire signed [1:29] x14;
  wire [6:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:26] p0 = 16321463;
  localparam [2:31] p1 = 60323733;
  localparam [6:26] p2 = 15968854;
  localparam signed [31:5] p3 = 171095334;
  assign x4 = {2{x3[19 + s2]}};
  assign x5 = (x2[13 +: 1] & ((p1[11 +: 3] | p2[7 + s2 -: 8]) - (ctrl[2] && ctrl[0] || !ctrl[2] ? {2{((x3 - p3[14 +: 4]) - p1[28 + s2 -: 1])}} : p2[15])));
  assign x6 = p3[23 + s0 -: 7];
  assign x7 = x3[13 + s2 +: 6];
  assign x8 = x1[1 + s3 -: 1];
  assign x9 = x1[12 +: 3];
  assign x10 = (({(p1[14 + s3 -: 8] | ((((x9[18 +: 2] - x8) & x7[6 + s0]) | p0[22 -: 4]) ^ x3[21])), p2[9 + s3]} & x9[28 + s1 +: 3]) - x2[8]);
  assign x11 = (x3[14 -: 2] + (ctrl[2] && !ctrl[0] && ctrl[2] ? ({p1[9 + s1 +: 2], {2{x5}}} | (ctrl[0] && !ctrl[2] || !ctrl[2] ? x0 : x10[23 + s3 +: 2])) : ((x5[20 -: 2] + p0[22 -: 4]) - p1[10 +: 1])));
  assign x12 = (((((ctrl[0] || !ctrl[0] && ctrl[3] ? p2[19 + s3 -: 4] : x9[19 + s1 -: 1]) ^ x9[16 +: 3]) | (!ctrl[1] || !ctrl[1] || !ctrl[3] ? (!ctrl[0] && ctrl[2] || !ctrl[3] ? p2[19 + s1 -: 5] : x4[9 + s2 -: 2]) : {x4[24 + s3 -: 6], p1[12 +: 4]})) - (!ctrl[0] && !ctrl[1] && ctrl[2] ? {{p2, p1}, p3} : ((p2[20 -: 1] - x11) ^ x6[14 + s1]))) & ((x3[6 + s0] | {(ctrl[2] && !ctrl[0] && !ctrl[3] ? p2 : x1[16]), (x3[17 + s3 -: 8] ^ p2)}) ^ (x4 + ((x9[5 + s2] - p3[22]) & (x11 | p0)))));
  assign x13 = p1[3 + s3 -: 8];
  assign x14 = (x1[13 + s3] & (x6[22 + s2 -: 2] - p0));
  assign x15 = {2{(!ctrl[0] && !ctrl[3] || ctrl[2] ? {x3[23 -: 4], {(p2[16 + s1] ^ x2[6 + s2]), {2{p0[12 +: 2]}}}} : (x11[19 -: 2] + x6))}};
  assign y0 = p0;
  assign y1 = x0[16 + s1 -: 7];
  assign y2 = (ctrl[2] || ctrl[3] || !ctrl[2] ? ((!ctrl[0] && !ctrl[0] || ctrl[1] ? p1 : {2{x10[14 +: 1]}}) - x7[26 + s3 -: 1]) : p0);
  assign y3 = (p3[9] & (x4[4 + s1] ^ x7[7 + s2]));
endmodule
