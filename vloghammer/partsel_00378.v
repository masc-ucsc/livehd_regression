module partsel_00378(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [0:24] x4;
  wire [31:2] x5;
  wire signed [3:29] x6;
  wire [3:26] x7;
  wire [6:28] x8;
  wire [5:30] x9;
  wire [2:27] x10;
  wire signed [29:0] x11;
  wire [27:3] x12;
  wire [1:24] x13;
  wire signed [7:27] x14;
  wire [28:5] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [4:29] p0 = 552518721;
  localparam signed [28:5] p1 = 765204280;
  localparam signed [4:30] p2 = 285810822;
  localparam [30:5] p3 = 993167534;
  assign x4 = {({2{p2}} ^ {2{(p0[19] - (p1 ^ x2[14 +: 2]))}}), (!ctrl[3] || ctrl[2] && ctrl[3] ? (!ctrl[1] || ctrl[0] || ctrl[0] ? {2{((p1[31 + s0 +: 3] ^ p0[10 + s1 +: 5]) & p2)}} : p1[16 + s2 +: 2]) : p3[13 -: 1])};
  assign x5 = p0[15 +: 3];
  assign x6 = x4[14 -: 3];
  assign x7 = (x3[16 + s0 -: 3] | {2{((x2[28 + s2 +: 8] | (x2[31 + s3 +: 1] - p0[4 + s2 -: 6])) + ({2{x3}} | p2[18 -: 3]))}});
  assign x8 = (ctrl[1] || ctrl[3] && !ctrl[2] ? (p2[11 + s2 +: 1] & (x1[17 -: 2] | x1[9])) : {(p3[8 +: 4] - x3[2 + s1 +: 5]), x0});
  assign x9 = p1[14 + s0];
  assign x10 = ((p0[12 -: 1] - (x4[8] & (p3[22 -: 4] & {2{x9[26 + s1 +: 2]}}))) & (ctrl[3] && ctrl[2] && ctrl[3] ? ({2{(x9[7 + s0 +: 1] | x5[14])}} | (x6[9] ^ x5[13 -: 3])) : x6[6 + s1]));
  assign x11 = (!ctrl[1] || ctrl[3] && ctrl[3] ? (p1[2 + s0 +: 7] ^ (({2{p3[8 + s2]}} + x2[29 + s2 +: 8]) ^ (p0 - {2{p0[13 -: 2]}}))) : (p2[9 + s2 +: 5] ^ (({2{p3[14]}} & {x1[9 + s2 +: 6], p1}) & (p3[5 + s1] - {2{x10[19 -: 3]}}))));
  assign x12 = {2{{p3[9], {(!ctrl[1] || ctrl[3] && !ctrl[2] ? (p1[15 + s3 -: 1] - x7[17 +: 3]) : (x7[8 +: 1] & p1[8])), (ctrl[0] && ctrl[3] || !ctrl[0] ? (x8[18 +: 4] & x8[22 + s0 +: 3]) : ((p3[11 + s1 -: 8] ^ x8[3 + s3 +: 5]) & p0))}}}};
  assign x13 = (x2[23 + s2 -: 7] | (!ctrl[2] && ctrl[3] && !ctrl[3] ? {2{p1}} : (ctrl[0] && !ctrl[2] || !ctrl[2] ? (p0[18 +: 1] | (x3[23 + s2 +: 8] | p0)) : {x1, ((x5[15] & x8[17 +: 2]) + x2[23 -: 2])})));
  assign x14 = {((ctrl[2] || ctrl[1] || !ctrl[2] ? (ctrl[1] || !ctrl[2] || !ctrl[2] ? x9 : p1[3 + s2 +: 4]) : ((x0[25 + s0 -: 8] | p3[9 +: 4]) - (!ctrl[0] && !ctrl[2] || !ctrl[2] ? p1 : (p3[22 -: 3] & p0[14 + s1])))) & x9[24 + s0 +: 3]), p3[19 + s0]};
  assign x15 = p2[13 + s3 +: 4];
  assign y0 = ({(!ctrl[0] && ctrl[1] || ctrl[3] ? {p0, (!ctrl[3] || !ctrl[0] || ctrl[0] ? x11[15] : x3[15 +: 3])} : ({2{(x7[19 + s3 -: 2] - x9)}} & (!ctrl[3] && ctrl[3] || !ctrl[1] ? p3[29 + s2 -: 8] : x11[17 -: 4]))), x3[14 +: 2]} | (!ctrl[2] && !ctrl[0] || !ctrl[3] ? x8[21 + s3 +: 3] : (!ctrl[1] && ctrl[0] || !ctrl[0] ? {2{{2{p0[6 + s0 -: 3]}}}} : ((((x5 ^ x0[17 -: 2]) + p3[29 + s1 +: 6]) ^ p3) | p1[4 + s2 -: 3]))));
  assign y1 = ((((!ctrl[3] && !ctrl[3] && !ctrl[3] ? (x13[11] | x1) : p0[19]) - p0[16]) & x2[29 + s3 +: 6]) + {2{(((ctrl[2] || !ctrl[2] && !ctrl[1] ? p3[4 + s2] : p2[22]) - {x14[18 -: 2], p2[9 + s1 -: 8]}) + ((x3[17 + s3 +: 5] & p2[20 -: 2]) - {(x1 + x8[29 + s1 -: 1]), ((x0 & p0) - x2[10 +: 2])}))}});
  assign y2 = {x12, p1[11 +: 3]};
  assign y3 = (ctrl[1] && !ctrl[3] || ctrl[2] ? (x8[7 + s3] - x3) : (ctrl[1] && ctrl[0] && ctrl[0] ? x9[16] : x4[8 + s0 +: 2]));
endmodule
