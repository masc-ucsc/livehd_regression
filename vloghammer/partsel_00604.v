module partsel_00604(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [26:4] x4;
  wire signed [28:4] x5;
  wire signed [7:31] x6;
  wire [28:5] x7;
  wire [27:1] x8;
  wire [6:24] x9;
  wire [0:26] x10;
  wire [0:25] x11;
  wire [24:6] x12;
  wire [29:1] x13;
  wire [7:25] x14;
  wire [7:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:2] p0 = 793291848;
  localparam [29:2] p1 = 977208867;
  localparam signed [25:6] p2 = 824662962;
  localparam signed [29:2] p3 = 485465438;
  assign x4 = (p0[27 + s3 -: 1] ^ x1[27 + s0 +: 3]);
  assign x5 = (p0 & p3[6 + s0]);
  assign x6 = ((p3 & (((((x4[13 +: 4] + x5[21 + s3 +: 8]) & (x3[30 + s2 -: 4] | (x2[12 +: 3] + p3))) - x5[11 + s3]) - x3[5 + s0 +: 3]) - p2[18 +: 4])) - (!ctrl[2] && ctrl[2] && ctrl[0] ? (ctrl[2] || ctrl[1] && !ctrl[1] ? ((p2 & x2[13 + s3 +: 7]) ^ {2{x3[13 -: 3]}}) : x4[14 -: 4]) : {2{({2{x2[3 + s2 -: 6]}} & (!ctrl[0] && !ctrl[3] || ctrl[0] ? p3[2 + s0 -: 6] : p2[10]))}}));
  assign x7 = (ctrl[1] && ctrl[0] || ctrl[1] ? (x6[12 + s1] & x2[17 +: 1]) : {2{(p0[21] | {(x3[15 + s2] - p1[20]), (p0 ^ p1[9 +: 1])})}});
  assign x8 = p0;
  assign x9 = p0[8 + s0 +: 7];
  assign x10 = (!ctrl[3] && !ctrl[1] && !ctrl[2] ? x6[18] : x4[29 + s0 -: 3]);
  assign x11 = (({2{p2[22 -: 4]}} - p3[18 + s1 +: 1]) | (ctrl[1] || !ctrl[2] || ctrl[0] ? x10[21 -: 1] : (ctrl[3] && !ctrl[3] && ctrl[1] ? p1 : (ctrl[1] || !ctrl[3] && ctrl[0] ? (!ctrl[1] || !ctrl[2] && !ctrl[2] ? p3[20] : ((p0 - (p3 | p2[31 + s1 +: 6])) | p1[14 + s2 +: 8])) : ((x10 | p3[11 + s0]) | p0[11])))));
  assign x12 = x1[10 + s2 +: 8];
  assign x13 = x9;
  assign x14 = (x0 + ((x6[14] & (!ctrl[1] && !ctrl[2] && ctrl[3] ? {2{x10[5 + s0]}} : {p1[26 + s0 +: 7], x12[11 + s0]})) | ((x3[9 +: 4] & {(p2 ^ ((x8[23 + s2 -: 3] + x8[17 + s2]) + x4[27 + s2 +: 7])), p2[23]}) ^ (!ctrl[1] && ctrl[3] && !ctrl[0] ? x4[12 + s2] : p2[1 + s3 -: 7]))));
  assign x15 = {x0[12 + s0], (x6[15 -: 1] - (ctrl[3] && !ctrl[3] && !ctrl[1] ? (((p0[7 + s1 -: 6] + (p0 & x5[3 + s2 -: 1])) - p1[9 + s2 -: 3]) + (x0[18 -: 2] & (x3[14 +: 1] - p2))) : (x1[10 + s3 -: 1] & {2{p1}})))};
  assign y0 = x2[16 + s2];
  assign y1 = ({2{(!ctrl[0] && !ctrl[3] || ctrl[3] ? (ctrl[0] || ctrl[2] && !ctrl[1] ? x6[13 + s3] : {(x5[13 + s2 -: 8] - p0[11 +: 2]), x14[14 -: 3]}) : (p1[27 + s0 +: 7] ^ {2{x5[18 + s0 +: 1]}}))}} ^ ((x5[11 +: 2] + ((ctrl[2] || !ctrl[3] && !ctrl[0] ? p1[8] : p2[11]) | (p0 - p1[11]))) & x6[23]));
  assign y2 = ((ctrl[2] && ctrl[0] || ctrl[3] ? (p2 & p1[17 + s2]) : x9[16 + s1]) ^ x13[14 -: 4]);
  assign y3 = {2{({x3, (x14[16 +: 1] | p3[17 + s3])} + {x0[5 + s2], p2[5 + s3]})}};
endmodule
