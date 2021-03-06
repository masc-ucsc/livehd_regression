module partsel_00603(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [5:25] x4;
  wire signed [29:5] x5;
  wire [26:5] x6;
  wire [4:26] x7;
  wire [1:28] x8;
  wire [0:31] x9;
  wire signed [26:5] x10;
  wire [27:6] x11;
  wire [7:30] x12;
  wire [31:1] x13;
  wire [7:30] x14;
  wire [4:31] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:5] p0 = 241265026;
  localparam [1:28] p1 = 488419084;
  localparam signed [29:1] p2 = 15185118;
  localparam [0:30] p3 = 248056697;
  assign x4 = ((({p0, (x1 ^ (p3 | (x0[17 + s3] | (x1[14 +: 2] - p1[15 +: 4]))))} | {2{p3[18 +: 1]}}) ^ ((p0 - (!ctrl[0] && !ctrl[1] && !ctrl[1] ? (p2[6 + s0 -: 2] - x1[16 + s2 -: 1]) : p3[9 +: 4])) + (p3 & ((x0[21 -: 4] + p0[15 -: 2]) ^ p0)))) - x1);
  assign x5 = p3;
  assign x6 = x0;
  assign x7 = ((!ctrl[3] && ctrl[1] && !ctrl[3] ? (p0 ^ p0[30 + s1 +: 7]) : ((!ctrl[3] && ctrl[2] || !ctrl[3] ? (p3 ^ x6[7 + s1 +: 4]) : p0) ^ ((x6[20 + s1 +: 2] | p3[20 -: 4]) + {2{x1[8 + s3]}}))) | x6);
  assign x8 = x4[18 +: 1];
  assign x9 = (x6 & {2{((x7 & (p2[11 + s1] - (x4[16 + s3] + x6))) & p3)}});
  assign x10 = (x3[28 + s3 -: 1] ^ (((x2[9 + s3 -: 2] | {2{x6}}) + ({p0[3 + s1 +: 6], p0[3 + s2 -: 5]} | (x1[2 + s0 +: 7] ^ x5[17 -: 3]))) | {(x2[11] | (ctrl[3] && !ctrl[3] && ctrl[2] ? (p3[13 -: 4] + (x3[10 + s1] + p1[19 + s0])) : x6[10])), ((x7[21 + s0 +: 4] ^ p2[5 + s2]) | (x7[9 + s0] ^ x5[2 + s3 -: 5]))}));
  assign x11 = p1[12 +: 1];
  assign x12 = ((p3[17 +: 4] ^ p2[15 -: 3]) | {x11, x11});
  assign x13 = x3[18 -: 4];
  assign x14 = (p1[10 +: 4] & {2{x11[14 -: 3]}});
  assign x15 = p0;
  assign y0 = ((p3[14] - ({2{(p0[8 +: 2] + p2[23 -: 3])}} + x1[19])) + (x2 | (ctrl[2] && !ctrl[3] || !ctrl[1] ? x6[7 + s1 +: 6] : {2{{x15[28 + s3 -: 4], ((x15[13 +: 1] & x8[15 -: 4]) + (p1[0 + s3 +: 2] | x1[15 + s2 +: 1]))}}})));
  assign y1 = p0[8 + s0];
  assign y2 = p0[17];
  assign y3 = p2[2 + s1 +: 4];
endmodule
