module partsel_00866(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [1:24] x4;
  wire signed [2:27] x5;
  wire signed [25:2] x6;
  wire signed [1:25] x7;
  wire signed [2:29] x8;
  wire [3:29] x9;
  wire signed [2:25] x10;
  wire signed [7:29] x11;
  wire signed [3:28] x12;
  wire [6:25] x13;
  wire signed [25:5] x14;
  wire signed [6:25] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:24] p0 = 806732247;
  localparam [1:26] p1 = 519758912;
  localparam signed [6:28] p2 = 659755779;
  localparam [5:27] p3 = 94233774;
  assign x4 = (!ctrl[0] || !ctrl[3] && ctrl[0] ? {((((p3 - x0[4 + s2 +: 8]) ^ p3[6 + s2]) - (p0[17 + s0] ^ p0[14 +: 4])) + {2{(x0[12 + s2] - p1[5 + s1])}}), {2{(ctrl[0] || !ctrl[2] || ctrl[0] ? p0 : {2{(x2[15 + s2] + (p0 ^ p3[5 + s0]))}})}}} : x0[14 + s2]);
  assign x5 = (({(ctrl[0] && !ctrl[1] || ctrl[2] ? {2{p2[10 + s1]}} : ((p1[13 -: 4] | x3[4 + s1]) - p1[4 + s2])), ((((x1[13 + s2] + p0[23 + s1 -: 6]) | p3[18 +: 3]) & (x4[9 + s0 -: 7] & p1[13 -: 3])) - (p1[25 + s2 -: 8] - p1[6 + s2 +: 5]))} ^ x0[25 + s0 -: 8]) | x3[9 +: 1]);
  assign x6 = {2{((((x3[12 + s3 -: 4] | x3[18 -: 4]) | (x0 ^ x4)) | ({p0[7 + s3], p0} ^ (x1 - x1[13 +: 1]))) | x0[29 + s1 +: 3])}};
  assign x7 = (p1[18 -: 1] & {x0[17 + s0 -: 1], (p3[19 + s2] + (x3 | (x0 ^ p2[14 -: 1])))});
  assign x8 = (p3[8 +: 4] - ((!ctrl[1] || !ctrl[1] && !ctrl[2] ? ({2{p1[16 +: 3]}} | x0) : {(x2[16 + s1] | p2), p1[14 + s3]}) & x3[12]));
  assign x9 = (x0 ^ x7[12]);
  assign x10 = x5[4 + s0];
  assign x11 = {2{(x5[14 + s2 +: 7] ^ x8)}};
  assign x12 = p0[12 -: 3];
  assign x13 = (x5[21 + s3 +: 2] + {2{{2{x6[23 -: 2]}}}});
  assign x14 = p0[8];
  assign x15 = (ctrl[1] && !ctrl[3] && ctrl[3] ? p1 : ((({(p3[1 + s1 -: 5] ^ (p2[10 + s0] - x11[8 +: 1])), (p1[21 -: 2] ^ x0)} | (x6[13 -: 4] + p1[14 + s3 +: 3])) - {2{(p1[22 + s3 -: 6] & (x6 - p1[28 + s3 -: 5]))}}) - (x12 | p2[17 + s3 -: 4])));
  assign y0 = (x13[11 + s2 -: 7] & p0);
  assign y1 = p0[3 + s3 +: 3];
  assign y2 = p1[20 -: 3];
  assign y3 = (p2[16 +: 4] + (!ctrl[3] || !ctrl[0] || !ctrl[0] ? {x5[15 -: 1], p1} : ((x4 & {p2[11 + s1], ((((p0[19] & (x15[10] - p3[8 +: 3])) & p0) - p0[16 + s3]) - x3[18 +: 1])}) - (!ctrl[1] && ctrl[0] && !ctrl[0] ? x15[13 -: 1] : {2{x6[22 + s0 +: 4]}}))));
endmodule
