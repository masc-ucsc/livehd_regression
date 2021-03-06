module partsel_00965(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [0:29] x4;
  wire [1:26] x5;
  wire [31:1] x6;
  wire [24:6] x7;
  wire signed [6:31] x8;
  wire signed [28:0] x9;
  wire signed [6:27] x10;
  wire [5:29] x11;
  wire [5:25] x12;
  wire signed [2:30] x13;
  wire signed [3:31] x14;
  wire signed [6:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [0:25] p0 = 326121647;
  localparam signed [2:30] p1 = 464632424;
  localparam [5:26] p2 = 740491837;
  localparam [6:31] p3 = 594654284;
  assign x4 = x0[9];
  assign x5 = (p1[21 -: 2] + x3[19 + s3]);
  assign x6 = p2[18 + s3];
  assign x7 = (p2[22 + s0 +: 6] ^ x6[15 + s1]);
  assign x8 = x1;
  assign x9 = x8;
  assign x10 = p3[15 +: 1];
  assign x11 = ({2{x3[7 + s2]}} & (x4[16] & p1[13 -: 1]));
  assign x12 = (!ctrl[2] || ctrl[3] && !ctrl[3] ? x3[20 -: 3] : x3[23 -: 2]);
  assign x13 = (!ctrl[3] || !ctrl[3] || !ctrl[0] ? ((x1[17] + p3[18]) - x5) : (ctrl[1] || ctrl[2] && ctrl[3] ? ((p2[23] + p3[19 -: 1]) ^ (((x2[16] + x6[6 + s1 +: 5]) ^ x1[21 -: 1]) & (x5[9 + s3 -: 7] & p3[16 +: 1]))) : p0[4 + s1 -: 2]));
  assign x14 = (x7[14 + s1] & x9[22 -: 1]);
  assign x15 = p0[6 + s0];
  assign y0 = {2{(x15[6 + s2 -: 2] - (p3[15] ^ p0[7 + s1]))}};
  assign y1 = (({2{x3[28 + s2 +: 1]}} | {x10[19 + s3 -: 3], x6[9]}) ^ x10[20 -: 1]);
  assign y2 = (x6[23 + s2 -: 5] ^ {((ctrl[1] && ctrl[1] && !ctrl[1] ? x3[31 + s0 -: 5] : p3[19 + s1 -: 1]) - {2{p3}}), (!ctrl[3] || ctrl[3] && !ctrl[2] ? {2{((p1 & p2[2 + s2 -: 8]) - p0)}} : x3[4 + s2])});
  assign y3 = {2{(x8[19 + s1 -: 7] ^ p3[30 + s2 -: 2])}};
endmodule
