module partsel_00046(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [31:5] x4;
  wire signed [3:24] x5;
  wire signed [31:2] x6;
  wire signed [4:30] x7;
  wire signed [24:4] x8;
  wire signed [26:7] x9;
  wire [30:0] x10;
  wire [25:4] x11;
  wire [25:2] x12;
  wire [25:3] x13;
  wire signed [31:6] x14;
  wire [28:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:31] p0 = 669728076;
  localparam signed [30:5] p1 = 519611467;
  localparam signed [25:6] p2 = 49911258;
  localparam signed [3:27] p3 = 825748301;
  assign x4 = (p3[16 -: 3] - (x2[13 -: 3] | (!ctrl[1] || !ctrl[2] && !ctrl[3] ? p1[23 + s1 +: 5] : (p2[8 + s0] - x0[30 + s2 -: 8]))));
  assign x5 = p2;
  assign x6 = x2[9 + s2 -: 2];
  assign x7 = x4[7 + s1];
  assign x8 = x5[17 +: 1];
  assign x9 = ((({x2[6 + s1 -: 6], x4[19 + s1]} | {x4[6 + s2 -: 1], (x5[19] + x7)}) - {((!ctrl[1] || !ctrl[0] && ctrl[2] ? (p3[13] | p0[5 + s3 +: 7]) : x6[18]) - ((p1 + x8[14 + s3 +: 7]) ^ (x2[15] | (p2[15 -: 1] | (p1[9 +: 3] & x0))))), {2{x7[17 +: 1]}}}) | p0[11]);
  assign x10 = {((((p3 + p1[15 + s1]) ^ (!ctrl[3] && !ctrl[2] || ctrl[0] ? x8[5 + s1] : (p0 ^ x3[16 + s2]))) ^ {2{x9}}) | ({(x4[29 + s1 +: 3] & (x8 ^ p2[20 + s2 -: 3])), p0[5 + s1 +: 6]} | (x0 | x9[12 + s2]))), p2[4 + s3 -: 8]};
  assign x11 = ((x0[9] | (ctrl[1] && !ctrl[0] || !ctrl[1] ? ((p3[29 + s0 +: 3] | x3[27 + s3 +: 3]) ^ (x0[18] & p3[19 -: 2])) : (p0[16 +: 1] ^ (x1[13 +: 4] - x7[22])))) ^ x10);
  assign x12 = (ctrl[1] && ctrl[3] && ctrl[1] ? x8[31 + s1 -: 5] : (!ctrl[3] || !ctrl[2] || ctrl[0] ? {2{p3[13 -: 2]}} : p2));
  assign x13 = (ctrl[1] || ctrl[0] || !ctrl[2] ? x8[19 + s0 -: 2] : (p0[19 + s1] & (p3[19 +: 1] + {(x12[20 -: 1] & p2[10 +: 1]), p3})));
  assign x14 = {x3, p1};
  assign x15 = p0[19 -: 1];
  assign y0 = {2{({2{(!ctrl[3] && !ctrl[0] && !ctrl[3] ? p3[13 + s2] : x6[21 -: 4])}} & ((ctrl[3] || ctrl[2] || !ctrl[1] ? x0[9] : (((p1[19 -: 2] & x5[11 + s1]) + x9[31 + s0 -: 7]) ^ p0)) & x14[23 -: 2]))}};
  assign y1 = {2{(({2{(x12[31 + s2 -: 4] - p2)}} ^ {2{x11[6 + s1]}}) & x14)}};
  assign y2 = {(((p2[1 + s0 +: 2] & {2{p2[8 +: 2]}}) - (p3[14] & (!ctrl[0] || !ctrl[0] || ctrl[3] ? ((p1 + p3[20 + s2 -: 7]) & (x15 | x5[7 + s1])) : (p0 ^ p0[18 +: 1])))) + {2{((!ctrl[2] || ctrl[2] && !ctrl[0] ? x3[12 + s0] : x13[19 + s3]) ^ (x12[22 -: 3] - x6))}}), (!ctrl[3] && ctrl[3] || ctrl[1] ? {x11[16 -: 3], p3[11 + s3]} : p2[10])};
  assign y3 = x8[17 -: 2];
endmodule
