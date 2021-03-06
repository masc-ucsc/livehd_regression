module partsel_00812(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [31:1] x4;
  wire signed [26:2] x5;
  wire [31:1] x6;
  wire signed [30:4] x7;
  wire [4:26] x8;
  wire [5:29] x9;
  wire signed [30:0] x10;
  wire signed [1:31] x11;
  wire signed [28:7] x12;
  wire [29:4] x13;
  wire [29:7] x14;
  wire signed [30:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:31] p0 = 401405212;
  localparam [3:27] p1 = 142151773;
  localparam [24:4] p2 = 51128399;
  localparam [27:0] p3 = 17929621;
  assign x4 = p1[13 + s0];
  assign x5 = (x0[17 + s2 +: 8] + p0[13 + s2]);
  assign x6 = p0;
  assign x7 = (!ctrl[0] && !ctrl[3] || !ctrl[2] ? x1 : ((p1[28 + s2 -: 3] - x2[4 + s0 +: 7]) & p3[23 -: 1]));
  assign x8 = p3[13 -: 2];
  assign x9 = x5;
  assign x10 = p3[20 + s0 -: 4];
  assign x11 = (p1[13 + s0] & ((({2{x8[6 + s1]}} - (p3[14 + s0] + p3[16])) | {2{{p2[12 + s1], x3[14 +: 3]}}}) - x6));
  assign x12 = (((ctrl[1] && ctrl[0] || ctrl[3] ? ((p1[10 +: 2] ^ x7[16 + s3]) + (x8[11] - ((x7[22] - x2[11 + s0]) ^ x10))) : {p3[25 + s3 -: 6], (p1[13 +: 4] + x11)}) & ((p1 | p3[20 + s2 +: 3]) | ((ctrl[2] || !ctrl[1] && !ctrl[1] ? p2 : x9) + x3))) + x6[8]);
  assign x13 = {x6[10 + s2], x1};
  assign x14 = x0[8];
  assign x15 = x2;
  assign y0 = (p2[12] + p3[6 + s2 -: 2]);
  assign y1 = {x5[18 +: 4], x5};
  assign y2 = ({p0[17 + s0], {2{x4}}} | (((!ctrl[0] || ctrl[3] || !ctrl[1] ? p0 : p0[16 + s0]) + {x13, (x1[9 +: 4] ^ p2[23 + s3 -: 5])}) | {2{{((x6[5 + s3] + (p0[18 +: 2] | x8)) - p1[29 + s0 -: 7]), {2{p1[10 + s1 +: 6]}}}}}));
  assign y3 = x4;
endmodule
