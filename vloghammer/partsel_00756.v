module partsel_00756(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [31:5] x4;
  wire signed [3:24] x5;
  wire signed [31:4] x6;
  wire [2:28] x7;
  wire [4:28] x8;
  wire [24:6] x9;
  wire signed [7:30] x10;
  wire [1:29] x11;
  wire [28:1] x12;
  wire [3:29] x13;
  wire signed [1:31] x14;
  wire [24:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:0] p0 = 490387799;
  localparam signed [6:31] p1 = 819011832;
  localparam [27:6] p2 = 874409141;
  localparam [3:25] p3 = 358216572;
  assign x4 = x2[20];
  assign x5 = (x3[25 + s3 -: 5] | ({2{{2{p0[12 -: 3]}}}} | ({2{(!ctrl[1] || ctrl[1] && ctrl[1] ? ((p0 ^ (p1[14 + s1] & p1[23 + s0 -: 1])) + (x2 | x1[14 -: 3])) : p2)}} + ((x1[22 + s3 -: 6] & p1) ^ (ctrl[2] && !ctrl[2] || ctrl[1] ? x0[8] : p2[20])))));
  assign x6 = x1;
  assign x7 = ({2{{{(((x3[12 + s2 -: 5] | x6[21 + s2 +: 1]) & (x1[10 +: 4] + x2[16 -: 1])) - (x2[21 + s0 -: 1] ^ p0[14])), p3[13 +: 3]}, p2[21 -: 2]}}} + (((x6 - (x2[27 + s0 -: 3] ^ p3[15 + s3])) - x4) + p0[17 +: 3]));
  assign x8 = (({((ctrl[1] || !ctrl[0] && ctrl[3] ? p3 : x7[13 +: 1]) | {2{p0}}), ((p2[7 + s3] | (p0[9 +: 4] & p2[22 -: 4])) + (!ctrl[0] || ctrl[1] || ctrl[1] ? x7 : x5[4 + s3 -: 6]))} + (ctrl[2] || ctrl[0] && !ctrl[1] ? {2{{p2, x6}}} : x6[10 + s3 -: 7])) + p1[20]);
  assign x9 = (p1 - (!ctrl[2] || !ctrl[3] && ctrl[3] ? {2{(p2 ^ x5)}} : (((p3[14 + s1 -: 3] - p0[13 -: 1]) - ((x0[11 +: 2] & x5) ^ (p2[9 + s3 +: 5] | x1[15 -: 3]))) & x4[27 + s2 +: 6])));
  assign x10 = ((({p1[6 + s0 -: 1], x9} ^ {2{x0[30 + s0 -: 3]}}) ^ {(((p0[18 + s3] | x0) + x5[19 -: 4]) + x1[30 + s2 -: 4]), x7[15 + s1 +: 4]}) ^ {p1, {({2{x7[9 +: 3]}} & p0[17 +: 3]), p0[23]}});
  assign x11 = (p2[4 + s3 +: 4] ^ (((p0[16 +: 4] ^ x3[14 +: 4]) & {2{(p2[15 +: 3] + p1[15 -: 2])}}) | (((p1[6 + s2 -: 2] & p1) - (x2[8 + s1] | (p2[9 + s0] - (x2[10 +: 1] + p0[26 + s2 +: 2])))) & {x6, {x1[14 -: 2], p0}})));
  assign x12 = x3[18 + s2];
  assign x13 = (p2 - {2{(ctrl[2] || !ctrl[0] && !ctrl[2] ? x8 : ({2{p0[18 + s0]}} & p1[3 + s3 +: 7]))}});
  assign x14 = p0[19 + s2];
  assign x15 = p0[11 +: 3];
  assign y0 = ((!ctrl[0] && ctrl[1] || ctrl[3] ? ((x15[19 -: 1] - (x10[9 + s3] & x8[18 -: 2])) + {2{(x4 & x2[12])}}) : p1[10 + s0 -: 2]) + p1[10 +: 3]);
  assign y1 = p1[7 + s0 +: 7];
  assign y2 = (x13[9 +: 1] & ((!ctrl[0] && !ctrl[0] || !ctrl[0] ? {2{p3[14]}} : {2{((p3 ^ x9[7 + s2]) | p0[5 + s0])}}) | x9[17 + s0]));
  assign y3 = {(!ctrl[1] && ctrl[2] || !ctrl[2] ? x0 : (p1[11 + s0 -: 6] & ((ctrl[2] || ctrl[0] || ctrl[3] ? p3[16 -: 3] : p0) + ((x14[11 +: 4] ^ x8[16 + s1]) | x14[17 + s1 -: 6])))), p0[20 -: 3]};
endmodule
