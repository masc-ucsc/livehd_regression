module partsel_00264(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [4:31] x4;
  wire [25:1] x5;
  wire [2:24] x6;
  wire [28:5] x7;
  wire signed [2:28] x8;
  wire [2:28] x9;
  wire signed [0:24] x10;
  wire [29:7] x11;
  wire [26:0] x12;
  wire signed [29:5] x13;
  wire [25:5] x14;
  wire [30:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [31:5] p0 = 728930113;
  localparam signed [31:7] p1 = 542761447;
  localparam [4:31] p2 = 102575022;
  localparam signed [5:27] p3 = 908616391;
  assign x4 = p1;
  assign x5 = p1[18 +: 2];
  assign x6 = (ctrl[1] || !ctrl[0] && ctrl[2] ? {2{p1}} : x1[15 +: 3]);
  assign x7 = {p0, (({x4, x0} | x6[19 -: 4]) | {2{(ctrl[3] || ctrl[3] || !ctrl[0] ? (x0[14 +: 1] & x6[14 + s2 -: 4]) : x3[11 +: 3])}})};
  assign x8 = (p2[29 + s2 +: 3] + {2{x4[12 + s1 +: 6]}});
  assign x9 = x3;
  assign x10 = {2{(x3[19 +: 2] ^ ({(ctrl[2] && !ctrl[1] || !ctrl[2] ? p0 : x3), {2{x2[11]}}} - (p1[1 + s1 +: 2] ^ (p3 | x5[13 -: 4]))))}};
  assign x11 = (x1 ^ {((!ctrl[3] && ctrl[0] && ctrl[1] ? {x4[18 -: 1], p1[11 + s0]} : x4[18 -: 4]) + {2{{2{x10[5 + s2]}}}}), (({x6[16 +: 2], ((x6[18 -: 3] | p0[9 +: 2]) ^ ((x7[14 +: 3] - p3) | p1[14]))} & p3) | ((x0[19] | (x10[16 +: 4] | p2[14 -: 2])) | {2{x8[19 + s0 +: 4]}}))});
  assign x12 = {(ctrl[1] || !ctrl[1] || !ctrl[3] ? (({p0, p1} - x4) + p2[5 + s3 +: 1]) : p1), x2[9 + s2]};
  assign x13 = {({2{({(p1 ^ p0[10 + s2 -: 5]), x10} + x7[17 +: 2])}} ^ ({2{x7[17 + s1 +: 1]}} ^ ((x2[15 + s2 -: 6] + p2) | {2{p3}}))), {{2{(!ctrl[1] && !ctrl[3] || !ctrl[2] ? ((x3[4 + s0] & p3) | x6[17 +: 4]) : {2{x3[18 -: 2]}})}}, {{(x5[12 -: 3] + x6[17 + s2]), p1}, p2}}};
  assign x14 = ((ctrl[3] || ctrl[3] || !ctrl[1] ? (!ctrl[3] || ctrl[2] && !ctrl[3] ? p1[14 +: 1] : x8[15 -: 1]) : ({x6[27 + s2 +: 4], {2{x2[19 -: 2]}}} + (x0 | (p0[9 + s0] ^ p0)))) - x10[6 + s2 +: 8]);
  assign x15 = {2{{2{({p0[17 + s1], {(x5[13 + s1] & p3[23]), x4[23 -: 2]}} + {(p0[13 -: 4] - x4), (!ctrl[3] || ctrl[2] && !ctrl[2] ? p1[12 + s0] : x12[11 + s3])})}}}};
  assign y0 = (ctrl[0] && !ctrl[1] || ctrl[3] ? p1[5 + s1] : ((({(p1[12 -: 3] - p1[2 + s2 +: 7]), (p2[12 -: 4] & x1)} & {p1[18], p1[10 + s1]}) + (!ctrl[3] && ctrl[1] && !ctrl[3] ? (x8[8 + s0] ^ p3) : (x9 ^ x9))) + x1[9 + s2]));
  assign y1 = (p0[13 + s0] + x9[15 + s2 -: 3]);
  assign y2 = (({2{x4}} + (ctrl[2] || ctrl[0] && !ctrl[3] ? (p3[18] - (p3 ^ (x7[27 + s2 -: 3] | x15[14 +: 1]))) : x7[16 -: 2])) - {{2{(p2[23 -: 2] ^ (!ctrl[0] && ctrl[1] || ctrl[3] ? p1[17] : p1))}}, ({2{(p2[20 -: 3] | p0[23 -: 1])}} + (((p0[17 +: 3] & p0) + x10[8 +: 3]) | (p3 - p0[23 -: 3])))});
  assign y3 = ((x1[29 + s3 +: 1] - (!ctrl[0] && ctrl[1] || !ctrl[3] ? p3[21 -: 2] : x13)) & (p2[1 + s1 +: 8] - {p1[13 + s2], {2{(x10[19 -: 3] - x8[25 + s0 -: 7])}}}));
endmodule
