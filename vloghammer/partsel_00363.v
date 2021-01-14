module partsel_00363(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [0:24] x4;
  wire [4:27] x5;
  wire signed [0:28] x6;
  wire [1:26] x7;
  wire [5:25] x8;
  wire signed [5:29] x9;
  wire signed [27:2] x10;
  wire signed [1:29] x11;
  wire [0:28] x12;
  wire signed [7:28] x13;
  wire [26:5] x14;
  wire [29:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [30:0] p0 = 616807651;
  localparam [27:5] p1 = 673667506;
  localparam [0:28] p2 = 659647097;
  localparam [27:6] p3 = 25397286;
  assign x4 = x1[6 + s1];
  assign x5 = x2[11 + s2];
  assign x6 = x3[18 +: 4];
  assign x7 = p0[5 + s0 +: 6];
  assign x8 = (x7 & ({x0[10 +: 3], x1[31 + s0 +: 5]} & (p1[17 + s0] & ((x7 + x2[13 +: 3]) ^ p1[6 + s0]))));
  assign x9 = ((x6[14 +: 2] & x0[19]) | p1[21 + s1 -: 2]);
  assign x10 = x4;
  assign x11 = {x1[5 + s1], {{2{(!ctrl[3] || !ctrl[0] || ctrl[1] ? (x4[25 + s1 -: 4] + x8[15]) : p2[10 + s0 -: 1])}}, {2{(ctrl[3] && ctrl[3] || ctrl[3] ? (((x6[28 + s1 +: 8] | p2) - p1[18]) ^ p2) : x5[16 + s3])}}}};
  assign x12 = ((({2{x6[18 +: 4]}} ^ (!ctrl[0] || ctrl[0] || ctrl[1] ? {2{p3[14 +: 2]}} : x2)) ^ (x9 - x11[4 + s0 +: 6])) + x11[9 +: 3]);
  assign x13 = p0;
  assign x14 = (((ctrl[2] && ctrl[0] || ctrl[0] ? x9[13] : (ctrl[3] || !ctrl[0] && !ctrl[3] ? p3 : p2[16 -: 4])) + p0[20 + s0 +: 7]) ^ p1[18 + s0]);
  assign x15 = {{x2[5 + s2 +: 2], (p2[0 + s3 +: 8] ^ p2[18 +: 3])}, {(((x1 ^ (p2 - p3[18 +: 4])) + x6[23 -: 2]) & ({2{p0[20 -: 3]}} | x8)), p1[17 -: 4]}};
  assign y0 = p0;
  assign y1 = p3;
  assign y2 = (p1[3 + s3 +: 8] + (!ctrl[1] && !ctrl[0] || !ctrl[2] ? {p0[14 +: 1], x15} : {{2{(ctrl[2] && ctrl[1] && !ctrl[0] ? x8[18 +: 2] : p0[10])}}, p2}));
  assign y3 = x0[9 + s2];
endmodule
