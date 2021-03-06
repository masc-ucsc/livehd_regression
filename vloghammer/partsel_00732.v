module partsel_00732(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [1:28] x4;
  wire signed [24:7] x5;
  wire signed [30:3] x6;
  wire [27:2] x7;
  wire signed [1:26] x8;
  wire [28:6] x9;
  wire signed [27:0] x10;
  wire signed [3:24] x11;
  wire signed [27:3] x12;
  wire signed [0:24] x13;
  wire signed [6:26] x14;
  wire [1:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [24:0] p0 = 946263912;
  localparam signed [5:30] p1 = 622873502;
  localparam [6:30] p2 = 569635663;
  localparam signed [0:30] p3 = 206264029;
  assign x4 = ((x0 - {{((x3 - p0[23]) - x2[8 + s2]), (!ctrl[3] && !ctrl[3] || !ctrl[0] ? x0 : x2[8 +: 2])}, {x3[12 + s0 -: 7], x0[31 + s3 -: 4]}}) & {2{(ctrl[2] || ctrl[2] && ctrl[3] ? p2 : {p3, x0[18]})}});
  assign x5 = ((x4[8 +: 3] + x2[16 + s2 +: 3]) & ((x0[23 -: 2] | ({p1, x1[22]} - (x0[8 +: 1] | p0[9 + s3 -: 5]))) - ({p3[23], x4[13 + s1]} - {2{p0[16 + s1 -: 6]}})));
  assign x6 = x5[18 -: 2];
  assign x7 = {x6[10 +: 1], (((x6 - p3[13 +: 1]) - p0[16 + s1]) + p0)};
  assign x8 = p3[19 + s2];
  assign x9 = {2{{2{p0[0 + s2 -: 5]}}}};
  assign x10 = (x9 ^ x0);
  assign x11 = {{2{(!ctrl[1] || ctrl[1] || ctrl[0] ? p3[13 +: 1] : p3[13 +: 2])}}, (p1[23 + s0 -: 8] + {p2[17 + s2], {2{x10[10 + s1 -: 1]}}})};
  assign x12 = p1;
  assign x13 = x11[1 + s0 +: 1];
  assign x14 = p3[17];
  assign x15 = x2[26 + s1 +: 4];
  assign y0 = x10;
  assign y1 = {{({x0[22], p0[2 + s3 -: 4]} | ((x1[20 -: 1] + p0[19 +: 3]) | x8[20 -: 4])), ({2{(!ctrl[1] || ctrl[0] && ctrl[3] ? p1[21 -: 3] : (p2[13] & x14))}} & {(ctrl[0] || !ctrl[3] && ctrl[1] ? (x15 | p3[13 + s0]) : (x13 + ((p2[4 + s3] + p1[14 +: 1]) & (p1[8] + p1[17 +: 1])))), (p0[15 -: 1] & x3[18 + s3 +: 3])})}, {p0, {x5, x5}}};
  assign y2 = x2;
  assign y3 = ({p2, {2{{p3, {2{p1[16]}}}}}} & (!ctrl[1] && !ctrl[2] && !ctrl[1] ? (x1 ^ {x5[16 -: 4], {2{p3}}}) : x8[18 +: 3]));
endmodule
