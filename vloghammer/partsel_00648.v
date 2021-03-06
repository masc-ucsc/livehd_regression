module partsel_00648(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [2:27] x4;
  wire [3:31] x5;
  wire [29:3] x6;
  wire [31:2] x7;
  wire [26:7] x8;
  wire [5:28] x9;
  wire signed [0:25] x10;
  wire [25:0] x11;
  wire [1:30] x12;
  wire signed [7:24] x13;
  wire signed [1:27] x14;
  wire [24:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:1] p0 = 133731657;
  localparam [30:2] p1 = 359094333;
  localparam [30:7] p2 = 771132970;
  localparam [1:25] p3 = 161145525;
  assign x4 = ((({2{{(p2[15 +: 4] | x1), x2[6 + s3 +: 1]}}} - x1[9]) & (!ctrl[0] && !ctrl[2] && !ctrl[3] ? (!ctrl[0] || ctrl[1] || ctrl[0] ? x1[10 + s1] : x0[19 + s2 -: 1]) : x3[9 + s2 -: 5])) + {p0[5 + s3 +: 4], p3[27 + s0 -: 5]});
  assign x5 = x2[14 + s1];
  assign x6 = x5[7 + s1 -: 8];
  assign x7 = (x4[10] ^ ((!ctrl[3] || !ctrl[1] && ctrl[2] ? ((((x5[6 + s0 -: 6] - p2[20]) & (x5[22 -: 4] ^ x5)) - x3) + x4[16]) : (p0[8 + s2 +: 6] & (x4[16 + s2 -: 2] & (p2[24 + s3 -: 7] | p0[9 +: 3])))) & (ctrl[2] || !ctrl[0] || ctrl[0] ? {2{(x5[8 +: 2] & x1[16 + s1])}} : ({2{x5}} | p2[12 + s2]))));
  assign x8 = x2[15 + s2];
  assign x9 = (!ctrl[2] || ctrl[3] && !ctrl[1] ? x8 : p0[9]);
  assign x10 = {x1[17], (x7[14 -: 4] & (!ctrl[0] || ctrl[2] || !ctrl[1] ? (ctrl[3] && ctrl[3] && !ctrl[3] ? {2{p3}} : (x5[19] - p2)) : x3[17 -: 2]))};
  assign x11 = {{p0[12], x10[14 -: 3]}, (p1[8] - (!ctrl[3] || ctrl[3] || ctrl[0] ? {2{x3[16 + s1]}} : p3))};
  assign x12 = x0[1 + s3 -: 7];
  assign x13 = {x9[5 + s2], p0[16 + s3 -: 2]};
  assign x14 = p0;
  assign x15 = {2{(x3[20 -: 4] & (!ctrl[2] && ctrl[0] || !ctrl[0] ? p0 : x0[14 -: 2]))}};
  assign y0 = (x2[13 -: 4] + ((p3[19 +: 3] - p2[9 +: 2]) + ({(x10[21] ^ p2), (ctrl[1] && ctrl[0] || ctrl[2] ? (p3[18] + x0) : x14[14 -: 1])} ^ x15[9 + s1])));
  assign y1 = {2{p1}};
  assign y2 = p1;
  assign y3 = {2{(p1[11] & {2{(x0[8 +: 1] - {(x7 ^ p1), ((p1 - p0[18 +: 4]) ^ p2[12 -: 1])})}})}};
endmodule
