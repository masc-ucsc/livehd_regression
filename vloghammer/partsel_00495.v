module partsel_00495(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [6:29] x4;
  wire [1:24] x5;
  wire [7:27] x6;
  wire signed [1:26] x7;
  wire [29:3] x8;
  wire signed [4:27] x9;
  wire signed [31:3] x10;
  wire [5:31] x11;
  wire [6:24] x12;
  wire [30:2] x13;
  wire [4:30] x14;
  wire [7:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:5] p0 = 272311320;
  localparam signed [7:31] p1 = 941757548;
  localparam signed [31:0] p2 = 290146805;
  localparam [7:24] p3 = 692633165;
  assign x4 = p0[10 +: 4];
  assign x5 = x3[17 + s0];
  assign x6 = {2{x3}};
  assign x7 = (x0 + (ctrl[1] || !ctrl[3] && !ctrl[0] ? x0 : ((x0 | {p0[8 + s2 -: 1], (p1[19 -: 1] + (x3[22 -: 2] - x4[21 + s0 +: 1]))}) & p2[17 + s1])));
  assign x8 = {(!ctrl[3] || ctrl[2] || !ctrl[0] ? (({2{p3[28 + s3 +: 1]}} - x6[19 + s2 +: 6]) - {2{{2{p3[6 + s3]}}}}) : ({{2{p2[14]}}, {2{x7}}} + ({2{x1[15 -: 1]}} + {(x6[22 + s1 +: 4] - p2[31 + s1 +: 1]), p1[15 + s0]}))), p1[10 + s0]};
  assign x9 = p0;
  assign x10 = ((x0[17 +: 3] & (p0[12 + s1] - (x1[15 + s2] | p0[23 -: 2]))) ^ (p3 + p1[19 -: 1]));
  assign x11 = x10;
  assign x12 = (ctrl[1] && !ctrl[3] && !ctrl[2] ? (!ctrl[1] && ctrl[2] || ctrl[1] ? x4[13] : x5) : (!ctrl[1] || !ctrl[3] && !ctrl[0] ? p0 : ((p0[18] + (p0[10 +: 2] ^ x9[18 + s3])) ^ (p2 | p1))));
  assign x13 = {2{(x11 - {x6[23 + s2 -: 2], p0[11 +: 4]})}};
  assign x14 = ({2{{2{((p3 - ((p0[7 + s3] + x6[13 +: 3]) | x4[16 -: 4])) + x6[21 + s3 -: 1])}}}} & ((ctrl[0] || ctrl[1] || !ctrl[1] ? x6[31 + s3 +: 7] : (p0[4 + s3 -: 5] ^ x9[19 + s3])) | {(!ctrl[2] || ctrl[0] && !ctrl[0] ? (!ctrl[2] || !ctrl[1] || !ctrl[2] ? p0[8 + s3] : p3[15 + s1 -: 5]) : x4), p2}));
  assign x15 = (ctrl[1] || ctrl[1] && ctrl[2] ? x11[18 + s1] : {(!ctrl[1] && !ctrl[0] && !ctrl[0] ? (!ctrl[2] || ctrl[1] || !ctrl[2] ? p3 : x4) : x0[15 +: 4]), {2{(!ctrl[0] && !ctrl[2] && !ctrl[3] ? (p1[11 +: 2] - (x5[11] & ((x11 + p3[7 + s1]) & x14))) : (!ctrl[0] || ctrl[2] || ctrl[3] ? ((p1[16 +: 1] & (x13 + p2)) ^ p1[14]) : p0[17 +: 1]))}}});
  assign y0 = {2{((x7[15 + s3] - x4[30 + s0 +: 4]) & (!ctrl[1] && ctrl[1] || ctrl[2] ? p0[10 + s1 +: 5] : {2{p1}}))}};
  assign y1 = x6;
  assign y2 = p2;
  assign y3 = x13[12 + s1];
endmodule
