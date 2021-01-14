module partsel_00677(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [26:6] x4;
  wire signed [31:5] x5;
  wire signed [2:28] x6;
  wire [28:2] x7;
  wire [31:7] x8;
  wire [29:3] x9;
  wire signed [3:28] x10;
  wire [24:0] x11;
  wire signed [5:24] x12;
  wire [30:5] x13;
  wire [24:3] x14;
  wire [0:31] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:31] p0 = 913975714;
  localparam signed [26:2] p1 = 122457710;
  localparam signed [2:24] p2 = 40192267;
  localparam signed [6:28] p3 = 389524115;
  assign x4 = {x3[3 + s3 +: 5], x0[23 -: 2]};
  assign x5 = x4[13 +: 4];
  assign x6 = p1[18];
  assign x7 = (p2[6 + s0 -: 7] + {(!ctrl[2] || !ctrl[3] || !ctrl[0] ? {{2{p0[8 + s1 +: 7]}}, p1} : x0[21 + s3 -: 3]), (ctrl[3] || ctrl[0] && !ctrl[3] ? x4[25 + s3 +: 5] : x5)});
  assign x8 = (x7 & (ctrl[3] || !ctrl[1] && ctrl[3] ? x0[18] : x0[17 + s2]));
  assign x9 = x8[6 + s0 +: 5];
  assign x10 = p1[11 + s1 +: 1];
  assign x11 = {(((ctrl[3] && !ctrl[2] || ctrl[0] ? p2 : (x3[22] - p2[12 +: 3])) + ((p0[16 +: 1] ^ x1[12 -: 3]) + (p1[11 +: 2] - x8[14 -: 3]))) | x10[9 +: 3]), ((!ctrl[0] && !ctrl[1] || ctrl[2] ? x1[23] : {2{x7[22 -: 4]}}) + ((x3[8 +: 2] & x9[8 +: 1]) - ({x1[7 + s1 -: 1], p1[10 + s3 -: 1]} ^ (x5[11 +: 1] - x5[15 +: 1]))))};
  assign x12 = ({{2{p3[22 -: 3]}}, (((p1 + p0[19]) + x7[5 + s0 +: 7]) + x3[18 -: 3])} & p0[17 + s2]);
  assign x13 = {2{(ctrl[0] && ctrl[1] || ctrl[3] ? x6[14 +: 1] : ((!ctrl[0] && ctrl[0] || !ctrl[3] ? (p0 & p2) : (p3[22] | x7)) & {2{p1[29 + s1 +: 2]}}))}};
  assign x14 = x10[19 -: 3];
  assign x15 = (!ctrl[0] || !ctrl[1] && !ctrl[1] ? p1[29 + s1 -: 7] : {2{((!ctrl[3] && ctrl[0] && ctrl[2] ? x4 : {x13[13 +: 1], x7}) & p3[9])}});
  assign y0 = {{2{{({2{p3[19 + s3]}} | p0[15 +: 1]), {x12, (x13[17] ^ x1[23 -: 1])}}}}, x8[11 + s0 +: 2]};
  assign y1 = {x8, p3[6 + s2]};
  assign y2 = {x11[12 +: 2], {((!ctrl[2] && ctrl[3] && !ctrl[2] ? (ctrl[0] || ctrl[1] && !ctrl[0] ? (p1 + p3[14 + s1]) : (p1[8 + s2 -: 2] ^ x9[16])) : {2{x10}}) | ((x12[13 + s3 -: 7] & p0[0 + s1 +: 1]) | (x0[4 + s3] - p2))), x5}};
  assign y3 = p3[9 +: 3];
endmodule
