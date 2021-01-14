module partsel_00832(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [29:1] x4;
  wire signed [2:28] x5;
  wire signed [24:5] x6;
  wire [5:31] x7;
  wire signed [28:2] x8;
  wire signed [26:1] x9;
  wire [2:26] x10;
  wire [5:25] x11;
  wire signed [5:24] x12;
  wire [5:31] x13;
  wire signed [28:1] x14;
  wire signed [1:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:5] p0 = 283478363;
  localparam signed [29:3] p1 = 785166560;
  localparam [27:5] p2 = 424429595;
  localparam [31:1] p3 = 91669064;
  assign x4 = ({((x1[22] + x0[22 + s1 +: 1]) - ((!ctrl[2] && !ctrl[1] && ctrl[0] ? p0[13 -: 3] : p2[12 -: 2]) & p1)), x2[10 + s0 +: 4]} | ((ctrl[0] || ctrl[3] || ctrl[1] ? p2[22] : ((ctrl[3] || ctrl[3] || ctrl[3] ? x3[26 + s2 +: 6] : p1[17 + s0]) & (x2[20 + s0 -: 6] ^ x1[22]))) & ({2{x1[30 + s0 -: 1]}} | (!ctrl[1] || !ctrl[1] || !ctrl[1] ? (p3[14 -: 2] | x1[16 +: 2]) : {(x1[9] & x3), x2[9 + s0]}))));
  assign x5 = p0[1 + s1 -: 1];
  assign x6 = (!ctrl[0] || ctrl[0] && ctrl[0] ? {{{2{(x2 + (x4[15 + s3 +: 1] - p0[18 + s2]))}}, {2{(p0 - x1[0 + s1 -: 4])}}}, (x1[18 + s1 -: 7] & p2[13 -: 4])} : x1);
  assign x7 = (x1[17 -: 1] & p0[23 -: 4]);
  assign x8 = (p1 - x0);
  assign x9 = p1;
  assign x10 = (((!ctrl[3] && !ctrl[2] && ctrl[0] ? p0[14 +: 2] : (ctrl[0] && !ctrl[2] && !ctrl[2] ? (x7[10 + s0] | (p3[12 + s3 -: 7] | x6[4 + s2 -: 1])) : {2{(x1[16 -: 1] ^ (x7[19] | p2[9 + s0]))}})) | p1[14 + s0 +: 7]) + (!ctrl[0] || !ctrl[2] && !ctrl[3] ? p2[26 + s0 -: 2] : x1[17]));
  assign x11 = (ctrl[3] || !ctrl[0] && !ctrl[1] ? (x7[19 +: 1] + (ctrl[2] && !ctrl[0] && !ctrl[0] ? x6[11 + s2 -: 2] : p0[22 + s3 +: 7])) : {{(x9[7 + s1 -: 8] ^ p3[27 + s2 -: 6]), p0[26 + s0 -: 5]}, ({x1[19 -: 3], x6[28 + s3 -: 3]} & x0)});
  assign x12 = (x10 | (p3 | {{2{p2[10 + s1]}}, (!ctrl[0] || !ctrl[0] && ctrl[1] ? {2{(x11 + x11[18 +: 2])}} : (p3[25 + s0 +: 8] ^ x11))}));
  assign x13 = x10[7 + s2 +: 6];
  assign x14 = {2{(x8[6 + s2] - (x0[1 + s2 +: 4] ^ (p2[8 +: 2] & (x1[16 +: 1] + ((x10 & x3[18 + s2]) - x12[13 + s3 -: 5])))))}};
  assign x15 = (!ctrl[0] || !ctrl[2] && !ctrl[2] ? p3[18 + s1 -: 8] : p3[17 +: 1]);
  assign y0 = (ctrl[0] || ctrl[3] && !ctrl[3] ? {2{{(p3[26 + s1 +: 7] | p2[5 + s1]), (p0[22 -: 2] - p2[23 -: 2])}}} : {{(!ctrl[3] && ctrl[0] || !ctrl[1] ? (x11 & (p0[11] + p1)) : {2{p0[20]}}), x8[8]}, (p0[8] - x13[14 + s1 -: 6])});
  assign y1 = p2[21 + s0 +: 3];
  assign y2 = x5[11 + s3];
  assign y3 = ({x2, p1} & (p0 ^ {x6[12 +: 3], p2}));
endmodule
