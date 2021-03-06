module partsel_00418(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [26:4] x4;
  wire [25:0] x5;
  wire signed [2:25] x6;
  wire [1:31] x7;
  wire [3:24] x8;
  wire signed [31:4] x9;
  wire signed [6:30] x10;
  wire [31:1] x11;
  wire signed [3:26] x12;
  wire [3:24] x13;
  wire [31:3] x14;
  wire [0:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [31:2] p0 = 211304642;
  localparam signed [29:6] p1 = 791707453;
  localparam [5:27] p2 = 494132900;
  localparam signed [5:29] p3 = 115805369;
  assign x4 = p1;
  assign x5 = {x1[20], ({p1[16 -: 1], {2{p1}}} + {2{x4[9 +: 4]}})};
  assign x6 = {2{p0[19 +: 4]}};
  assign x7 = {2{{2{{2{p0[11 +: 3]}}}}}};
  assign x8 = {2{{(x4[8 +: 4] - (!ctrl[0] || ctrl[0] && ctrl[0] ? p0[16 -: 3] : (((x5[12 + s2 +: 2] + (p1[19 -: 3] | (p3[7 + s2 -: 7] & p1))) & x0[10]) ^ p0[28 + s0 -: 4]))), (ctrl[1] || ctrl[1] || ctrl[0] ? p0[16 + s1] : (p1 & (p2[11 +: 1] ^ x1[13 + s3 -: 4])))}}};
  assign x9 = {{2{((!ctrl[2] || ctrl[1] || ctrl[2] ? p0[16 +: 3] : {x1[16 + s3 -: 7], (p0[22] ^ x4[10 + s2 +: 8])}) ^ {2{x7[7 + s0]}})}}, {2{x8}}};
  assign x10 = ((!ctrl[2] && !ctrl[1] || ctrl[3] ? {p3, p2[10 + s3 +: 4]} : ({2{(!ctrl[1] || ctrl[0] && ctrl[1] ? x0 : x5[21 -: 3])}} & p2)) | (((x9 - p0[8 +: 2]) + p1[11 +: 1]) | {2{((((p0[18 +: 3] - (p0 & x8)) - x9) & x8[17 -: 1]) & {(p1[10 +: 3] & x1[0 + s3 -: 4]), x1[9]})}}));
  assign x11 = (({{2{{x3[14 -: 1], x10[16 +: 4]}}}, (!ctrl[3] && ctrl[0] && !ctrl[0] ? (p3 | p3[16 + s3]) : x10[16])} | {p1[0 + s1 +: 2], p1[18 + s2]}) & x8[8]);
  assign x12 = {(p2[17 +: 4] + x4[0 + s3 -: 2]), (x5 | x5[23 + s0 +: 2])};
  assign x13 = (p2[12 + s2] + ({({x2[16 -: 4], p3} + p0[13 -: 1]), (ctrl[1] && !ctrl[1] || ctrl[2] ? x7 : (x4 ^ p1[24 + s0 +: 1]))} ^ x5));
  assign x14 = p2[5 + s1];
  assign x15 = x2[18 -: 1];
  assign y0 = p3[17 +: 4];
  assign y1 = p1[22 -: 3];
  assign y2 = {2{((p0[9 + s3] + (p2[16 + s2] | {x3, p3})) ^ (ctrl[0] && ctrl[3] && ctrl[1] ? x11 : p2[9]))}};
  assign y3 = {2{((!ctrl[0] && !ctrl[0] || ctrl[3] ? (ctrl[1] || ctrl[3] || !ctrl[1] ? {2{x15}} : x14[9]) : (x9 | (x4[20] & p1))) - (x14[12 -: 4] | {{(p3[17 + s2 -: 5] ^ x14[17 +: 1]), p1}, {((p2[14] + x7) & p3[11 +: 4]), x14[28 + s3 -: 2]}}))}};
endmodule
