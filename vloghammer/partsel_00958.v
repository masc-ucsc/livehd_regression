module partsel_00958(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [6:26] x4;
  wire [4:30] x5;
  wire [26:1] x6;
  wire signed [30:2] x7;
  wire signed [25:2] x8;
  wire signed [4:29] x9;
  wire [1:27] x10;
  wire [29:1] x11;
  wire [6:26] x12;
  wire signed [0:28] x13;
  wire [1:25] x14;
  wire signed [26:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:6] p0 = 9233738;
  localparam signed [24:4] p1 = 36480;
  localparam [2:24] p2 = 335851454;
  localparam signed [28:3] p3 = 550900592;
  assign x4 = x0[16];
  assign x5 = {2{((x4[19 +: 1] & {p1, (x4[20] & (p2[18] & p3[23 + s0 -: 1]))}) ^ (!ctrl[1] || ctrl[0] || ctrl[3] ? (ctrl[2] || !ctrl[2] || !ctrl[2] ? ((x1[14 + s3 +: 8] ^ p1[24 + s0 +: 7]) - x2) : p3[19 + s1 -: 2]) : p0[10 +: 2]))}};
  assign x6 = x4[12 -: 2];
  assign x7 = ({(ctrl[2] || !ctrl[2] || ctrl[2] ? x4[17 -: 3] : (!ctrl[2] || ctrl[1] && ctrl[2] ? (p1[21] + p0) : {2{p0[20 + s2 +: 6]}})), p1} & {2{((p1 - {2{(p0 + p2[27 + s3 -: 4])}}) & {(!ctrl[3] || !ctrl[1] || ctrl[3] ? p0 : (x0[8] | (x4[14] & p0))), ((x5[17 + s2] & p1[17]) ^ x5[14 + s2])})}});
  assign x8 = {2{x7[14 +: 3]}};
  assign x9 = {2{x8[10 +: 4]}};
  assign x10 = x7[31 + s1 +: 5];
  assign x11 = (x4[31 + s1 +: 5] + (ctrl[2] || ctrl[2] || !ctrl[1] ? {({2{p2[12 + s1]}} + p1), (x9[18 + s0 -: 3] & (p1[22 + s1 +: 3] - p3))} : ((x8[16] | x10[17 + s3 -: 8]) + {2{p0[23]}})));
  assign x12 = {2{(p2[12 -: 2] | {((x8[12 +: 1] & x1[17 + s0 +: 8]) & {2{x5[16 + s1 -: 5]}}), {2{(!ctrl[0] || ctrl[0] && !ctrl[0] ? p0[23 -: 2] : x5[19])}}})}};
  assign x13 = (p2[30 + s3 -: 5] | (p3[19 -: 2] & x9[23]));
  assign x14 = {2{{p0[14 +: 1], (p2[12 +: 2] ^ ((x2[29 + s2 -: 5] & ((x10[4 + s1 +: 6] | (p2[11] ^ (((x9[6 + s0 -: 4] - p1[21 + s2 -: 1]) ^ p3[17 -: 2]) - p0))) | ((x3 - p0[14 +: 4]) | (p1[17] | x1)))) + (x9[9 + s1 +: 7] & (p3[18] - p1[8 +: 4]))))}}};
  assign x15 = ({2{x5[21 + s3 +: 4]}} & p3[27 + s0 +: 3]);
  assign y0 = x7[14 +: 2];
  assign y1 = p1[11 + s2];
  assign y2 = {((!ctrl[1] || ctrl[1] && ctrl[1] ? {2{x12[16 +: 3]}} : {2{x8}}) - p0), (({((x11[17 +: 3] - p0[1 + s2 +: 7]) & x5[6 + s0]), {2{x3}}} | (!ctrl[2] && ctrl[0] && !ctrl[0] ? {x12[14 -: 3], p1[26 + s1 -: 8]} : {2{((p1[14 +: 3] & p1[7 + s0 +: 7]) + x4)}})) + x12[16 + s3])};
  assign y3 = {2{((!ctrl[0] || !ctrl[2] && !ctrl[2] ? p1[18 +: 1] : {2{{p2[12], p1}}}) ^ (x12[17 +: 2] ^ x5[27 + s0 -: 1]))}};
endmodule
