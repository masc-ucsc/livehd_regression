module partsel_00003(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [3:31] x4;
  wire [26:7] x5;
  wire [6:28] x6;
  wire signed [30:2] x7;
  wire [26:5] x8;
  wire signed [7:26] x9;
  wire signed [31:1] x10;
  wire [28:4] x11;
  wire [4:30] x12;
  wire signed [4:27] x13;
  wire [27:7] x14;
  wire [7:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:30] p0 = 654831699;
  localparam [24:7] p1 = 52343228;
  localparam [6:24] p2 = 160289125;
  localparam [2:28] p3 = 431757208;
  assign x4 = x0;
  assign x5 = (((x1[13 +: 1] & p1) + x4) & (x0[15] ^ {2{p1[23 + s1 +: 7]}}));
  assign x6 = (!ctrl[1] && ctrl[3] && ctrl[1] ? {2{((ctrl[2] && ctrl[0] && !ctrl[2] ? p0 : p0[17]) - {2{x1[16 + s1 -: 5]}})}} : p0[21 -: 3]);
  assign x7 = ({2{p0[13 + s0]}} | (({(p2 & p3), x1[17 + s0 -: 3]} | ({2{p0}} ^ p3[17 +: 1])) ^ (ctrl[1] || ctrl[0] || ctrl[2] ? {p3[15 + s3], (p2[11] + x2)} : {2{p2}})));
  assign x8 = x1[18 + s0 -: 1];
  assign x9 = (ctrl[2] && !ctrl[1] && !ctrl[2] ? {2{x7[9 + s1 -: 1]}} : (!ctrl[3] || ctrl[0] && !ctrl[0] ? {2{{2{x6[14 +: 2]}}}} : x0[21]));
  assign x10 = p1[7 + s2];
  assign x11 = ({({2{(p3[12] ^ x7)}} & {2{(x0 - p0)}}), x0[16 + s3 +: 1]} | x7);
  assign x12 = {2{x5[28 + s3 +: 1]}};
  assign x13 = {x3[19], x9[15 + s3 +: 6]};
  assign x14 = x0[21 -: 1];
  assign x15 = (!ctrl[1] && !ctrl[0] && ctrl[3] ? ((p2[7 + s3] & {2{x13[16 + s2]}}) ^ ({p1, x8[19 + s0]} & p1)) : (x3[3 + s0 +: 8] ^ (p2[12 +: 1] ^ ((x8 | (x13[13] - (x8[14 + s0 -: 4] & p0[8 + s3 +: 6]))) & {2{p1[13 -: 3]}}))));
  assign y0 = x6[17];
  assign y1 = p3[24 + s1 -: 4];
  assign y2 = {{{2{p0[23 -: 1]}}, p3[11 +: 1]}, {2{({2{p3[11]}} ^ p0[25 + s3 +: 1])}}};
  assign y3 = {2{x7[20]}};
endmodule
