module partsel_00936(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [31:0] x4;
  wire [3:29] x5;
  wire [5:31] x6;
  wire [6:26] x7;
  wire signed [31:3] x8;
  wire signed [24:7] x9;
  wire [28:3] x10;
  wire signed [26:5] x11;
  wire signed [2:24] x12;
  wire [24:6] x13;
  wire [0:31] x14;
  wire signed [4:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:25] p0 = 133736849;
  localparam signed [31:0] p1 = 716783164;
  localparam signed [2:29] p2 = 475530727;
  localparam [6:31] p3 = 682219761;
  assign x4 = ({p3[25 + s0 +: 3], (x0[21 -: 2] ^ {(x3[17 + s0] + p1), {p1[29 + s0 -: 1], p3[9 + s0 +: 5]}})} | (p0 | p3[29 + s3 -: 2]));
  assign x5 = {2{(p3[19 + s3 +: 8] ^ (x4[11 +: 4] - p3))}};
  assign x6 = p2[9 +: 2];
  assign x7 = (x3[22 -: 2] | {x4[13], x4[14 + s0 -: 5]});
  assign x8 = {(ctrl[2] && ctrl[2] && !ctrl[2] ? (((x3[23] ^ x5) + p1[16 + s2 -: 4]) & (x1[15 + s0] ^ {x0[7 + s3], ((x3[11 + s1 +: 5] + p0[14 +: 1]) - p0[24 + s0 -: 5])})) : ((ctrl[1] || ctrl[1] && !ctrl[3] ? x7[17 + s1] : p1) ^ (p3 | (x2[10 + s0] - x6[12 +: 4])))), p2[14 + s2]};
  assign x9 = {p1, x5[21 -: 3]};
  assign x10 = x4[8];
  assign x11 = {p0, ((x1 + x2[15 +: 3]) & (ctrl[0] || !ctrl[3] || !ctrl[3] ? (p2[18] ^ ((x0 + (p1[13 + s3] + x9)) ^ x3)) : x5[18 +: 4]))};
  assign x12 = {2{x7[17 +: 2]}};
  assign x13 = ((({p1[22 + s3 +: 6], (x7 + x0)} + p3[11]) ^ p3[17 + s2 -: 3]) ^ {((p1[9 +: 3] - x2[17]) | {x9[20 + s1 +: 4], {2{(p2[4 + s3 +: 5] | p2[13 +: 1])}}}), p1[6 + s3 +: 4]});
  assign x14 = (p0[10 + s1 -: 1] ^ x11[8 +: 1]);
  assign x15 = x12[18 + s2 -: 2];
  assign y0 = {2{((!ctrl[1] || !ctrl[3] && !ctrl[3] ? p3[15 -: 1] : ((x15[17 -: 2] | p1[17 -: 2]) ^ x3[17])) & {p2[20 -: 2], (!ctrl[0] && ctrl[2] || ctrl[3] ? p1[17] : (x4 | p0[28 + s0 +: 4]))})}};
  assign y1 = {p0[11 +: 3], ({{2{p3}}, x1[26 + s2 -: 2]} & p0[25 + s0 +: 5])};
  assign y2 = (({(ctrl[3] || ctrl[0] && ctrl[0] ? p3[13 -: 1] : x10[6 + s3 +: 4]), (p2[4 + s2] & ((x4[12 -: 1] ^ (x6[4 + s1] | (((p3 + (p1[2 + s1 -: 6] ^ (x3 + p2[19 + s3]))) & x3[22]) ^ p0[20 -: 1]))) ^ p3))} + x15) + {2{{p2[20 + s3 -: 5], ((x8[30 + s2 -: 4] + p1) - (!ctrl[0] && ctrl[3] && ctrl[2] ? p3 : p0))}}});
  assign y3 = ({(((x10[21 -: 4] - (x4[14 + s1 +: 8] & ((p1[11] - x9[14 + s2 +: 6]) ^ (p2[8 + s0 -: 3] ^ x11)))) & x0[2 + s2 -: 7]) & p1), p3[1 + s0 -: 3]} ^ (x9[18 +: 2] ^ {({2{(p2 - x10[16 -: 4])}} ^ (x14 - (p3[26 + s1 -: 2] | x3[17 -: 1]))), {x8[11 +: 3], p0}}));
endmodule
