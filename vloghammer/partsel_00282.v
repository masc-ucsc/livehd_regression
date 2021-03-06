module partsel_00282(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [0:27] x4;
  wire signed [30:5] x5;
  wire signed [31:1] x6;
  wire signed [25:3] x7;
  wire signed [26:6] x8;
  wire [3:28] x9;
  wire signed [26:7] x10;
  wire signed [2:30] x11;
  wire signed [3:29] x12;
  wire signed [1:26] x13;
  wire [24:7] x14;
  wire [0:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [0:27] p0 = 434878340;
  localparam [0:30] p1 = 636250014;
  localparam signed [1:27] p2 = 935824744;
  localparam [29:7] p3 = 429488271;
  assign x4 = x2;
  assign x5 = p1[22 + s3 +: 7];
  assign x6 = (x2[4 + s1 +: 3] - p0);
  assign x7 = (!ctrl[0] && !ctrl[1] && ctrl[2] ? x2[19 +: 3] : ({2{p3}} & (!ctrl[2] || ctrl[3] && !ctrl[2] ? ((x6[15] & (x3[12 + s1 +: 2] ^ x2[13 +: 4])) | {2{x1}}) : {p3, x4[14 + s1 -: 1]})));
  assign x8 = (!ctrl[0] && !ctrl[3] || ctrl[0] ? (({x2[20 + s0 +: 1], x4[4 + s2 +: 3]} & x7) - (ctrl[2] || !ctrl[1] || !ctrl[3] ? ({2{p3[14 -: 2]}} | {2{(x1[1 + s1 -: 4] ^ p1[29 + s2 -: 8])}}) : p0[29 + s0 +: 4])) : p0);
  assign x9 = ((({2{p1[11 +: 3]}} ^ {2{(!ctrl[1] && !ctrl[0] && ctrl[0] ? p0[19 -: 4] : x6[6 + s3])}}) - x6[11 +: 4]) & ((((ctrl[0] && ctrl[1] || ctrl[3] ? x3 : (p0 | p0)) & x0[17 -: 2]) & {2{((x7[15 + s2 -: 6] | p2[18 -: 1]) ^ p0[17 +: 2])}}) - ((x8[14 +: 1] ^ p2[18 + s2 -: 6]) - {2{p2}})));
  assign x10 = {2{(x2[21 -: 3] - {p3[16], (x9[20] | (x6[25 + s0 +: 8] + p1[28 + s2 +: 5]))})}};
  assign x11 = x6[12 + s1];
  assign x12 = x5[20 + s2 -: 5];
  assign x13 = ((ctrl[0] || !ctrl[3] && ctrl[1] ? x0[14 + s1 +: 2] : (!ctrl[0] && ctrl[0] && !ctrl[0] ? (((p3[6 + s0] + p3[10 +: 3]) | x5[20]) ^ (x6[15 + s0] | x4[14])) : p0[17 +: 2])) & x12);
  assign x14 = p2;
  assign x15 = (({2{{2{{x14[30 + s1 -: 6], (x3[13 +: 1] ^ p0[6 + s3])}}}}} + (ctrl[1] && ctrl[2] || ctrl[0] ? p1[12 -: 2] : p3[21 + s2 +: 2])) - x8[13 +: 3]);
  assign y0 = ((p2[24 + s0 +: 2] - (ctrl[2] || !ctrl[0] && ctrl[3] ? p0[8 +: 2] : (!ctrl[0] && ctrl[1] || !ctrl[1] ? ((x9[10 +: 2] + (p1[18 + s2 +: 4] ^ (p0[2 + s1 +: 1] ^ p1))) & (p0[18 -: 2] - (p0[21 + s2 -: 8] + x9[4 + s0 -: 4]))) : (!ctrl[1] && ctrl[0] && !ctrl[1] ? x2 : x6)))) - {{2{{2{p0}}}}, {(ctrl[2] && !ctrl[2] || ctrl[1] ? p1[16 -: 4] : x12), x12[8 + s0]}});
  assign y1 = ((x8 & ((ctrl[0] && !ctrl[3] || !ctrl[1] ? (x7[12 -: 2] ^ x4[11 +: 3]) : {(p0[3 + s2 +: 5] - (p2[25 + s2 -: 2] | p3[15])), (p3[15 -: 1] ^ x8[5 + s2])}) | p0[11 + s2 +: 2])) - {2{x11[9 + s0 -: 3]}});
  assign y2 = p2[8 +: 2];
  assign y3 = (x9[19 +: 4] & (x7 ^ p2[18 -: 4]));
endmodule
