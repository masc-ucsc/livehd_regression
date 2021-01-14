module partsel_00158(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [27:3] x4;
  wire [31:2] x5;
  wire signed [3:29] x6;
  wire [5:28] x7;
  wire signed [4:28] x8;
  wire [2:31] x9;
  wire [30:7] x10;
  wire [6:30] x11;
  wire signed [30:7] x12;
  wire [24:4] x13;
  wire signed [31:7] x14;
  wire [5:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:6] p0 = 44030517;
  localparam [0:28] p1 = 566041486;
  localparam [0:30] p2 = 891686892;
  localparam signed [24:6] p3 = 509536474;
  assign x4 = (p3[23 + s0 +: 5] | (ctrl[3] && ctrl[1] && !ctrl[2] ? p2[14 +: 4] : {2{x3[13 + s1]}}));
  assign x5 = ({(ctrl[1] || ctrl[3] && !ctrl[0] ? ((p3[9 + s3] + x1[17 +: 4]) - {(p0 | x0[14]), x1[0 + s2 +: 4]}) : (x0 ^ x0[13])), (ctrl[0] || !ctrl[3] && ctrl[1] ? p3[5 + s3 +: 1] : p0[9 +: 4])} & (ctrl[1] && ctrl[2] && !ctrl[1] ? p1[17 -: 1] : (((p1[16 -: 2] ^ p2) | x1[31 + s0 +: 2]) & p0[17 -: 2])));
  assign x6 = ({2{p0[16 + s2 -: 6]}} & p0);
  assign x7 = (p1 + p2[18 + s3 +: 4]);
  assign x8 = (x4[22] & ({p1[22 -: 3], x3} & p2[6 + s1 +: 2]));
  assign x9 = (({2{x8[11]}} + (ctrl[0] && ctrl[0] || ctrl[2] ? ({x4, ((x5[28 + s3 -: 2] - x1[13]) | x8)} ^ (!ctrl[0] || !ctrl[3] && ctrl[1] ? x7[16 + s1] : (x4[18 +: 2] + x5))) : p3)) - x5);
  assign x10 = ((!ctrl[0] || !ctrl[3] && ctrl[3] ? {(ctrl[1] && ctrl[2] || ctrl[0] ? (p2[10 +: 2] ^ (p0 - x0)) : p0[13 + s2 -: 7]), {2{(x1[8] - x6[25 + s1 +: 3])}}} : {p3, (ctrl[0] && ctrl[1] && !ctrl[0] ? p0[23 -: 4] : (p1[15 + s1 -: 2] | x6[15]))}) - x8);
  assign x11 = (((x0[17 + s3] - x9[20 + s1 -: 6]) ^ {{2{{p0[13 + s0], x7[19 +: 2]}}}, (ctrl[2] || !ctrl[2] || !ctrl[2] ? p0[24 + s3 +: 2] : x1[15 +: 1])}) | x10[21]);
  assign x12 = p0;
  assign x13 = x9[0 + s1 -: 3];
  assign x14 = ({2{(((p3[23 -: 1] ^ p1[11]) + p2[5 + s3 -: 7]) - {x3[10 + s0], {x11, p3[8 + s3]}})}} ^ p2[16 + s2 +: 8]);
  assign x15 = (x5[0 + s1 -: 5] - {{2{x9}}, (({2{(x8[19 +: 4] ^ (x10 | x11[21]))}} + p0) | p3)});
  assign y0 = ((ctrl[0] && ctrl[3] || !ctrl[0] ? (ctrl[2] || ctrl[2] && !ctrl[0] ? (!ctrl[0] || ctrl[1] && !ctrl[3] ? (x2[15 + s2 -: 3] | x14) : x2[16]) : (x12[17 -: 4] ^ {2{x11[16]}})) : p1[8]) ^ x9[6 + s3]);
  assign y1 = (ctrl[1] && ctrl[2] || !ctrl[0] ? p0 : x15[18 + s0]);
  assign y2 = {2{(!ctrl[3] || !ctrl[3] && ctrl[2] ? x15[28 + s2 +: 7] : p0[20])}};
  assign y3 = (ctrl[2] || ctrl[0] && ctrl[3] ? ({2{p1}} & ({2{(p3[15 + s0] | p0[11])}} & x10[24 + s3 +: 8])) : x5[12 + s1 -: 1]);
endmodule
