module partsel_00700(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [1:31] x4;
  wire [25:0] x5;
  wire signed [2:31] x6;
  wire signed [1:27] x7;
  wire [29:0] x8;
  wire [26:4] x9;
  wire [3:28] x10;
  wire signed [28:6] x11;
  wire [3:29] x12;
  wire [0:26] x13;
  wire [25:6] x14;
  wire [29:6] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:6] p0 = 526510253;
  localparam [25:5] p1 = 776467256;
  localparam [3:27] p2 = 118468769;
  localparam signed [3:28] p3 = 984990460;
  assign x4 = p0;
  assign x5 = (p2[30 + s1 +: 3] - (!ctrl[0] && ctrl[3] && ctrl[3] ? {2{p2[16]}} : ((x3[11] ^ x3[22 -: 4]) + (!ctrl[1] && ctrl[2] && ctrl[1] ? ((p1[19 + s0 -: 4] ^ p0[13]) + x1[19 -: 2]) : (p1[12 -: 3] ^ x4[15 -: 1])))));
  assign x6 = (x4[12] - x0[9 + s0 -: 5]);
  assign x7 = {x2[30 + s0 +: 1], x0[20 + s1 -: 8]};
  assign x8 = p2[9 + s3];
  assign x9 = x0[15];
  assign x10 = (x3 | p1[21 -: 3]);
  assign x11 = x10;
  assign x12 = {x4[11], {2{(ctrl[3] || ctrl[2] && ctrl[0] ? (p1 ^ (ctrl[2] || !ctrl[3] || !ctrl[3] ? p1[30 + s2 +: 4] : x11[15])) : {(x4 + p0[11 + s0 +: 3]), (!ctrl[3] || !ctrl[2] || !ctrl[3] ? p3 : (p1[19 +: 1] | p0[23]))})}}};
  assign x13 = p3;
  assign x14 = {2{(x9[10 +: 2] - {2{(p0 ^ x4)}})}};
  assign x15 = ((((ctrl[2] && !ctrl[1] && ctrl[0] ? (!ctrl[3] && ctrl[3] && ctrl[1] ? (p3[23] ^ x6) : p2[4 + s3]) : x8[12 + s0 -: 3]) | (ctrl[1] || !ctrl[2] || ctrl[3] ? x7[19] : (x10[15 + s1] | x1[30 + s1 -: 5]))) - (!ctrl[3] && !ctrl[1] && !ctrl[2] ? x8[12 -: 1] : (x14[12 +: 3] ^ (x12[19] + p1[11 + s2 -: 6])))) ^ {(x4 ^ p0[7 + s2 -: 5]), {2{((x3[21 -: 2] ^ p1[17 + s0 -: 5]) & (!ctrl[3] || !ctrl[3] || ctrl[1] ? p2[10 +: 1] : p3[12 + s2 -: 2]))}}});
  assign y0 = x2[14 + s3 -: 4];
  assign y1 = ({2{p3[18 -: 2]}} ^ x6[4 + s1 +: 1]);
  assign y2 = x1[17 + s1];
  assign y3 = {{p3, (!ctrl[3] && !ctrl[1] || !ctrl[1] ? (x10 + p0[19 +: 1]) : {(x8[16 +: 2] ^ (x6 & p2)), {p0[18 + s2 -: 5], p0[2 + s1 +: 4]}})}, x8};
endmodule
