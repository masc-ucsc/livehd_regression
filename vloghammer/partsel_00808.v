module partsel_00808(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [4:24] x4;
  wire [7:30] x5;
  wire [28:3] x6;
  wire [1:29] x7;
  wire [5:24] x8;
  wire signed [2:25] x9;
  wire signed [7:25] x10;
  wire [25:4] x11;
  wire [1:29] x12;
  wire signed [5:31] x13;
  wire signed [1:28] x14;
  wire signed [2:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:27] p0 = 18274993;
  localparam [7:28] p1 = 541637505;
  localparam [29:5] p2 = 730590490;
  localparam [27:3] p3 = 944156530;
  assign x4 = {2{{(x0 | x3[11 + s2 -: 3]), (p1 - p0)}}};
  assign x5 = p1;
  assign x6 = ((!ctrl[1] || !ctrl[2] && !ctrl[2] ? p0 : {2{{((p1[18 -: 1] | p0[18 +: 2]) | x5[23 -: 2]), (x1 | (x5[28 + s0 +: 8] ^ (p2[5 + s0 +: 2] + x4[30 + s2 -: 2])))}}}) | {2{x2[24 + s2 -: 3]}});
  assign x7 = {{2{(p2[8 +: 3] ^ ((p2[11] & p2[27 + s0 +: 5]) & x4[18 + s2]))}}, (!ctrl[3] || ctrl[0] || !ctrl[1] ? x2[15] : ((!ctrl[2] || !ctrl[1] || ctrl[3] ? (x1[2 + s3 +: 3] + x2) : p0[2 + s3 -: 2]) | (ctrl[2] && !ctrl[0] && ctrl[3] ? (!ctrl[0] || ctrl[1] || !ctrl[0] ? (x3[19 + s1 +: 6] ^ (p2 - (x2[6 + s3 +: 4] + x2[10]))) : p0) : (x6[17] + x2[29 + s3 -: 1]))))};
  assign x8 = p1[9 +: 4];
  assign x9 = x1[15 -: 3];
  assign x10 = p3[8];
  assign x11 = {2{(ctrl[0] || ctrl[1] || ctrl[2] ? p0[21 + s3 -: 8] : ({{x8[16 -: 2], x6[30 + s3 +: 3]}, x5[6 + s0]} & {2{(!ctrl[2] && ctrl[2] || !ctrl[1] ? (x3[24 + s1 -: 4] - x5[15 + s0 -: 3]) : x4[13])}}))}};
  assign x12 = (x10[7 + s2] & x4[21]);
  assign x13 = p1;
  assign x14 = x7;
  assign x15 = (p3[17] - x9[18 +: 2]);
  assign y0 = {2{p1[11]}};
  assign y1 = p0[29 + s1 +: 3];
  assign y2 = p1[3 + s3 -: 4];
  assign y3 = x9[16 +: 3];
endmodule
