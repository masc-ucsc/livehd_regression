module partsel_00902(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [24:0] x4;
  wire signed [30:6] x5;
  wire [7:26] x6;
  wire [29:5] x7;
  wire signed [0:30] x8;
  wire signed [6:31] x9;
  wire signed [5:25] x10;
  wire signed [0:26] x11;
  wire [25:6] x12;
  wire signed [3:27] x13;
  wire signed [25:0] x14;
  wire signed [31:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:0] p0 = 972095152;
  localparam [7:30] p1 = 198865216;
  localparam [26:5] p2 = 560212394;
  localparam [28:6] p3 = 762936048;
  assign x4 = ((x1[4 + s2] + x0) + p3[12 + s1 -: 1]);
  assign x5 = x3;
  assign x6 = (p0[8 +: 1] ^ {(ctrl[1] && ctrl[1] && ctrl[2] ? ((x2[13 +: 4] - p1) - (ctrl[1] || ctrl[3] && ctrl[1] ? x2[17 +: 3] : p2[11 +: 3])) : (ctrl[0] && ctrl[3] && ctrl[2] ? (x0[14 +: 3] + p0[27 + s2 -: 7]) : (ctrl[1] && !ctrl[0] || ctrl[2] ? (p1[13] - x5[23 -: 2]) : x3[9]))), x3});
  assign x7 = (ctrl[1] && !ctrl[0] || ctrl[1] ? (x2 ^ x4[16 -: 2]) : (((ctrl[0] || !ctrl[2] || ctrl[3] ? {x3[2 + s2 -: 7], (x6[8 + s2] + p0[20 + s3 -: 4])} : x0[24 + s1 -: 3]) - (((p0 & p1[19 +: 2]) & (p2[9 + s3] + p1[15 -: 4])) - {2{x6[30 + s2 -: 2]}})) - (((!ctrl[2] || ctrl[0] || ctrl[3] ? x0[16 + s3 -: 6] : p0) - (x6[22] - x3[12 +: 4])) & x0[15 -: 1])));
  assign x8 = (p1 & {p0, ({2{(p2[12 -: 1] ^ x6[9 +: 1])}} & x5)});
  assign x9 = ((ctrl[1] && !ctrl[0] && !ctrl[3] ? p2[5 + s2 -: 4] : (p2[5 + s1 -: 4] - p1[7 + s2 +: 6])) | ((({2{(p3 | ((p0[12 + s2] & p3) | p0))}} ^ x7[14 +: 4]) & p1[23]) - p2[12 -: 2]));
  assign x10 = {(p0[8 +: 4] ^ (((p0[18 +: 2] | p2) - p2[12 +: 4]) & (!ctrl[2] || !ctrl[1] || ctrl[0] ? ((x4[2 + s0 -: 5] ^ x5[18 + s3]) + p0[16 + s3]) : p1[14 +: 3]))), {({2{(ctrl[1] || !ctrl[2] || !ctrl[1] ? x9[18 + s3 -: 2] : x6[30 + s0 +: 3])}} & x6), p0[13 + s3 -: 7]}};
  assign x11 = x6[18 -: 1];
  assign x12 = (((!ctrl[1] || !ctrl[3] || ctrl[0] ? x4[19 + s2] : x4[17 -: 3]) - (ctrl[1] || !ctrl[2] && ctrl[1] ? {2{p0}} : x5[4 + s3 -: 8])) | {(p1 | (p2[15 +: 4] | x4[15 +: 1])), ((x0 | ((p3[10 + s0 +: 4] + p0[8 + s3 +: 4]) & x7)) + {(p2[6 + s1 +: 4] & p0), {2{p0}}})});
  assign x13 = (x10 & (x9[17 -: 1] | (((p2[5 + s0 +: 7] & p2) & (!ctrl[2] || ctrl[1] || !ctrl[2] ? (x7 ^ (x2 + (x12[10] ^ p2[19 -: 3]))) : p0[29 + s2 -: 1])) + {(x0[15] + x8[12]), x11[21]})));
  assign x14 = ({{2{({x10[11 +: 4], x2[13 -: 1]} - x10[12])}}, x8[18 -: 3]} + p2[15 -: 1]);
  assign x15 = (ctrl[3] || !ctrl[2] && !ctrl[3] ? p2[14 +: 2] : (p2[8] & (ctrl[3] || !ctrl[3] && ctrl[3] ? (p0[14 +: 1] + p2[13 + s3]) : {((p1 - (p2[10 + s2] + p3[14 + s2 +: 1])) | x8), (x1[8 + s2] ^ (x7[11 + s3 +: 2] | x10))})));
  assign y0 = p2[15 + s0];
  assign y1 = ({2{{{(!ctrl[0] && ctrl[2] || ctrl[0] ? x8[2 + s2 +: 1] : p2), p0[12 + s3 +: 1]}, p0[26 + s0 +: 3]}}} + p1[12 + s0 +: 2]);
  assign y2 = (!ctrl[0] && !ctrl[3] && ctrl[1] ? {x11[8 + s3], x6} : {2{p0[10]}});
  assign y3 = p2[24 + s2 +: 4];
endmodule
