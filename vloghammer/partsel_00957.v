module partsel_00957(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [25:7] x4;
  wire [5:31] x5;
  wire signed [7:27] x6;
  wire signed [6:29] x7;
  wire signed [3:31] x8;
  wire signed [2:26] x9;
  wire signed [27:4] x10;
  wire [6:30] x11;
  wire [25:2] x12;
  wire signed [2:28] x13;
  wire [1:30] x14;
  wire signed [25:2] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [27:1] p0 = 306341504;
  localparam signed [4:26] p1 = 439976367;
  localparam [6:31] p2 = 413510354;
  localparam [1:31] p3 = 184591703;
  assign x4 = {2{{p0[17 +: 2], ({(((p1[12 + s0] + p2) - x3[12 +: 3]) - p0[17 +: 2]), p2[21 -: 2]} & (x0 | (p0[9] & x0[12 + s1 -: 6])))}}};
  assign x5 = ((!ctrl[2] || !ctrl[2] || !ctrl[0] ? p0[13] : x1[12 +: 4]) | x4);
  assign x6 = (ctrl[3] || ctrl[3] || !ctrl[1] ? p2[4 + s3] : {{2{((!ctrl[1] || ctrl[0] || !ctrl[2] ? p1 : x2) & (x1 - p0[24 + s1 +: 4]))}}, {((ctrl[0] && !ctrl[3] || !ctrl[2] ? x5[17 + s1 +: 4] : p2[22 + s0 +: 7]) | x4[9 + s2]), {(ctrl[1] && !ctrl[3] || ctrl[1] ? x0[6 + s1 +: 7] : p0), x5[14 + s2]}}});
  assign x7 = (x3[16 +: 2] ^ (((((p1[2 + s0 -: 2] | ((x0[17 + s0] - p0[14 -: 1]) + p0)) ^ p1) + {x0[8], x6}) & ((p2 ^ p2[15]) | p1[22 + s2 +: 7])) ^ p1[3 + s2 -: 7]));
  assign x8 = ((p1[16 -: 4] ^ {2{p3}}) & x3[9 +: 4]);
  assign x9 = {2{({2{({p3, p3[13 -: 3]} | (x6[22 + s0 -: 6] ^ ((p3[2 + s1 +: 7] - x2) | p0[5 + s2 +: 5])))}} & (!ctrl[1] || ctrl[0] || !ctrl[3] ? x1[8 +: 1] : ((!ctrl[2] || ctrl[2] && ctrl[3] ? x3 : p0[15 +: 2]) ^ (p3[16] & (((p0[10 +: 3] | (x6 & x7[8 + s0 -: 2])) + ((x2[20 -: 3] | x6[10 +: 1]) + x7[11])) - x3[9 + s1 -: 4])))))}};
  assign x10 = (p2[12 -: 2] + (!ctrl[3] && ctrl[2] || ctrl[0] ? p2[22] : x5));
  assign x11 = x2[12 + s1 -: 2];
  assign x12 = {(p1[22 + s2 +: 5] + {2{x9[16 +: 3]}}), ({2{((x11 ^ x8[29 + s1 +: 1]) - x0)}} ^ (({p1[9 + s0 -: 8], x10[18 +: 2]} & {2{p2[10 + s0]}}) | ((p1[9 + s2] & (x2 + x4[9 + s1])) - p3[17])))};
  assign x13 = p2;
  assign x14 = x11[5 + s2 +: 4];
  assign x15 = {2{p0[5 + s2 +: 7]}};
  assign y0 = {x2, p1};
  assign y1 = p1[20 -: 2];
  assign y2 = p2[10];
  assign y3 = x14[25 + s2 -: 3];
endmodule
