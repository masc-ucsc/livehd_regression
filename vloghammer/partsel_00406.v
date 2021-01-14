module partsel_00406(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [0:26] x4;
  wire [7:26] x5;
  wire signed [5:31] x6;
  wire [1:29] x7;
  wire [1:31] x8;
  wire signed [30:6] x9;
  wire [24:4] x10;
  wire signed [25:4] x11;
  wire signed [29:2] x12;
  wire signed [4:24] x13;
  wire [5:31] x14;
  wire [26:6] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [4:29] p0 = 33416969;
  localparam signed [28:5] p1 = 215067647;
  localparam [27:2] p2 = 64375488;
  localparam [0:24] p3 = 190545899;
  assign x4 = x2[17];
  assign x5 = {2{{2{x4[20]}}}};
  assign x6 = x1[11];
  assign x7 = (({2{p1[19 -: 4]}} & {2{((p0[12 -: 4] + (x6[23 -: 4] ^ x5[22 + s1 +: 3])) ^ (p0[12] - x2[22]))}}) - {{2{x2}}, (p0[12 -: 1] ^ ({2{x1}} + x4[8]))});
  assign x8 = ({2{({2{x4}} | ({2{p0[17 + s3 -: 6]}} & p3[22 + s3 -: 2]))}} ^ p1[30 + s1 -: 5]);
  assign x9 = p2;
  assign x10 = {2{p1[8]}};
  assign x11 = x10[10];
  assign x12 = (((x8 + {2{x1[10 + s3 +: 6]}}) - {2{x0[21 + s3 -: 8]}}) + (p1[11 + s3 -: 4] - x2[18 -: 4]));
  assign x13 = (({2{((x9[15 -: 4] | x2[4 + s0 -: 2]) & p0[16 + s3])}} | ((!ctrl[3] || ctrl[3] || ctrl[1] ? {2{p2}} : (x12[24 + s3 +: 3] & p3[11])) ^ p2[14 + s1])) | x10);
  assign x14 = (((!ctrl[2] && !ctrl[0] || ctrl[3] ? (ctrl[2] && !ctrl[2] || !ctrl[2] ? (p2[27 + s3 -: 5] | p1[28 + s2 -: 7]) : (p3[7 + s3] & p2[18])) : x0[9 +: 1]) & {2{{2{p3}}}}) & x6[16 + s0 -: 7]);
  assign x15 = p0;
  assign y0 = ({({x6[18 +: 3], x10[10]} ^ {2{((x13 - x9[16 + s0]) | (p3 & x6))}}), x7[18 +: 2]} + {(!ctrl[0] || ctrl[3] || !ctrl[2] ? (p3 + p2[17 +: 3]) : ({x6[24 + s0 -: 1], p3[16 +: 4]} ^ x4)), p2});
  assign y1 = p0[11 + s0 +: 4];
  assign y2 = (({{2{p1[13 +: 3]}}, x12[9 + s0]} ^ x14) + (p0 + x2[8 + s2]));
  assign y3 = (({(x0[17 -: 3] ^ ((p2[15 +: 1] + x12[14 + s3 -: 8]) & x9[22])), (x4[20 -: 2] | p2)} | (x2 ^ (ctrl[2] || !ctrl[0] && ctrl[0] ? {x13[27 + s2 -: 5], x9} : (p3[12 + s2 +: 4] | (((p0 ^ x9[5 + s1 +: 7]) ^ p3[7 + s2 +: 7]) | x13[21 -: 3]))))) | p3);
endmodule
