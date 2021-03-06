module partsel_00612(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [27:3] x4;
  wire [31:2] x5;
  wire signed [3:27] x6;
  wire signed [3:30] x7;
  wire [24:4] x8;
  wire signed [0:30] x9;
  wire signed [7:25] x10;
  wire [30:7] x11;
  wire signed [27:4] x12;
  wire [2:26] x13;
  wire signed [1:30] x14;
  wire [1:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:25] p0 = 303649326;
  localparam [24:6] p1 = 802988861;
  localparam signed [2:30] p2 = 732947587;
  localparam [24:4] p3 = 829584619;
  assign x4 = x1[16 +: 4];
  assign x5 = (!ctrl[3] && !ctrl[1] && ctrl[3] ? x4[16 -: 2] : p2);
  assign x6 = x4;
  assign x7 = (((p1 + p0) & {(p3[9 +: 4] + (x4 ^ p3)), (x2[6 + s3 -: 1] - {x1[28 + s3 -: 7], x1[17]})}) - x4[16 + s3 -: 6]);
  assign x8 = {(!ctrl[1] && !ctrl[3] || ctrl[1] ? ((x2 + {x3[18 + s2], p2[21]}) + {2{{2{p2[7 + s0]}}}}) : (ctrl[1] || !ctrl[0] && ctrl[1] ? ((x1 - x4[28 + s2 -: 8]) | {2{x1[17 + s3 +: 6]}}) : ((!ctrl[2] && !ctrl[3] && !ctrl[3] ? x0[18 +: 3] : p1[15 -: 1]) ^ {(x7[14 + s2 +: 1] + x0), ((p0[6 + s0 +: 5] + p2[12 + s3]) + ((x4[11] & (p2[14 +: 1] - x3)) ^ (x6[28 + s1 +: 3] & x2)))}))), ((({2{p1[31 + s0 +: 3]}} & x3[13 + s1 -: 4]) ^ {2{p1[17 -: 4]}}) ^ p2)};
  assign x9 = p1[23];
  assign x10 = x5;
  assign x11 = {2{x3[1 + s0 +: 3]}};
  assign x12 = {2{(x1[15 + s2 -: 4] | (ctrl[1] && ctrl[0] || ctrl[0] ? (ctrl[3] || ctrl[0] && !ctrl[1] ? p2[6 + s1 +: 5] : ((p3[14 -: 2] ^ x5[7 + s3 +: 8]) - x8[15 + s0 -: 4])) : (p1[21 -: 1] - (ctrl[0] && !ctrl[3] || !ctrl[0] ? x0[18 -: 2] : p0[16 + s1]))))}};
  assign x13 = {x8[23 -: 1], (x3 - (p1[17] + p2))};
  assign x14 = p3[18 -: 1];
  assign x15 = (ctrl[0] && ctrl[2] && ctrl[3] ? x9[18 +: 1] : p3[11 + s3]);
  assign y0 = x1[10 + s2];
  assign y1 = {2{x1}};
  assign y2 = (p3[8] | {2{{(x3[10 + s3] - (x3[20 -: 4] & x9[14 + s0 +: 6])), ((p0[15 + s1] + x4[18 -: 1]) & {2{p0[13 +: 1]}})}}});
  assign y3 = x15;
endmodule
