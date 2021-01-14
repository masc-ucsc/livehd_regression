module partsel_00100(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [28:1] x4;
  wire signed [26:1] x5;
  wire signed [7:26] x6;
  wire [28:4] x7;
  wire signed [28:2] x8;
  wire signed [7:31] x9;
  wire signed [29:2] x10;
  wire [24:5] x11;
  wire signed [3:24] x12;
  wire [6:25] x13;
  wire signed [4:28] x14;
  wire [24:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:31] p0 = 233218652;
  localparam signed [24:2] p1 = 628871733;
  localparam [7:26] p2 = 151768039;
  localparam signed [28:2] p3 = 548504990;
  assign x4 = x1;
  assign x5 = p1;
  assign x6 = p3[10 +: 1];
  assign x7 = x2[8 + s0 -: 5];
  assign x8 = {{2{(!ctrl[1] && !ctrl[0] || ctrl[2] ? p0 : p1[4 + s2])}}, p2[19 +: 1]};
  assign x9 = {2{({((p2[22] ^ (p1[19] - p0[21])) + ((x4[18 + s0 -: 1] ^ x1[23]) - (x5[10] - x2[13 +: 3]))), ((ctrl[0] || ctrl[1] || ctrl[0] ? (p2[9 + s3 -: 4] + x7) : p0[8 + s3 +: 7]) ^ (p2[19 -: 1] - p0[15 + s1 +: 5]))} | x0[10 + s0 -: 2])}};
  assign x10 = x5[19 -: 1];
  assign x11 = p1[16 -: 4];
  assign x12 = {2{x4[19 + s0 +: 6]}};
  assign x13 = x2[16 + s1];
  assign x14 = (ctrl[2] && !ctrl[1] && !ctrl[3] ? p1[8] : {2{p3}});
  assign x15 = p2;
  assign y0 = (x7[21 -: 1] - (ctrl[1] || !ctrl[1] || !ctrl[0] ? {p1, x13[18 + s2]} : (x8[5 + s0 +: 3] & (!ctrl[1] && !ctrl[1] || !ctrl[0] ? x12[0 + s0 +: 4] : ((x14[17 +: 2] ^ p3[9]) | x15)))));
  assign y1 = {2{(((p1 - (ctrl[3] && ctrl[2] || ctrl[1] ? p2[16] : (x6 - x10[22 + s2 -: 5]))) | (!ctrl[1] && ctrl[0] && ctrl[2] ? (ctrl[1] && !ctrl[1] && ctrl[0] ? (x1 & x11[10]) : x1[22 -: 2]) : (p1 ^ ((p1[20] ^ (p3[13 +: 3] ^ (p0[23 + s2 +: 6] | p1))) | x4[8 + s1 +: 1])))) ^ p0[18 +: 3])}};
  assign y2 = p3[23];
  assign y3 = (x9[12 -: 4] + ((({2{(p3[13 +: 3] & p0)}} - p3) - {2{(!ctrl[1] || !ctrl[3] || !ctrl[1] ? x3[9 + s2] : p2[1 + s3 +: 2])}}) + (p2[5 + s0 +: 1] + x1[18 +: 3])));
endmodule
