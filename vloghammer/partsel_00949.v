module partsel_00949(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [31:0] x4;
  wire [24:4] x5;
  wire [6:30] x6;
  wire [4:26] x7;
  wire signed [28:6] x8;
  wire [24:4] x9;
  wire signed [5:26] x10;
  wire signed [6:24] x11;
  wire signed [25:7] x12;
  wire signed [30:2] x13;
  wire signed [29:1] x14;
  wire signed [5:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:4] p0 = 202645811;
  localparam [24:0] p1 = 435084470;
  localparam [6:31] p2 = 322935576;
  localparam [3:28] p3 = 593156217;
  assign x4 = p0;
  assign x5 = {2{({2{p1[18 + s2 -: 6]}} - x1[14 -: 1])}};
  assign x6 = (x2[23 + s1 -: 7] ^ x3[23 -: 2]);
  assign x7 = {2{{(ctrl[0] || ctrl[3] || !ctrl[1] ? (x4[9 +: 4] ^ x5[16 + s2 -: 5]) : ((x3 ^ (p0[30 + s0 +: 6] | (p2[14 + s2 +: 4] | x5))) - (x5[13 -: 2] ^ p0[20 -: 4]))), (p0[17 + s2 -: 3] | (ctrl[2] && ctrl[0] && ctrl[0] ? (x6[10 +: 4] - p1[12 -: 3]) : {2{p1[14 -: 4]}}))}}};
  assign x8 = (!ctrl[1] && ctrl[2] || !ctrl[3] ? (!ctrl[0] || !ctrl[0] || ctrl[0] ? x4 : {2{p0}}) : x3[29 + s3 -: 1]);
  assign x9 = x8[1 + s0 +: 2];
  assign x10 = ({x7[14], (ctrl[1] && ctrl[0] || ctrl[2] ? p0 : p2[10 + s1 +: 4])} - p0);
  assign x11 = (ctrl[2] || !ctrl[2] || !ctrl[0] ? ({p0[10 +: 3], p0[13 -: 1]} | p0) : ({(ctrl[3] || !ctrl[3] && ctrl[1] ? {(x8 & x1[16 -: 2]), (p3[30 + s2 -: 6] | (((p2[12 +: 2] & p3[9]) + p0[22 + s0 -: 2]) ^ p2[10]))} : {(x5[15] + p2[16 -: 2]), p2[7 + s2 -: 4]}), ((x1[4 + s2] ^ x8[13 -: 1]) & p2)} & (x4[27 + s0 -: 5] & x0[16 + s1 +: 8])));
  assign x12 = {2{{(ctrl[0] || !ctrl[1] || !ctrl[0] ? (!ctrl[2] || ctrl[1] || ctrl[1] ? x7[18 + s2] : x9) : p3[15 + s1 -: 1]), {2{(x4[13 +: 1] ^ (p3[14 -: 3] & x0[6 + s1]))}}}}};
  assign x13 = ({2{x7[1 + s2 -: 1]}} | (x9[8 +: 1] + p0));
  assign x14 = ({2{p2[27 + s3 -: 6]}} | (ctrl[1] || !ctrl[1] || !ctrl[3] ? p0 : x3[0 + s1 +: 4]));
  assign x15 = (x10[22 -: 4] ^ (x12 - (p0[16 +: 1] & (p1[18 +: 3] + p3[30 + s1 -: 5]))));
  assign y0 = (!ctrl[3] || ctrl[2] && ctrl[0] ? {2{x14[14 + s1 +: 7]}} : {2{(({(p1[17 + s0 +: 5] - (x11[21 -: 1] + p0[10])), (p1[14 + s1] & p1[7 + s0])} | p1[25 + s1 +: 6]) | x9[7 + s3])}});
  assign y1 = x8;
  assign y2 = {2{(x4[22] | (p3[17 + s2 -: 5] - x13))}};
  assign y3 = (!ctrl[1] || ctrl[0] && !ctrl[3] ? p1[9 +: 1] : x1[13]);
endmodule
