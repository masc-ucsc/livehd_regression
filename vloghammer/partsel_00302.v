module partsel_00302(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [5:27] x4;
  wire [24:6] x5;
  wire signed [29:4] x6;
  wire [31:4] x7;
  wire [30:2] x8;
  wire signed [0:24] x9;
  wire signed [31:0] x10;
  wire signed [24:0] x11;
  wire signed [25:5] x12;
  wire signed [26:4] x13;
  wire signed [3:25] x14;
  wire [5:24] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:31] p0 = 262587414;
  localparam [7:24] p1 = 377458980;
  localparam signed [25:2] p2 = 314905031;
  localparam signed [30:3] p3 = 65917385;
  assign x4 = x3[13 -: 2];
  assign x5 = x3[1 + s0 -: 2];
  assign x6 = p2;
  assign x7 = {x0, (p3 + ((!ctrl[1] || ctrl[0] || ctrl[2] ? {2{(x6[19 + s0] & p3[28 + s3 +: 2])}} : x4) ^ x5[8 + s3]))};
  assign x8 = x6[21 -: 4];
  assign x9 = p3[12];
  assign x10 = {p0[23 -: 1], p2};
  assign x11 = {2{(ctrl[3] && !ctrl[3] && ctrl[1] ? p2[16 +: 4] : ((p1[10 +: 4] | x5[25 + s3 +: 3]) ^ x9))}};
  assign x12 = p3[12 +: 2];
  assign x13 = x7[31 + s1 -: 7];
  assign x14 = (!ctrl[3] || ctrl[2] || !ctrl[0] ? ((((p1 | p3[20]) & p1[22 + s1 +: 6]) | {2{{2{((x10[14 +: 1] - x13[6 + s2]) & x13[21 -: 3])}}}}) | (((x5[13 +: 2] ^ x1[18 + s3]) - p3[15 + s3 +: 8]) | (ctrl[1] || !ctrl[1] || ctrl[1] ? p0[16 -: 1] : ((p3 - p3[11 + s3]) + p1[22 + s1 +: 1])))) : {2{{2{({p3[22], (x3 + x8)} | (ctrl[1] || ctrl[2] && !ctrl[1] ? p1[12 -: 1] : ((x11 | p1) + x3)))}}}});
  assign x15 = (!ctrl[3] || !ctrl[1] || !ctrl[1] ? x3[16] : (x1 & (({x14[15 -: 3], p3[26 + s2 -: 8]} & x5) & p0)));
  assign y0 = ((!ctrl[3] && !ctrl[0] || !ctrl[0] ? p0[13 + s0] : {2{({p1[22 + s0 -: 6], x5} - (x4[12 + s3 -: 7] | x0[9]))}}) & {2{p3[16 +: 1]}});
  assign y1 = p1[21 -: 1];
  assign y2 = p1[13 +: 1];
  assign y3 = (p0[10 +: 3] & (x7 - (p1[6 + s0 +: 4] | p2[22 -: 1])));
endmodule
