module partsel_00261(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [27:1] x4;
  wire signed [26:1] x5;
  wire [4:26] x6;
  wire signed [24:0] x7;
  wire [7:26] x8;
  wire [0:25] x9;
  wire signed [2:28] x10;
  wire signed [29:1] x11;
  wire [5:31] x12;
  wire signed [7:31] x13;
  wire [5:25] x14;
  wire [0:26] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [24:3] p0 = 325316538;
  localparam [30:2] p1 = 846840085;
  localparam signed [6:29] p2 = 560811930;
  localparam signed [6:25] p3 = 777367131;
  assign x4 = x2[25 + s3 -: 3];
  assign x5 = (({{{2{x4[19 + s2]}}, {2{p3[13 + s1]}}}, p2} & {(!ctrl[3] || !ctrl[1] || !ctrl[0] ? (x2[21] - (x1 | p2[14 + s1])) : (x1[13 -: 3] - x1[23 + s1 +: 2])), x0[15 + s2]}) | (ctrl[0] || ctrl[0] || ctrl[1] ? (!ctrl[2] || !ctrl[3] || !ctrl[0] ? (p0 & (x1[20] | x3[5 + s3])) : (ctrl[2] || !ctrl[1] && ctrl[0] ? (ctrl[3] || ctrl[0] && ctrl[2] ? x1[15 + s1 +: 6] : p3[8]) : (x1 ^ (x1 | (p3 ^ p0[11]))))) : ((!ctrl[2] && ctrl[0] && ctrl[3] ? x4[22] : x2[30 + s1 +: 7]) & (x2 & {2{p0[31 + s1 +: 7]}}))));
  assign x6 = x0[16 -: 4];
  assign x7 = x0;
  assign x8 = (!ctrl[1] && !ctrl[2] || !ctrl[1] ? x6[17 + s1 +: 3] : x3[14 -: 1]);
  assign x9 = p2[12 +: 2];
  assign x10 = p1;
  assign x11 = x3;
  assign x12 = {{2{{2{(p1[19 -: 1] ^ (p0[21 + s1 -: 3] & p3[23 + s1 -: 5]))}}}}, {2{({2{p3[16 + s2 -: 7]}} + p3[9 + s0])}}};
  assign x13 = x7[19 +: 1];
  assign x14 = (p2[18] - {p0[14 +: 3], (!ctrl[3] || !ctrl[3] || ctrl[3] ? (x7[7 + s0] & {2{(p3 + x11[16 + s1 +: 7])}}) : (p0 + ((p1[10 + s3] & (p2[19] ^ x11[20 + s3 -: 3])) - (p3[23 + s3 -: 6] & (x9 | x2[16 -: 2])))))});
  assign x15 = {2{x14[14 -: 1]}};
  assign y0 = {2{x11[16 + s3]}};
  assign y1 = {{x9[4 + s1 +: 5], (((x4[23 -: 4] - x3[31 + s3 -: 2]) ^ (!ctrl[2] && !ctrl[1] || !ctrl[0] ? x14[19 -: 2] : ((x11[19 +: 2] | x1[26 + s2 +: 5]) | p1[17 + s2 -: 1]))) + p0[11 +: 3])}, {((((p0[12 -: 3] & p3[11]) ^ (p2 | p0)) - ((((p0 + p2) | p0) - x6[13 +: 1]) + p1[19 + s2 +: 5])) ^ {2{{2{p0[25 + s2 +: 2]}}}}), p2[22]}};
  assign y2 = ((({2{(p3[13 + s1] ^ x15[15 -: 1])}} - ((!ctrl[1] && !ctrl[2] && ctrl[2] ? x10 : p2[19 +: 1]) + {(p0[16 -: 1] | x12[12]), x4})) + (x9 ^ x9)) - {p0, (x9[22] ^ {2{x1[20 -: 2]}})});
  assign y3 = x15[16 + s0 +: 2];
endmodule
