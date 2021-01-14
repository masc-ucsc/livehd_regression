module partsel_00387(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [2:25] x4;
  wire signed [5:26] x5;
  wire [29:6] x6;
  wire [2:31] x7;
  wire [6:24] x8;
  wire signed [7:27] x9;
  wire signed [5:27] x10;
  wire [30:1] x11;
  wire [7:28] x12;
  wire signed [26:5] x13;
  wire signed [6:27] x14;
  wire [24:0] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [0:28] p0 = 398040617;
  localparam [25:6] p1 = 417207150;
  localparam signed [25:4] p2 = 242967429;
  localparam [2:24] p3 = 622272159;
  assign x4 = p1[20];
  assign x5 = x3[3 + s2 +: 5];
  assign x6 = p0[11];
  assign x7 = p0[27 + s2 -: 8];
  assign x8 = p2[15];
  assign x9 = ({2{p2}} - x6[8 + s3 -: 3]);
  assign x10 = (p3[15] | ({2{p3}} | (((x8[15] ^ x1[19 + s0]) & x6[19 +: 3]) + {{p0[19 -: 1], x8[13 -: 1]}, (x1[24 + s1 +: 3] & (p1[15 + s0] & x3[13 + s2]))})));
  assign x11 = (!ctrl[1] && !ctrl[0] && ctrl[3] ? {2{((!ctrl[1] || ctrl[3] || !ctrl[2] ? p3 : x4[25 + s3 +: 5]) & {p3[16 -: 3], x2[18 +: 2]})}} : ({x3[15 + s2], (x3[12 -: 1] - p1[9 + s3 -: 6])} + p0[5 + s1]));
  assign x12 = x3[8 + s3];
  assign x13 = {2{{(({2{p3[30 + s0 -: 7]}} ^ p0[16 -: 1]) | ({x11[13 + s2 +: 7], x12[13 + s2]} ^ x1[7 + s3])), {2{(!ctrl[3] && !ctrl[0] || !ctrl[3] ? {2{p3[13]}} : (p2[21 -: 1] - p0[28 + s2 +: 5]))}}}}};
  assign x14 = x11[11 + s0];
  assign x15 = {2{{2{(p0[19 +: 4] + p0[13 +: 3])}}}};
  assign y0 = ({x10[12], {p1[20 -: 3], ({2{x4[11 + s0]}} ^ p3[14])}} ^ ((x11 - ({2{x4[8 + s2]}} ^ {p0[10 + s2], p0[19 + s0 +: 5]})) | ({2{(ctrl[1] || ctrl[0] && ctrl[2] ? x0[28 + s1 +: 8] : x5[19 -: 2])}} & x15[14 + s1 -: 7])));
  assign y1 = (ctrl[0] || ctrl[3] && !ctrl[1] ? {(({p1[11 + s3 -: 7], p3[15 + s2]} ^ (x6[1 + s1 +: 7] + x14[12])) & (ctrl[2] && ctrl[2] || !ctrl[3] ? p1[14 -: 1] : (x0[11 +: 3] ^ x9[21]))), x9[14 + s2]} : {p3[2 + s2 +: 1], {(!ctrl[3] || !ctrl[3] || !ctrl[0] ? p0 : {p0, p1}), (!ctrl[2] && ctrl[3] || !ctrl[1] ? {2{x5[18 + s3]}} : (p1[11 +: 1] & p2[16 + s2]))}});
  assign y2 = (ctrl[3] && !ctrl[2] && !ctrl[2] ? x14[21 -: 1] : x8[28 + s3 -: 2]);
  assign y3 = x0[18];
endmodule
