module partsel_00607(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [31:7] x4;
  wire signed [3:31] x5;
  wire [29:3] x6;
  wire [4:24] x7;
  wire [3:27] x8;
  wire [1:29] x9;
  wire [4:31] x10;
  wire signed [29:3] x11;
  wire [25:6] x12;
  wire signed [24:1] x13;
  wire [29:2] x14;
  wire [30:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:26] p0 = 385520201;
  localparam [0:31] p1 = 700443598;
  localparam signed [3:24] p2 = 904393402;
  localparam signed [5:27] p3 = 69077035;
  assign x4 = (ctrl[1] || !ctrl[3] || !ctrl[0] ? {2{{2{x3[8 +: 3]}}}} : x0);
  assign x5 = ((ctrl[1] && ctrl[2] || ctrl[3] ? {2{x1}} : {((x0[13 -: 4] + ((x0 + x0[8 + s3 +: 8]) + p1[4 + s1 +: 5])) + {2{p1[4 + s1]}}), (x2[15 + s1] ^ {(x3[16 + s0] ^ x0), x0[10 +: 2]})}) | ((ctrl[3] || ctrl[1] || ctrl[3] ? x3 : p3[10]) & (!ctrl[2] && !ctrl[0] && ctrl[3] ? (!ctrl[2] || ctrl[2] || !ctrl[0] ? (x3 & ((p3[6 + s2 -: 5] ^ x0[13 + s1 +: 2]) + x1[16 +: 2])) : (p2[31 + s1 -: 6] | (p2[4 + s1 -: 3] + p1[19 + s2]))) : (x2 & {x4[22 + s0 +: 6], x1[2 + s0 -: 5]}))));
  assign x6 = (x1 | p2[13 -: 1]);
  assign x7 = {2{p1}};
  assign x8 = {x1[18], p1[14 + s2]};
  assign x9 = (!ctrl[3] && ctrl[0] || ctrl[3] ? p2[20 -: 1] : {(x6[17 + s3 +: 3] | (!ctrl[2] || ctrl[1] && !ctrl[0] ? {2{p1[6 + s3 -: 5]}} : p1[10 +: 2])), (p2[10 + s2 -: 6] + p0[7 + s2 +: 7])});
  assign x10 = ({2{{2{p3[16]}}}} - p3[19]);
  assign x11 = (ctrl[3] && !ctrl[1] && ctrl[0] ? (!ctrl[2] && ctrl[1] || !ctrl[0] ? p0[22 + s2 -: 6] : (x10 ^ p2[14 + s2])) : {2{((((x2[6 + s0] | (p0[10] - p2)) + x7[21 -: 1]) | p3[19]) | (x5[12 + s0 -: 4] + p2[15 + s0]))}});
  assign x12 = p3[8 + s3];
  assign x13 = {x6[23 -: 3], {p1[30 + s0 +: 6], {p3[13 + s0], p1[9 +: 2]}}};
  assign x14 = x11[24 + s0 -: 6];
  assign x15 = {2{(p3[8 + s3 +: 2] + (p2[8 + s1 +: 5] - p0[10 + s0]))}};
  assign y0 = (x2 - ((ctrl[2] && !ctrl[1] || ctrl[3] ? x8[6 + s3] : (p0[12 -: 3] | (x6[17 -: 1] + p0[13 + s3 -: 3]))) & (p0[4 + s0] + x13)));
  assign y1 = p0;
  assign y2 = p1[9 + s2 +: 3];
  assign y3 = ((x2[4 + s3 +: 5] + (!ctrl[3] || ctrl[3] && ctrl[2] ? x5[16 +: 4] : {2{p0[8]}})) & {{2{((x4[29 + s0 +: 4] + p2[3 + s0 -: 6]) | {2{p0}})}}, ((p0[18 +: 2] - (ctrl[1] && !ctrl[2] || ctrl[0] ? p3[27 + s0 +: 8] : (x7[10] | (p3[23] | p1[5 + s3 +: 1])))) & {2{(x12[12 + s1] ^ x8[22 -: 2])}})});
endmodule
