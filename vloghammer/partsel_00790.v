module partsel_00790(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [28:6] x4;
  wire [2:28] x5;
  wire [27:5] x6;
  wire signed [28:7] x7;
  wire signed [28:6] x8;
  wire [30:7] x9;
  wire signed [5:30] x10;
  wire signed [31:0] x11;
  wire signed [30:3] x12;
  wire signed [2:28] x13;
  wire signed [25:1] x14;
  wire signed [6:24] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [0:25] p0 = 904105417;
  localparam signed [25:7] p1 = 826033285;
  localparam signed [3:29] p2 = 435558812;
  localparam [7:27] p3 = 425653607;
  assign x4 = p1;
  assign x5 = x2[13 + s1];
  assign x6 = p1[19];
  assign x7 = (!ctrl[0] || ctrl[1] && !ctrl[3] ? (ctrl[0] || !ctrl[1] && !ctrl[0] ? (ctrl[0] || ctrl[1] || !ctrl[2] ? {2{(x5[29 + s0 -: 4] | (p3 | (p3[9] & x2[23])))}} : ((ctrl[3] || !ctrl[3] && !ctrl[2] ? x1[14 +: 4] : x0[18 +: 4]) - ((x5[13 -: 1] ^ p1[15 -: 3]) - x3[3 + s3 +: 2]))) : {2{((x4[13 + s2 -: 4] ^ x6[1 + s0 +: 7]) & x3[13 -: 1])}}) : x5[10 +: 1]);
  assign x8 = (ctrl[2] && !ctrl[1] && !ctrl[0] ? {{2{x2[17 +: 3]}}, p2[12 + s0]} : ({x0[16 + s0 -: 1], {2{x2[12]}}} & x2[13 + s0 -: 5]));
  assign x9 = p1[22];
  assign x10 = {2{({2{{2{(!ctrl[2] || ctrl[2] || !ctrl[2] ? p1[23] : (x0[9 +: 2] | p1))}}}} + ({(((p3[13 + s3 +: 2] - x3[18]) + x6[12]) - p2[17]), p1[15]} - x0[14]))}};
  assign x11 = ((!ctrl[2] || ctrl[3] || ctrl[3] ? {x7[9], ({2{p3[5 + s3 +: 3]}} & (x1[5 + s1] & ((x7[14 -: 1] - p0) + x5[20])))} : x2) - {(({2{x0[15 +: 2]}} | (p3 | ((x10 | p3[10 + s0 +: 2]) & p1[2 + s1 +: 1]))) & x4[18 + s1 +: 3]), p3[18 +: 2]});
  assign x12 = (x9[12 + s2] & (p3[5 + s2 +: 6] | p1[15 -: 2]));
  assign x13 = (((({2{p1}} + x7[13]) & ({2{p3}} & x1)) | (((x11[8 + s2 -: 2] - p1[20]) - p1) ^ {(p0[9 + s0 -: 6] - p1), {x7, p2[31 + s0 +: 4]}})) & ((p3[15 +: 1] | {2{x6[5 + s1 +: 3]}}) + x2));
  assign x14 = (ctrl[0] || !ctrl[1] || !ctrl[3] ? ((({2{p2[23]}} ^ (p3[9] ^ x7[14 -: 2])) & x6[15 -: 4]) + x9[12]) : (x9[11 + s3 +: 7] | ({(!ctrl[1] || !ctrl[3] || ctrl[0] ? ((x2[23 -: 1] - ((p1 & x8[24 + s3 -: 7]) ^ x12[11 +: 1])) + x5[18 + s0 -: 1]) : (p3[21 -: 2] - x10[14 + s3 +: 6])), p0[18]} ^ p1)));
  assign x15 = (!ctrl[0] || ctrl[2] && ctrl[2] ? {(!ctrl[0] || !ctrl[2] || !ctrl[3] ? (p0 ^ p1) : ((p1[15 +: 4] ^ (x12[21] ^ p3[31 + s0 -: 8])) & {x10[14 -: 2], p0})), x0[8 + s1 +: 3]} : x5[23 -: 4]);
  assign y0 = p3[19 +: 4];
  assign y1 = p2[16 + s1];
  assign y2 = {{(x10[11 +: 4] & (ctrl[0] && ctrl[2] || ctrl[3] ? (ctrl[3] || ctrl[2] && ctrl[1] ? x12[9 + s0] : x11[14 -: 4]) : {p1[8 +: 3], x14[17 + s3 -: 2]})), x8[16 + s2]}, (({2{p1[9 + s1 -: 5]}} + {2{p0[16 + s2]}}) & x13[12 + s2 -: 7])};
  assign y3 = p1[13 +: 4];
endmodule
