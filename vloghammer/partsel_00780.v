module partsel_00780(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [24:2] x4;
  wire signed [5:24] x5;
  wire signed [6:28] x6;
  wire [25:1] x7;
  wire signed [4:28] x8;
  wire [31:7] x9;
  wire signed [31:1] x10;
  wire [0:25] x11;
  wire [7:30] x12;
  wire signed [30:3] x13;
  wire signed [24:3] x14;
  wire signed [24:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [31:7] p0 = 67548940;
  localparam [6:30] p1 = 353291004;
  localparam [6:25] p2 = 252307802;
  localparam signed [31:7] p3 = 34525487;
  assign x4 = (x1 & {2{x3[15 +: 2]}});
  assign x5 = {2{((p3[13 +: 2] | ({2{p0[15 +: 2]}} ^ (x1[19 -: 1] - x0[14]))) - x2)}};
  assign x6 = (((!ctrl[1] && !ctrl[2] || ctrl[0] ? x5[19 +: 3] : (x2 + {x5[15 +: 3], x1[23 -: 4]})) | p3) + x5[5 + s2 -: 7]);
  assign x7 = ((p0 & x1) | x4[4 + s2]);
  assign x8 = ((ctrl[0] && ctrl[0] || !ctrl[0] ? x3[4 + s2] : (x7 ^ (!ctrl[1] && !ctrl[3] || ctrl[0] ? (x2[17 +: 4] & (((x1[17 -: 1] | (p1[16] + p3)) | (p0[14] ^ p2[16 + s2])) & x7[7 + s1 -: 2])) : p2[12]))) + ((!ctrl[3] || !ctrl[2] && !ctrl[0] ? {2{(p0[30 + s0 -: 4] & p3[4 + s0 +: 3])}} : x5) ^ {2{({2{(p3[5 + s2 +: 8] & p2[19])}} + {p0[15 + s0], p1[8 +: 2]})}}));
  assign x9 = ({({2{x1[19]}} & p2), p3[1 + s0 +: 7]} & {2{p3[18 +: 1]}});
  assign x10 = (!ctrl[1] && !ctrl[1] || ctrl[2] ? x1[10 + s1 +: 4] : x1);
  assign x11 = ((((x7[2 + s3 -: 5] - x0[22]) | p1) + (p3[9] & x0[28 + s1 -: 3])) & x3[28 + s1 -: 7]);
  assign x12 = {2{p2}};
  assign x13 = (ctrl[0] && ctrl[3] && ctrl[2] ? x8 : {2{p0[9 + s0]}});
  assign x14 = (ctrl[1] || ctrl[3] || !ctrl[0] ? p0[14 + s3 +: 2] : ((!ctrl[3] || ctrl[1] || !ctrl[1] ? ((p2[15 +: 2] + p0) + (ctrl[2] || ctrl[3] || ctrl[1] ? p0[18] : p3[11])) : (x1[20 -: 2] | (x4[16 -: 3] + p2[16]))) - x2[23 -: 4]));
  assign x15 = x11[13 + s2 -: 1];
  assign y0 = ((x3[12 + s0] ^ x3[15 + s1 +: 8]) ^ x15);
  assign y1 = (x7 ^ {(((p3[12 + s2 +: 7] - p1[16]) & ((x14[29 + s3 -: 5] | x8[19 +: 2]) ^ (x15 - x8[21]))) & (p2 | (p2[9 + s1] & (p0[13 + s1 -: 5] - x9)))), (x0[18 -: 4] + ((p0[14 + s1 +: 6] + (x10 | p2[12 + s3 +: 3])) ^ p2[16 -: 1]))});
  assign y2 = x7[14 -: 2];
  assign y3 = {(((p1 ^ (x9[22] - x11[15 -: 2])) & p0) - x14[17 -: 2]), x4};
endmodule
