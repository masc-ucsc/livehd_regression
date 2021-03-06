module partsel_00953(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [4:25] x4;
  wire signed [5:24] x5;
  wire [5:28] x6;
  wire signed [27:3] x7;
  wire signed [29:4] x8;
  wire signed [31:0] x9;
  wire signed [28:3] x10;
  wire [30:3] x11;
  wire [4:29] x12;
  wire [6:25] x13;
  wire [1:26] x14;
  wire signed [25:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:0] p0 = 451916446;
  localparam [28:7] p1 = 38989674;
  localparam [3:30] p2 = 673356877;
  localparam [3:31] p3 = 666866846;
  assign x4 = x1[11 +: 4];
  assign x5 = ((((p1 - (p3[14 + s0] ^ p3[14 + s2 -: 5])) + ((p3[5 + s3 -: 5] & p0) ^ (p2[5 + s0] + x3))) + ((!ctrl[2] || ctrl[2] && !ctrl[0] ? {2{x4[23]}} : x2[19 + s2]) | p1[18 -: 1])) ^ {2{(((x1[23 -: 3] + (p2 | ((x1[11 + s1 -: 4] | p1[17]) & x2))) & (x3[4 + s3] ^ x3[18 + s3 +: 6])) - x4[15])}});
  assign x6 = (ctrl[0] || !ctrl[0] || ctrl[2] ? {(!ctrl[3] || !ctrl[1] && ctrl[2] ? (x3[17 -: 4] ^ {2{x3[24 + s1 +: 6]}}) : {2{(p1 + x4[18 -: 2])}}), p2[19 + s3]} : {{2{(!ctrl[0] || !ctrl[3] || ctrl[2] ? (p1 | p1[12 -: 3]) : (x2[18] + x0))}}, (!ctrl[1] || ctrl[1] || !ctrl[1] ? {(ctrl[2] || !ctrl[1] || ctrl[2] ? ((x3 ^ x2[21 -: 4]) & x4[13 -: 1]) : p1[0 + s2 +: 1]), x5[14 +: 2]} : x5)});
  assign x7 = {2{p3[27 + s3 +: 8]}};
  assign x8 = p2[22 -: 1];
  assign x9 = (!ctrl[1] || ctrl[1] && !ctrl[3] ? ((ctrl[0] || ctrl[3] || ctrl[3] ? ((x0[13 + s0 -: 5] & p2) ^ p2) : {2{(ctrl[0] || ctrl[0] || ctrl[3] ? x5 : p2[17 + s3 +: 5])}}) & ({2{p1}} - {(x1[24 + s2 +: 1] & p1[21 + s2 +: 2]), p0[20 + s2 +: 4]})) : x1[19]);
  assign x10 = p0[11 + s0 +: 3];
  assign x11 = {2{(!ctrl[3] && ctrl[1] && !ctrl[0] ? (!ctrl[1] || !ctrl[2] && !ctrl[2] ? {x9[9 + s3 +: 2], (ctrl[2] || !ctrl[0] || !ctrl[2] ? x6[19] : (x9[12 -: 1] & p1[4 + s0 +: 3]))} : (p0 ^ x5[17 -: 4])) : {p2[11 + s3], ({2{p0}} & ((p3[13 +: 3] + p2[11 +: 4]) - p0))})}};
  assign x12 = (((!ctrl[0] || !ctrl[0] || !ctrl[1] ? p2[17 + s3 +: 8] : x9) & {2{((ctrl[2] || ctrl[2] || ctrl[0] ? x6[10 +: 3] : ((p2 & x6[22 -: 1]) ^ x0[9 + s1 -: 5])) ^ (ctrl[1] && ctrl[2] || !ctrl[3] ? p1[13 -: 2] : x4[13 + s1]))}}) ^ {2{{{(!ctrl[0] || ctrl[3] || !ctrl[1] ? x6[20 + s3 +: 7] : (p3[15 +: 4] + x4)), {x7[23 + s0 -: 7], p1}}, {{2{p1[7 + s3]}}, x4[16 -: 3]}}}});
  assign x13 = {2{x2[22]}};
  assign x14 = {2{({x1[20 -: 3], ((p2 + x6[17 +: 4]) & {2{p1[15]}})} ^ ((!ctrl[2] && !ctrl[2] && ctrl[2] ? p3 : {x0, x5}) - ((x1[19 -: 2] - (x6[12 -: 1] + x7[12 +: 3])) + (x10 + x13[16 +: 3]))))}};
  assign x15 = {2{{2{{2{p1[7 + s1 -: 1]}}}}}};
  assign y0 = x8;
  assign y1 = p3[15 + s2 +: 8];
  assign y2 = x3[5 + s2];
  assign y3 = x13[22];
endmodule
