module partsel_00580(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [28:0] x4;
  wire [0:24] x5;
  wire [26:6] x6;
  wire [4:27] x7;
  wire signed [24:2] x8;
  wire signed [26:4] x9;
  wire signed [6:24] x10;
  wire signed [31:1] x11;
  wire [0:29] x12;
  wire signed [1:29] x13;
  wire [4:26] x14;
  wire [7:28] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:1] p0 = 968859198;
  localparam [29:3] p1 = 417952668;
  localparam signed [28:3] p2 = 755155862;
  localparam signed [28:3] p3 = 652238929;
  assign x4 = p2;
  assign x5 = p0[23 -: 2];
  assign x6 = p1[20];
  assign x7 = ({(!ctrl[2] && ctrl[3] && ctrl[2] ? {2{(!ctrl[2] || ctrl[3] || ctrl[2] ? x3[14 -: 1] : x3)}} : p1[31 + s1 -: 3]), ((ctrl[1] || !ctrl[2] || ctrl[0] ? (p0[19 -: 4] & p2[19]) : (p1[6 + s0] + x3[15 +: 1])) + {x5[20], (ctrl[2] || !ctrl[2] && !ctrl[1] ? x4[6 + s0 +: 2] : ((x1[26 + s2 -: 3] ^ p1[4 + s0]) & x2))})} + {((ctrl[1] && !ctrl[3] && !ctrl[1] ? x6[2 + s3 +: 2] : x0) | x1[18 +: 2]), (x1 + ((ctrl[0] || !ctrl[2] || !ctrl[0] ? p3[6 + s2 -: 7] : p3[10]) - (!ctrl[0] && ctrl[1] && ctrl[3] ? x5 : x6[18 + s0 -: 2])))});
  assign x8 = (((p1[23] | p0) - (p1[5 + s0 +: 7] & ({x6, x5[8]} & (x1 & x6[17 +: 2])))) | x6[23 + s1 +: 6]);
  assign x9 = ((!ctrl[2] && ctrl[2] && ctrl[3] ? x2[1 + s3 +: 5] : (p0[11 + s0 -: 4] + (p0[23] | (((p2[15 + s2 +: 4] & (x0[16] & p0[17])) & p2) - x6[21])))) ^ p0);
  assign x10 = (!ctrl[3] && !ctrl[2] && ctrl[1] ? p0 : p0[17 + s0 +: 1]);
  assign x11 = p1[10];
  assign x12 = ((p3[5 + s3 -: 2] + (ctrl[1] && ctrl[1] && !ctrl[1] ? x0 : (x4[19] | {2{p1[8 + s2]}}))) - x7[12 + s3 -: 4]);
  assign x13 = (p2[0 + s2 +: 4] + {p0, ((x9[15 +: 3] + (x3[11 +: 3] | p0[20 + s3 +: 2])) + x2[21 -: 2])});
  assign x14 = {(x0 | {2{(ctrl[1] && !ctrl[0] || ctrl[1] ? (!ctrl[2] || !ctrl[3] || ctrl[0] ? p0[16 +: 2] : x7[11 +: 4]) : (ctrl[3] && !ctrl[3] || ctrl[3] ? p3 : p0[4 + s1 +: 1]))}}), x6[9]};
  assign x15 = p1[8 +: 1];
  assign y0 = p1[11 +: 2];
  assign y1 = x11[30 + s1 -: 3];
  assign y2 = (!ctrl[2] || ctrl[2] || ctrl[2] ? p3[13 -: 4] : (({{2{x11}}, (!ctrl[3] || !ctrl[0] && !ctrl[1] ? p0[23 + s1 +: 1] : (p0[15 +: 1] + (p3[16 -: 3] & x15[12 -: 3])))} | x11[15 +: 2]) + {x6[13 +: 4], ((x15 ^ (p1[2 + s3 -: 8] | (p0[16 + s0 +: 2] + p0))) ^ (x4[10 +: 3] + (x2 | p1[25 + s2 +: 6])))}));
  assign y3 = ((((!ctrl[0] || !ctrl[0] && !ctrl[0] ? (ctrl[0] && !ctrl[3] && ctrl[3] ? p0[16 -: 4] : p3[3 + s0 -: 5]) : (x7[8] - x11[7 + s3])) & x2[4 + s0]) ^ (p1[18 + s0] - ((x6 & x15[17 + s2 +: 5]) | x14[8 + s0 +: 4]))) | {2{{x2[7 + s0 -: 7], p0[8 + s3]}}});
endmodule
