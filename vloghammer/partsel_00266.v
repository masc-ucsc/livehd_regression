module partsel_00266(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [31:5] x4;
  wire [6:28] x5;
  wire signed [26:2] x6;
  wire [31:6] x7;
  wire [28:5] x8;
  wire signed [1:26] x9;
  wire [1:26] x10;
  wire [30:5] x11;
  wire signed [7:29] x12;
  wire [29:4] x13;
  wire signed [25:5] x14;
  wire [31:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:0] p0 = 373616605;
  localparam [6:27] p1 = 654482918;
  localparam signed [7:27] p2 = 539598243;
  localparam [27:6] p3 = 284506779;
  assign x4 = (({p0[30 + s0 +: 4], ({2{((p3 + p1) + p3[14 -: 3])}} & (p3[22 + s1 -: 3] & x2))} ^ x1[15 -: 1]) ^ x1[9 + s3]);
  assign x5 = (!ctrl[0] || !ctrl[3] || !ctrl[2] ? (!ctrl[2] && !ctrl[2] && !ctrl[2] ? (!ctrl[1] || !ctrl[0] || !ctrl[2] ? ((p0[16 + s0] - p0) ^ x1[26 + s3 -: 8]) : x2[10]) : p2[9]) : p2[17 -: 4]);
  assign x6 = {x3[9 + s2], x1[8 +: 3]};
  assign x7 = {p1[22 -: 3], ({2{p3[30 + s3 +: 6]}} + p3)};
  assign x8 = p1[11 + s1];
  assign x9 = x6[13 + s3 -: 4];
  assign x10 = ((ctrl[0] && ctrl[2] && ctrl[3] ? p0[21 -: 3] : p0[11 + s2]) | p3[15 -: 3]);
  assign x11 = (ctrl[3] || !ctrl[1] && !ctrl[1] ? ({(x6[2 + s2 +: 5] | (x10[8] + p3[9 + s0])), ((!ctrl[1] || ctrl[0] && ctrl[3] ? ((p0[21 -: 4] + p3[14 -: 1]) & x3[20]) : p2[16 + s3 +: 7]) ^ {2{x1[5 + s2 +: 8]}})} | ({p2[16], (p3[17 + s1] ^ p3)} + (x3[11 + s1] - (((p3[13 -: 3] - p2[10 + s0]) - x3[18 + s1 -: 8]) ^ x3[19 +: 2])))) : (p1 & {2{x4[24 + s3 +: 4]}}));
  assign x12 = ({(!ctrl[2] || !ctrl[0] || ctrl[1] ? (p2 + (x10 + x1[16 +: 4])) : {2{(x5[29 + s3 -: 2] - x7[12 -: 3])}}), {p3[8 + s1], (((x0[19 + s2 -: 4] + (x4[18 + s0 -: 4] | p3[11])) ^ x4) ^ x3[11])}} + (!ctrl[3] && !ctrl[1] && !ctrl[3] ? (x9[21 -: 2] | x3) : (!ctrl[0] && ctrl[1] && !ctrl[3] ? {2{p0}} : (x4 + (x7[10 + s1 +: 5] | p2[10 +: 2])))));
  assign x13 = p2[4 + s2 +: 3];
  assign x14 = x5;
  assign x15 = (!ctrl[0] && ctrl[0] && ctrl[3] ? x5[18] : p3[11 +: 3]);
  assign y0 = p2[11];
  assign y1 = p0;
  assign y2 = (x9[19 -: 1] - (p2[9 +: 3] | (((!ctrl[3] || ctrl[3] || !ctrl[3] ? (x11[16 +: 3] & p2[14 + s1]) : p1) + (ctrl[2] || !ctrl[1] || ctrl[2] ? x6 : (((x13[12 + s0] & p1[3 + s1 -: 3]) & x0[14 +: 1]) | x1[13 +: 4]))) + {2{x5[10]}})));
  assign y3 = {(x10 + (ctrl[1] || ctrl[2] && !ctrl[2] ? x5[18] : x14)), x13[3 + s1 -: 6]};
endmodule
