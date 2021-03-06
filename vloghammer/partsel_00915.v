module partsel_00915(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [26:3] x4;
  wire [28:6] x5;
  wire signed [31:3] x6;
  wire [30:7] x7;
  wire signed [7:25] x8;
  wire signed [31:2] x9;
  wire [24:6] x10;
  wire [7:31] x11;
  wire signed [3:24] x12;
  wire signed [29:6] x13;
  wire [26:4] x14;
  wire signed [29:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [24:1] p0 = 605015440;
  localparam signed [2:29] p1 = 733436881;
  localparam signed [24:3] p2 = 381120751;
  localparam [30:6] p3 = 183839620;
  assign x4 = x1[27 + s0 +: 5];
  assign x5 = ({2{p2[13]}} & (ctrl[0] && !ctrl[1] || ctrl[0] ? (ctrl[3] || !ctrl[0] || ctrl[0] ? p2[16 -: 3] : x4) : ({(p2[14 -: 4] ^ p1), p3[15 + s1 -: 8]} | ((p3[13 +: 3] | x4) | (ctrl[1] || !ctrl[2] || ctrl[1] ? x1[21 + s0 -: 4] : p1)))));
  assign x6 = ({{p3[9], x0[19 +: 3]}, x5[7 + s1]} | (!ctrl[2] && ctrl[3] && ctrl[0] ? x4[4 + s1 -: 4] : x4[20]));
  assign x7 = (x2[10 +: 4] ^ p2);
  assign x8 = (ctrl[0] || !ctrl[2] && !ctrl[2] ? p0[18] : (x7[31 + s0 -: 1] | {2{p3[9]}}));
  assign x9 = (!ctrl[2] && ctrl[3] && ctrl[3] ? x7[14 + s2 -: 2] : ((!ctrl[1] || ctrl[2] && !ctrl[3] ? (!ctrl[0] && ctrl[3] || ctrl[2] ? (p3 - x1[16]) : {2{x7}}) : {{2{p1[19 + s2 +: 6]}}, (x2[6 + s2 -: 1] | p1[30 + s2 +: 8])}) & p2[19 + s0]));
  assign x10 = ((!ctrl[3] && !ctrl[1] || ctrl[0] ? {p1[15 +: 4], x6[24 + s0 +: 3]} : {x7[19], p0[21]}) & p1[15 + s2]);
  assign x11 = p2[22 + s1 -: 8];
  assign x12 = p3[12];
  assign x13 = {{((!ctrl[2] || !ctrl[2] && ctrl[0] ? p0[11 + s2 -: 4] : (ctrl[0] && ctrl[1] || !ctrl[0] ? (p0 | ((x1 & x8[17 +: 3]) - x10[13 + s0])) : x10[15])) ^ (p3[23 -: 4] & p3[7 + s2 -: 7])), p3[7 + s1 -: 4]}, p0};
  assign x14 = x7;
  assign x15 = (((p3 | x10) - x0[18 +: 3]) - ({2{((p3 + p1) - (p0[16] + x3[15 +: 1]))}} + (ctrl[1] && ctrl[1] || ctrl[3] ? {2{((x1[15 -: 1] | p1[15 -: 4]) | x11[16 + s1])}} : ((x0[16 + s3] & p2) + x2[13 + s2]))));
  assign y0 = (((p1[22 + s2 +: 6] + (p3[18 + s1 -: 6] & p3[4 + s1 -: 4])) ^ p0) | p0[13 -: 3]);
  assign y1 = (!ctrl[2] && ctrl[0] && ctrl[3] ? (({{p0[26 + s1 -: 5], x1[31 + s1 -: 5]}, ((p2[3 + s0 +: 1] + (x11[11 + s0 +: 4] & x15[8])) ^ p1)} ^ p3[23 -: 3]) | (!ctrl[1] && ctrl[0] || !ctrl[3] ? (x4 | x1[20 + s0 -: 3]) : x8[22])) : {x4, {(x5[23 + s0 -: 7] ^ {2{x3[27 + s2 +: 4]}}), ((p0[18 -: 4] - p1[12 +: 4]) & {x1[10 + s2 -: 5], p3[15 + s2 -: 1]})}});
  assign y2 = x13[29 + s1 -: 8];
  assign y3 = x8[15 +: 2];
endmodule
