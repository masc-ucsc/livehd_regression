module partsel_00884(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [30:5] x4;
  wire signed [24:3] x5;
  wire [7:25] x6;
  wire signed [27:6] x7;
  wire signed [27:5] x8;
  wire signed [5:25] x9;
  wire signed [1:31] x10;
  wire signed [0:31] x11;
  wire signed [7:27] x12;
  wire signed [2:29] x13;
  wire [4:28] x14;
  wire signed [4:26] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [29:2] p0 = 168754367;
  localparam signed [26:4] p1 = 350494693;
  localparam [6:25] p2 = 477060240;
  localparam signed [29:4] p3 = 781820417;
  assign x4 = p1[6 + s3 -: 2];
  assign x5 = {2{x4}};
  assign x6 = ({((x0[12 +: 2] & {x0, p0[14]}) + {(x5[17 +: 3] + p3), (x5[28 + s0 -: 1] | p0[19 -: 3])}), ({p2[16 + s0], (x0[20 -: 4] ^ x0[27 + s2 -: 7])} - x3[23])} ^ (x1[6 + s2] ^ (!ctrl[1] || ctrl[3] && ctrl[1] ? p0[13] : (ctrl[2] || !ctrl[3] && !ctrl[1] ? (p0[17 +: 4] & p0[21 -: 3]) : {2{x2[15 -: 2]}}))));
  assign x7 = {2{(({x2, (x0 + ((p3 ^ p2[15]) & (p1[9 +: 1] - p0[29 + s3 -: 2])))} - x1[7 + s1]) - {{(p1 + p2[18 +: 3]), (p2[16 +: 1] ^ (x0 & p3[24 + s0 -: 7]))}, {{(p1 ^ p2), x1[5 + s2]}, p3}})}};
  assign x8 = x4;
  assign x9 = ((ctrl[0] && !ctrl[1] && !ctrl[1] ? ({{2{(p0[19] & x7[17 -: 4])}}, (p1 | x0[14 + s0])} | x4[22]) : p0[18 +: 2]) & p2[14 -: 1]);
  assign x10 = x3[30 + s0 -: 8];
  assign x11 = p2[15];
  assign x12 = x0[11 + s0 +: 8];
  assign x13 = {2{p1[9 +: 4]}};
  assign x14 = x11[10];
  assign x15 = x1;
  assign y0 = x3[16];
  assign y1 = ((!ctrl[3] || ctrl[0] || !ctrl[3] ? (x2[16 -: 1] + x8[23]) : x8) + p3[9]);
  assign y2 = ((ctrl[3] && ctrl[1] && ctrl[0] ? p2[12] : (((x1 ^ x8[10]) ^ (x10[11 + s1 +: 2] & x8[21])) | p1)) - p0[9 + s2]);
  assign y3 = p1[28 + s0 -: 3];
endmodule
