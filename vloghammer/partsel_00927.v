module partsel_00927(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [25:7] x4;
  wire [6:25] x5;
  wire [0:31] x6;
  wire signed [0:30] x7;
  wire signed [0:30] x8;
  wire signed [0:26] x9;
  wire signed [27:3] x10;
  wire signed [2:25] x11;
  wire signed [1:27] x12;
  wire [26:4] x13;
  wire signed [2:25] x14;
  wire signed [24:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [24:6] p0 = 195455092;
  localparam signed [5:26] p1 = 479720660;
  localparam signed [5:31] p2 = 326392932;
  localparam signed [28:3] p3 = 727557069;
  assign x4 = p1;
  assign x5 = x3[0 + s0 +: 6];
  assign x6 = (!ctrl[2] || !ctrl[2] && !ctrl[0] ? x3[12] : ((((!ctrl[0] || !ctrl[2] && ctrl[2] ? x2 : p2[11 +: 2]) + x4) | {x0[12 + s3 -: 6], {2{p0[24 + s3 -: 3]}}}) - (!ctrl[1] && !ctrl[1] && ctrl[1] ? ((x4[12] | p2[15]) | p3[8]) : p2[8 + s0])));
  assign x7 = {2{{2{x2}}}};
  assign x8 = {(p0[19 +: 1] - x1[17 + s0]), {2{(p1[7 + s1] ^ (x6[11 + s2] | p3))}}};
  assign x9 = {2{p1}};
  assign x10 = (p3[2 + s0 +: 3] + x6[21]);
  assign x11 = p3[12 -: 3];
  assign x12 = (!ctrl[2] || !ctrl[3] && ctrl[3] ? (({2{x0[20]}} - (x11[16 + s2] & {2{p0[19 +: 2]}})) & p0[13 -: 2]) : x5[15]);
  assign x13 = (ctrl[2] && ctrl[3] || !ctrl[1] ? x3[14 -: 4] : (p0[8] & {2{{2{(x9 | x6)}}}}));
  assign x14 = (x3 + x6[18 +: 1]);
  assign x15 = p0[22 + s1 +: 1];
  assign y0 = {2{{p0[25 + s2 -: 4], (!ctrl[2] || !ctrl[2] || ctrl[3] ? (((p3 | (p3 | x4[20])) | p2[20]) ^ {p1, p3[13 -: 4]}) : p3)}}};
  assign y1 = (((p0[9 +: 4] - ((p0[28 + s0 +: 2] & x2[17 +: 4]) | (x5 & p3[9 +: 2]))) - x8[13 -: 4]) & p2[16 +: 2]);
  assign y2 = {p0[19 -: 2], (x11[16 +: 4] + {2{{{(p3[21 -: 1] ^ p1[9]), p0[9 + s1 -: 8]}, (p3 + p1[21 -: 1])}}})};
  assign y3 = p2[5 + s2];
endmodule
