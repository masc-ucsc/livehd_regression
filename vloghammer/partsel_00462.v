module partsel_00462(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [30:0] x4;
  wire signed [29:2] x5;
  wire signed [24:4] x6;
  wire signed [2:26] x7;
  wire [24:3] x8;
  wire signed [28:4] x9;
  wire signed [28:6] x10;
  wire [4:31] x11;
  wire signed [2:30] x12;
  wire signed [7:31] x13;
  wire signed [29:6] x14;
  wire [31:0] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [3:27] p0 = 69646067;
  localparam [3:31] p1 = 174881855;
  localparam [3:31] p2 = 557696212;
  localparam signed [0:29] p3 = 51981419;
  assign x4 = ((ctrl[1] || !ctrl[3] && ctrl[2] ? p1[9 + s1] : {2{p0}}) + {2{{2{(ctrl[1] && !ctrl[3] && !ctrl[0] ? x0[10] : {2{p3}})}}}});
  assign x5 = p0[13 +: 3];
  assign x6 = (ctrl[3] || ctrl[2] && ctrl[1] ? ({x4[14 +: 3], p0[8]} ^ (p0[12 -: 3] ^ (!ctrl[3] && ctrl[2] || !ctrl[1] ? ((p0 ^ p0[14 -: 1]) | p1[16 + s3]) : x5))) : p1[8]);
  assign x7 = (x6[13 -: 2] + p0[19 + s1]);
  assign x8 = (p1 ^ {p3[16 +: 1], (!ctrl[2] && !ctrl[2] || !ctrl[0] ? x2[12 -: 2] : p0[11])});
  assign x9 = ((x6[17 +: 1] & ((p1[18 + s3] ^ {p0[19 +: 4], x7[13 + s1]}) & p2[2 + s0 -: 5])) | ({2{p2[14 + s1]}} - p0[19]));
  assign x10 = {x4, (({2{p2[23 -: 4]}} | x9) ^ (((p3[0 + s1 -: 8] & p1[16 +: 4]) | x9[12 + s0]) - ({p1, p3[9 +: 1]} ^ (x2[26 + s3 -: 6] ^ p0))))};
  assign x11 = x7[9];
  assign x12 = ((x5[9] - p3[20 -: 1]) - {p2, (!ctrl[2] && ctrl[0] && !ctrl[3] ? (!ctrl[0] || ctrl[3] && !ctrl[2] ? x3[17 + s2 +: 7] : {(x6[18 + s3] + (x10[6 + s3 +: 6] - x9[19 -: 3])), p1[6 + s3]}) : (ctrl[2] || !ctrl[1] || ctrl[2] ? p2 : p2))});
  assign x13 = x10[13 + s2];
  assign x14 = (((p2[22 -: 2] & {{2{(p3[28 + s0 +: 6] ^ x6[15 -: 2])}}, x5}) & x3[21 + s1 +: 1]) & p0);
  assign x15 = x11[4 + s3];
  assign y0 = (p1[11 + s3 +: 6] ^ p3[12 + s3]);
  assign y1 = {x15, p3[30 + s1 +: 8]};
  assign y2 = p3[18 -: 4];
  assign y3 = x13;
endmodule
