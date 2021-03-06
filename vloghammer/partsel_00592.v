module partsel_00592(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [24:7] x4;
  wire [5:29] x5;
  wire [28:7] x6;
  wire [29:7] x7;
  wire [31:3] x8;
  wire signed [31:6] x9;
  wire [4:28] x10;
  wire signed [27:1] x11;
  wire signed [25:7] x12;
  wire signed [5:24] x13;
  wire [25:3] x14;
  wire [4:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:30] p0 = 692365258;
  localparam [31:1] p1 = 398863416;
  localparam signed [31:2] p2 = 82904584;
  localparam signed [26:1] p3 = 286916770;
  assign x4 = p1[8 +: 4];
  assign x5 = (ctrl[1] && ctrl[0] && ctrl[3] ? p1[14 + s2] : x2[13 -: 2]);
  assign x6 = {{{((ctrl[2] || !ctrl[0] && ctrl[2] ? x0[27 + s1 -: 8] : x0[13 + s2]) | {2{x5[22 + s3 -: 7]}}), {(p0[27 + s1 -: 7] + p1[14 -: 3]), p2[5 + s3 +: 5]}}, (x4[18 + s0] ^ (x2[14 + s0 +: 2] & p0[10 +: 3]))}, ({x3[17 + s3 -: 4], ((p0[19 +: 3] - p2) | (!ctrl[1] && ctrl[0] || !ctrl[0] ? p1[14 + s2] : (p0[16 + s3] ^ p0[1 + s1 -: 8])))} & ((ctrl[0] || !ctrl[1] || !ctrl[3] ? {x1[12 -: 1], ((p0[15 +: 2] - p3[25 + s3 +: 3]) | x4[11])} : p2[23 -: 1]) + (x1 & (p0[19 + s1 -: 7] - x3))))};
  assign x7 = ({2{(((x4[12] ^ (p2[12 + s1] ^ p3[25 + s0 +: 4])) & (p3 | p1[18 -: 4])) - p2[12 +: 3])}} | {{x4[22 + s3 +: 7], (p0[19] + x6[14 -: 2])}, (p3[29 + s3 +: 7] + x1[11])});
  assign x8 = x5;
  assign x9 = {(p0[14 -: 3] - (!ctrl[0] || ctrl[0] || !ctrl[3] ? p0 : x4[4 + s3 +: 3])), p1[11 + s2 -: 8]};
  assign x10 = (ctrl[0] && !ctrl[1] && !ctrl[3] ? (x3[12 -: 2] & x2[10 +: 4]) : (((p2[28 + s1 -: 7] + {2{x6[7 + s1]}}) + {(x6[12 + s0 -: 2] | x1[0 + s2 +: 7]), {(x9 | p2[16 +: 2]), p2[25 + s0 +: 2]}}) + p3[19 +: 1]));
  assign x11 = x7;
  assign x12 = p0[27 + s0 -: 8];
  assign x13 = (x6[21 -: 4] | ({2{x0}} ^ (p0[15 -: 4] ^ {(x0[17 + s1] | p2[12 -: 4]), p3})));
  assign x14 = p3;
  assign x15 = ({2{p3[8 + s1 -: 8]}} + (x5[3 + s1 -: 1] - x3));
  assign y0 = p0;
  assign y1 = {p3[23], p0[16 -: 2]};
  assign y2 = (p1[18] + x10[17 + s1]);
  assign y3 = x7;
endmodule
