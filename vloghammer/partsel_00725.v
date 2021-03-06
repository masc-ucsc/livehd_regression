module partsel_00725(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [5:27] x4;
  wire signed [6:27] x5;
  wire signed [27:3] x6;
  wire [0:30] x7;
  wire [5:30] x8;
  wire signed [25:7] x9;
  wire signed [0:29] x10;
  wire signed [27:5] x11;
  wire [25:6] x12;
  wire [2:25] x13;
  wire [6:29] x14;
  wire [3:26] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [26:2] p0 = 749753918;
  localparam [0:28] p1 = 119303344;
  localparam signed [1:29] p2 = 786663982;
  localparam signed [3:31] p3 = 546628262;
  assign x4 = {2{({p3[6 + s0 -: 1], ({2{x2}} + p3[5 + s2 +: 2])} | (p1 & x3))}};
  assign x5 = (((x1[17 -: 2] ^ (x1[9 +: 1] - p2)) ^ {{2{p3[9 +: 3]}}, (ctrl[1] || ctrl[0] && !ctrl[0] ? p1[21] : {p1, x3})}) & p2[5 + s0]);
  assign x6 = p3[18 +: 3];
  assign x7 = (x1[4 + s3] & ((!ctrl[0] || ctrl[2] || ctrl[0] ? ((ctrl[3] && !ctrl[3] && ctrl[3] ? (x0[16] + p1[1 + s1 +: 3]) : p2[23 -: 1]) ^ x3) : p1[14 + s0]) + x0));
  assign x8 = x3[14 +: 4];
  assign x9 = x8;
  assign x10 = {2{(!ctrl[0] && ctrl[2] || !ctrl[2] ? {2{p1[8]}} : x2[30 + s2 +: 3])}};
  assign x11 = p1[18 +: 3];
  assign x12 = ((p1[15 +: 3] | {(ctrl[1] || ctrl[3] || ctrl[3] ? (p0[15 +: 2] & p2[31 + s1 -: 4]) : p1[7 + s1]), p0[15 +: 2]}) & x11[13 +: 1]);
  assign x13 = {x12[11 + s2], p1[14 -: 2]};
  assign x14 = (((p2 - {2{p0[17 + s3]}}) ^ p0) ^ p0[15]);
  assign x15 = x11[15 +: 4];
  assign y0 = ((!ctrl[1] && !ctrl[2] || ctrl[0] ? x1[10 + s1 +: 2] : {({(x6[14 +: 1] | x12[9 +: 1]), p2[13 +: 3]} ^ x2[5 + s3]), (ctrl[1] || ctrl[2] && ctrl[1] ? {2{(x4[11 +: 3] - (p3[23 -: 3] ^ p2[8 +: 2]))}} : (p2[19 + s1 -: 5] & (x5[6 + s1 +: 6] & p1[9])))}) ^ ({p2[6 + s2 -: 7], {x11[14 +: 4], x1[15]}} & ({2{p0[21 + s3 +: 6]}} ^ (p1[20 -: 4] & p1[12 -: 1]))));
  assign y1 = {p0[17 -: 2], x2[13 + s0]};
  assign y2 = {2{((((x4[13 + s0 +: 3] & (x2[14 +: 3] & x12[18 + s1 -: 2])) + p3) - x6[22]) + x4[10 + s1 +: 2])}};
  assign y3 = {x5[11], ((((x8 & x11) & x9[15 -: 4]) & p2[12]) ^ (x12 ^ {(x15[20 + s2 -: 6] - x14[4 + s2]), (x7[23 + s1 +: 7] - p1[15 +: 2])}))};
endmodule
