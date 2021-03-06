module partsel_00477(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [25:0] x4;
  wire [27:0] x5;
  wire signed [25:0] x6;
  wire signed [27:5] x7;
  wire [4:27] x8;
  wire [2:31] x9;
  wire signed [28:5] x10;
  wire [2:29] x11;
  wire [2:31] x12;
  wire signed [26:6] x13;
  wire signed [25:7] x14;
  wire [5:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:31] p0 = 838982000;
  localparam [28:1] p1 = 778973129;
  localparam [31:5] p2 = 43591270;
  localparam signed [31:7] p3 = 148822242;
  assign x4 = {2{p1[14]}};
  assign x5 = ({2{(((p1[11 +: 3] - x4[20 -: 2]) & (p3[14 + s0 +: 6] | x0)) & {(((p1[19 + s3] ^ p3[22 + s1 -: 8]) ^ x4[14]) + x1[17 + s1]), {p3[29 + s0 +: 4], x3[17 +: 1]}})}} - (({2{(x4[27 + s0 -: 3] | x1)}} | (((p0[31 + s2 -: 1] + p2[10 +: 1]) - p1[18 +: 4]) | (!ctrl[0] || !ctrl[1] || ctrl[3] ? p3 : p3[6 + s0 -: 8]))) & (((p1[2 + s2 +: 2] ^ (p3[18] + x3)) ^ x3[19 + s3 -: 8]) - {2{p2[14 +: 1]}})));
  assign x6 = (p2[18 -: 1] ^ {(x0 + x2[13 -: 2]), (!ctrl[2] || !ctrl[1] || !ctrl[1] ? (p2 + ((x3[16] ^ x4[20]) ^ (p3 - p3[2 + s2 -: 7]))) : {2{(p0 | x1[17 + s1])}})});
  assign x7 = p1[9];
  assign x8 = (!ctrl[3] && !ctrl[1] || ctrl[1] ? ((x1[8] ^ (p2[10 + s0 -: 5] ^ p2[8 + s2])) + ({(p3[15 + s1] - p2[10 +: 4]), x3[7 + s2 -: 8]} ^ x4[19 + s2 -: 7])) : (!ctrl[1] || ctrl[0] || ctrl[2] ? (ctrl[3] && ctrl[3] && !ctrl[2] ? p2[17 + s3 -: 3] : {(x0[16 +: 3] ^ p1[23 -: 4]), p0[18 -: 4]}) : p0));
  assign x9 = x1;
  assign x10 = {2{((p1 + p0[23 + s1 +: 7]) + p3)}};
  assign x11 = p1[3 + s1 +: 2];
  assign x12 = p0;
  assign x13 = ((p3[21 + s1 -: 4] - p3) ^ (ctrl[3] && !ctrl[3] || ctrl[2] ? (((p3[22 -: 2] | x10[16 + s2 -: 5]) + (!ctrl[0] && !ctrl[3] || !ctrl[1] ? (p0[14 -: 4] - p0[12 + s1]) : p2[8 + s1])) ^ ({2{x6[19 + s1 +: 7]}} + (x9[15 + s1] + ((x4 - (x5[15] & (x2[13 +: 1] + p0[11 + s1 -: 8]))) ^ p1[23])))) : (({p3[10], p2[20]} ^ p0[21 -: 2]) & p1[15 + s2])));
  assign x14 = (p2[18] | ({2{(x13[30 + s0 +: 1] + x11)}} - {2{{2{{2{x10[12]}}}}}}));
  assign x15 = p1;
  assign y0 = (x4[14 -: 1] & p1[12 +: 2]);
  assign y1 = {2{(p2[1 + s3 +: 1] - x5[5 + s3])}};
  assign y2 = (!ctrl[3] && !ctrl[3] && ctrl[2] ? p3[9 + s3 -: 4] : p0[17 +: 1]);
  assign y3 = (!ctrl[2] || !ctrl[3] && !ctrl[0] ? x11 : (((p0 & (p1[19 -: 4] ^ p0[0 + s3 +: 8])) + ((x5[19 + s3] ^ x3[21]) | (p0[20 -: 3] & p3))) & p2[14 -: 4]));
endmodule
