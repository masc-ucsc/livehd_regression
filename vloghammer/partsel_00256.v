module partsel_00256(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [29:5] x4;
  wire [29:4] x5;
  wire signed [26:2] x6;
  wire signed [2:30] x7;
  wire signed [7:28] x8;
  wire [28:6] x9;
  wire signed [29:7] x10;
  wire [30:4] x11;
  wire [6:27] x12;
  wire signed [29:7] x13;
  wire signed [27:4] x14;
  wire [1:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:29] p0 = 145386862;
  localparam signed [25:3] p1 = 882542112;
  localparam [7:26] p2 = 158761793;
  localparam signed [2:27] p3 = 767005660;
  assign x4 = (ctrl[2] || !ctrl[1] && ctrl[1] ? (x0 + {2{p1[19 -: 1]}}) : {2{({2{(x2[17] ^ p1[13 -: 1])}} | ((p0 ^ (x1[22] | p1[20 -: 1])) | (!ctrl[3] && !ctrl[0] && ctrl[2] ? (p1[20 -: 3] & x1[10 + s2 -: 3]) : p1)))}});
  assign x5 = {2{((ctrl[2] || !ctrl[3] && !ctrl[3] ? {2{p2}} : p3[2 + s2 -: 7]) - ({p1, {2{(x3[15 +: 3] | p3[17 -: 2])}}} ^ (p2[19 -: 2] | {2{p2[16 -: 2]}})))}};
  assign x6 = ((x4[13] ^ (ctrl[0] && ctrl[3] && !ctrl[2] ? {2{(p1[17] + p2[17 +: 1])}} : {(ctrl[3] && ctrl[1] && !ctrl[3] ? x3[22 -: 2] : (x2 - x0)), ((p1[19 -: 3] + p2[15 +: 2]) + p2)})) | x1[3 + s0 +: 6]);
  assign x7 = p3[6 + s0 +: 4];
  assign x8 = (ctrl[2] && ctrl[0] && ctrl[3] ? ({x1[10 + s0 -: 2], x1} + ({2{(p2[12] - p3[18 +: 1])}} - (x2[30 + s2 +: 6] & ((p3[8] ^ x0) & (p0[13 + s3] - (x4[21 + s2 +: 3] & p0[8 + s2])))))) : (p2[18 -: 2] + x7[22 -: 1]));
  assign x9 = p1;
  assign x10 = (p1[15 + s0] - {2{(((p2[13 -: 1] | x0[20 -: 4]) | x7[9]) + (ctrl[3] || !ctrl[2] || ctrl[2] ? (!ctrl[1] || !ctrl[3] && ctrl[2] ? p2 : x5[19 + s2 -: 1]) : p1[23]))}});
  assign x11 = (p2[16 -: 2] | {2{(x4[26 + s3 -: 4] - x4[16 -: 3])}});
  assign x12 = (p2[12 + s0] + {p3, {p2[21 -: 2], {2{(p2[5 + s2] - x3)}}}});
  assign x13 = {x10[0 + s2 +: 1], x6[12 + s2 +: 3]};
  assign x14 = x9[11 + s3 +: 7];
  assign x15 = x10;
  assign y0 = (ctrl[2] || !ctrl[3] && !ctrl[1] ? {(ctrl[0] || !ctrl[2] || ctrl[0] ? ((!ctrl[3] && !ctrl[2] && !ctrl[1] ? x0 : x6) ^ x13) : ((x14[2 + s0 -: 5] | p3) & (ctrl[0] && ctrl[3] && !ctrl[1] ? p3[19] : x1[17 +: 3]))), {2{x14[12 +: 2]}}} : {2{((x8[4 + s2] + p1[25 + s2 +: 6]) & p1[17 -: 3])}});
  assign y1 = (!ctrl[0] || ctrl[0] || ctrl[1] ? p3[23 + s1 -: 4] : {2{p0}});
  assign y2 = {(x15[18] ^ x5[12 -: 4]), ((x2 + (x3[9 + s0] ^ (x2[18 + s1] | p2))) & ((x11 | (x7[18 -: 4] | p0[20])) | {2{(x9[23] ^ x4)}}))};
  assign y3 = {2{p2[3 + s1 -: 7]}};
endmodule
