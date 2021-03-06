module partsel_00209(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [0:26] x4;
  wire signed [26:1] x5;
  wire [4:26] x6;
  wire signed [30:6] x7;
  wire signed [5:26] x8;
  wire [7:24] x9;
  wire signed [30:0] x10;
  wire [6:31] x11;
  wire signed [0:27] x12;
  wire signed [30:3] x13;
  wire [29:5] x14;
  wire [25:2] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:24] p0 = 821353934;
  localparam signed [2:27] p1 = 483837347;
  localparam [2:29] p2 = 994140400;
  localparam [0:26] p3 = 213361199;
  assign x4 = x2[19 -: 4];
  assign x5 = {{{2{{2{{2{x1[27 + s1 +: 5]}}}}}}, (p3 - {((p2[15 + s2] ^ p3) + x3[5 + s1 -: 2]), (!ctrl[2] && !ctrl[2] || !ctrl[2] ? p0[18] : x1[13 +: 4])})}, x3};
  assign x6 = (({2{(ctrl[3] && !ctrl[1] && ctrl[0] ? {2{x1[12 + s2]}} : {2{x2[18 +: 4]}})}} | ((p2 - (p1[14 +: 3] + p2[18 + s2 -: 2])) | (p2[20 + s1 -: 8] - (ctrl[3] && ctrl[3] && ctrl[1] ? x1[9 + s1 +: 5] : p0[13 -: 4])))) | (!ctrl[1] && !ctrl[0] || ctrl[2] ? p0[11 + s3 -: 7] : ((x0[27 + s0 -: 6] & (((x2[19 +: 3] & p2[6 + s0]) ^ p0[10 +: 4]) | p2)) & (!ctrl[1] && !ctrl[1] || !ctrl[1] ? (x4[30 + s1 -: 4] - x5[18 +: 1]) : (p1[18 + s3 +: 4] & (p3[11 + s3] + x2))))));
  assign x7 = (!ctrl[0] && ctrl[1] && !ctrl[1] ? p0[5 + s2] : x6[8 + s3 -: 4]);
  assign x8 = (((x5[17 +: 3] | x4[4 + s3 -: 2]) & p0) + p0[15]);
  assign x9 = ({2{x6}} & (p3[13 -: 4] & p3));
  assign x10 = p2[19 + s2];
  assign x11 = x4;
  assign x12 = (p0[21] | {2{(ctrl[1] || ctrl[2] && ctrl[2] ? (ctrl[0] && ctrl[0] || ctrl[1] ? (p0 | p0) : ((p1[16 -: 1] & p0[13 -: 1]) ^ (p1[14] - p1))) : p2[11 +: 4])}});
  assign x13 = x7[1 + s3 +: 3];
  assign x14 = {x9, (p2[14] & {(p3[8 +: 4] - (!ctrl[1] || ctrl[1] && !ctrl[3] ? x7[14] : p0[23 + s0 +: 1])), x5[17 + s0 -: 1]})};
  assign x15 = p1[8 + s1];
  assign y0 = p1[31 + s0 -: 4];
  assign y1 = x4[7 + s1];
  assign y2 = p1;
  assign y3 = {{(x9[3 + s3 +: 4] ^ ((p1[5 + s1] ^ x15[8 + s1]) | p2)), {(!ctrl[0] && !ctrl[1] && ctrl[0] ? (((x2 & x8[26 + s3 -: 7]) + x4) & p3) : p1), ((x2[12 + s0 -: 5] & x3) - (!ctrl[3] && ctrl[3] || ctrl[0] ? x1 : p0))}}, {2{{({p1[16 + s0], x12[24 + s1 -: 5]} - {2{(p0[26 + s2 -: 8] | p0[16 + s3])}}), ((!ctrl[1] && ctrl[1] && !ctrl[1] ? x13[19 -: 2] : p1[22 -: 1]) ^ x2[17 + s1])}}}};
endmodule
