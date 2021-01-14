module partsel_00034(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [27:2] x4;
  wire signed [6:29] x5;
  wire signed [25:3] x6;
  wire signed [29:2] x7;
  wire [31:5] x8;
  wire signed [31:5] x9;
  wire signed [28:4] x10;
  wire [29:4] x11;
  wire signed [0:24] x12;
  wire [29:6] x13;
  wire signed [2:31] x14;
  wire [31:6] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:0] p0 = 948212920;
  localparam signed [28:7] p1 = 433543151;
  localparam signed [26:7] p2 = 723211332;
  localparam signed [5:25] p3 = 388452286;
  assign x4 = x0[15];
  assign x5 = {{x4[17 +: 4], ({2{x2}} & (!ctrl[1] && !ctrl[3] || !ctrl[2] ? p1[19 + s2] : p1))}, ({2{((ctrl[0] && !ctrl[1] && ctrl[0] ? (x3 ^ p3[7 + s0]) : x3[14 +: 3]) + p0[16 + s3])}} | p1[19])};
  assign x6 = p1;
  assign x7 = (x6[15 -: 4] + ((x6 + (ctrl[1] || ctrl[2] && ctrl[3] ? p0[16 + s2] : {2{x4[9]}})) - {(x3[19 + s3 +: 5] & p3[12 +: 3]), {(x1[7 + s2 +: 7] & x5[5 + s2]), p1[29 + s0 -: 4]}}));
  assign x8 = ((x5[15 +: 3] - x3[28 + s2 -: 8]) | (((x2[21 + s1 -: 3] & {2{x2[11]}}) & ({2{p2}} + {2{(p1 ^ x2[16 + s0])}})) + ((ctrl[3] || !ctrl[2] && !ctrl[2] ? p0 : (!ctrl[0] || !ctrl[1] && !ctrl[2] ? (x5[14 + s0 +: 8] - p2[16 -: 4]) : p3[1 + s1 +: 8])) - (ctrl[1] && !ctrl[3] || !ctrl[0] ? x1[2 + s1 -: 5] : p1[16 +: 1]))));
  assign x9 = {2{p3[18 +: 3]}};
  assign x10 = p1[7 + s3 -: 7];
  assign x11 = x0[10 +: 1];
  assign x12 = (ctrl[1] || !ctrl[1] || !ctrl[1] ? p3 : (p2[23] ^ p2[15]));
  assign x13 = (((!ctrl[0] && !ctrl[3] || !ctrl[1] ? ({2{p2[31 + s1 -: 5]}} | (x10[10 + s3] & x8[16 -: 4])) : ({2{p3[15 + s3]}} + {2{x2}})) & p1[12 + s3 -: 5]) + p2);
  assign x14 = x9[13 +: 1];
  assign x15 = {x7, (p0[12 + s3] | {2{{{2{x4[16 +: 4]}}, p1[16 -: 1]}}})};
  assign y0 = {2{{x6, x0[6 + s2]}}};
  assign y1 = x6[19 +: 3];
  assign y2 = p3[18 +: 4];
  assign y3 = p3[16];
endmodule
