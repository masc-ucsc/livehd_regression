module partsel_00131(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [24:7] x4;
  wire [30:4] x5;
  wire [31:0] x6;
  wire signed [25:5] x7;
  wire signed [0:30] x8;
  wire signed [29:4] x9;
  wire [4:27] x10;
  wire signed [31:5] x11;
  wire signed [7:27] x12;
  wire [25:2] x13;
  wire signed [26:4] x14;
  wire [1:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:28] p0 = 534652787;
  localparam signed [0:27] p1 = 340325889;
  localparam signed [25:0] p2 = 247711640;
  localparam [31:0] p3 = 270457883;
  assign x4 = {2{{(!ctrl[3] || !ctrl[1] || ctrl[1] ? {2{(p3 & x2[8 + s3])}} : x2[31 + s3 -: 1]), (p1[19 + s3 -: 2] - x3[17 -: 3])}}};
  assign x5 = (!ctrl[1] && ctrl[2] && ctrl[3] ? (ctrl[0] && ctrl[2] || !ctrl[2] ? x3[12 +: 1] : (({2{x3[17 +: 1]}} & (((x0[19 -: 2] & x2[20 -: 1]) + p0[16]) ^ p1[12])) & (ctrl[1] && ctrl[3] || !ctrl[3] ? {x2, x4[12]} : {p0[15], x2}))) : {2{(!ctrl[0] && !ctrl[2] || !ctrl[1] ? x4 : (p1[15 +: 4] - p0[2 + s1 -: 2]))}});
  assign x6 = p1[11 + s1 +: 3];
  assign x7 = ({2{{2{(p2 ^ x4)}}}} ^ x5[13 +: 3]);
  assign x8 = (p0[29 + s3 -: 5] - {2{x1[10 + s2 -: 3]}});
  assign x9 = (!ctrl[2] && !ctrl[1] && !ctrl[3] ? {(x4[0 + s0 -: 4] ^ (!ctrl[3] && !ctrl[0] || !ctrl[1] ? ((p0[12 +: 2] & p3[26 + s1 -: 2]) & ((x3[16 -: 2] - p2[15 +: 4]) ^ x6[22])) : (ctrl[3] && ctrl[3] && !ctrl[0] ? (p1[20 -: 3] ^ x4) : x8[17 + s3]))), p0[18 +: 2]} : {2{{2{(!ctrl[1] || ctrl[0] || !ctrl[2] ? (ctrl[3] || ctrl[1] || !ctrl[3] ? p3[12 -: 1] : p2[17]) : {2{x5[12 + s2]}})}}}});
  assign x10 = {p1[10], x5[16 -: 4]};
  assign x11 = p3[9];
  assign x12 = ((ctrl[2] || !ctrl[1] && !ctrl[3] ? (p2[23 + s2 +: 8] ^ ({2{x0[31 + s2 -: 6]}} ^ {x4[24 + s1 -: 3], x5[17]})) : {p2[16 + s1 +: 2], x8[17 + s1 +: 7]}) | p0[21]);
  assign x13 = (!ctrl[2] && !ctrl[2] || !ctrl[0] ? (!ctrl[2] || !ctrl[1] || !ctrl[3] ? (((x11 | p3[10 +: 4]) + x10[8 + s0 +: 1]) - (x6 & (ctrl[3] || !ctrl[1] || !ctrl[2] ? x9 : p3[12]))) : p1[17 +: 4]) : p0[4 + s1]);
  assign x14 = (!ctrl[2] && ctrl[0] || !ctrl[0] ? (x11[10 +: 2] - p3) : (((!ctrl[2] || ctrl[3] && ctrl[0] ? x9[23 -: 3] : x12) ^ (x1[1 + s0 -: 6] ^ p0[19 -: 2])) | {({x9[30 + s2 -: 2], p0} | (x1[14 -: 2] + x12[8 + s3])), x4[18]}));
  assign x15 = p0[10];
  assign y0 = p1[15 + s2];
  assign y1 = ((ctrl[0] && !ctrl[1] || !ctrl[0] ? ((((x12[12 + s0] - p2[15 + s3 +: 1]) ^ x9) + x5[15 -: 2]) + p0[15 + s0 -: 7]) : p2) - (({2{x1[14 + s3]}} & {(x7[10 + s0 +: 3] + p3[6 + s0 +: 7]), (!ctrl[0] || ctrl[1] || !ctrl[0] ? p1 : (p1[9 +: 3] ^ (p0[18 + s1] + p2[12 + s3 -: 2])))}) & (p0[11 + s2 -: 2] | {2{(ctrl[3] || ctrl[3] || ctrl[0] ? (x13[16 +: 4] ^ p0[18 -: 3]) : x13[18 + s3])}})));
  assign y2 = {2{(!ctrl[0] && !ctrl[1] || !ctrl[2] ? {2{x2[23 + s1 +: 3]}} : (!ctrl[0] || ctrl[2] || ctrl[0] ? p2[4 + s3 +: 1] : x6))}};
  assign y3 = (ctrl[3] || !ctrl[2] && ctrl[1] ? {2{p0[16]}} : p1[15 +: 3]);
endmodule
