module partsel_00354(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [6:28] x4;
  wire signed [3:30] x5;
  wire [30:4] x6;
  wire [27:4] x7;
  wire signed [5:31] x8;
  wire signed [25:2] x9;
  wire signed [4:25] x10;
  wire [2:24] x11;
  wire [3:24] x12;
  wire signed [29:4] x13;
  wire signed [4:24] x14;
  wire [28:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:30] p0 = 779629111;
  localparam signed [28:4] p1 = 642155143;
  localparam signed [1:27] p2 = 892186786;
  localparam [31:4] p3 = 314721697;
  assign x4 = p1[13 + s3 -: 1];
  assign x5 = ({(x3[11] & (p2[15 -: 2] | {x1[15 +: 2], x3[16 + s2]})), (x1[8 + s2 -: 8] - ({(x3[27 + s3 +: 2] | x2[19 -: 2]), p2[8 + s1 +: 8]} & (x1 & p0[18 + s0])))} & x4[8]);
  assign x6 = {(!ctrl[0] || !ctrl[2] && ctrl[1] ? p1[4 + s3 -: 7] : p2), {x5, p3[27 + s3 +: 2]}};
  assign x7 = p1[12 +: 2];
  assign x8 = {{(!ctrl[0] && ctrl[0] && ctrl[3] ? {x2[30 + s1 +: 7], p0[20 -: 1]} : (p0[22 -: 2] - p1[28 + s2 -: 8])), (x5[24 + s0 -: 4] & x5[2 + s1 +: 4])}, (ctrl[2] || ctrl[3] && ctrl[0] ? {p1, {(p3[16 + s1 -: 5] ^ p3[11 + s0]), (x2[17 +: 2] & p1)}} : {{2{p2}}, x0[13 + s2]})};
  assign x9 = (ctrl[1] && ctrl[2] || ctrl[3] ? (((!ctrl[2] || !ctrl[3] && !ctrl[2] ? p3[14] : ((x1[20 -: 3] & x8[5 + s3 -: 3]) ^ (p3[9 + s3] & x2))) & x7[22]) ^ p0[29 + s2 +: 2]) : {2{(x0[10 +: 3] ^ ({2{x0[1 + s2 -: 6]}} + p0[13]))}});
  assign x10 = {((({2{p2[14 -: 1]}} & (p0 + p0[13 +: 3])) - x6[12 -: 1]) - {p1, ({2{p1[14]}} + p3[6 + s3])}), {2{{x3[11 + s1], p3[16 -: 1]}}}};
  assign x11 = x2[7 + s1 +: 1];
  assign x12 = {2{p2[9]}};
  assign x13 = (ctrl[2] || !ctrl[0] && !ctrl[3] ? p2[12 + s3 -: 5] : p0);
  assign x14 = x6[30 + s3 -: 4];
  assign x15 = x13[19 +: 4];
  assign y0 = (x8 - p1);
  assign y1 = (({x9[29 + s3 +: 7], ((p0 & p2[14 -: 2]) + (x0[23 + s1 -: 2] & x0[20 + s1 -: 6]))} ^ p3[14 -: 2]) + ((((!ctrl[2] || !ctrl[0] || ctrl[3] ? (p1[10 +: 3] | (p2[17] - p2[19 +: 3])) : ((x3[13] - x9) | (p3[18 + s2] ^ p0[18 +: 4]))) + p1[18]) ^ (p0[19] & {2{x9[8 + s1 -: 8]}})) + ((!ctrl[0] && ctrl[0] || ctrl[1] ? x10[15 -: 1] : p0[8]) & (ctrl[1] || ctrl[0] || !ctrl[2] ? p2[20 + s1 +: 2] : (x3[17 + s1 -: 3] & x0[17 +: 1])))));
  assign y2 = ({(ctrl[0] && !ctrl[3] && !ctrl[2] ? (!ctrl[2] && ctrl[1] && !ctrl[3] ? (p1 ^ ((p1[12 -: 3] ^ p2[26 + s0 -: 4]) ^ p2[19 + s2 -: 8])) : (p1[15 + s0] ^ p1)) : (p0 & p0[11 + s0])), p2[11 + s2]} ^ (x12[9 + s0] + p1[10 +: 2]));
  assign y3 = (!ctrl[2] || !ctrl[3] || ctrl[1] ? x7[30 + s1 +: 7] : {(x12[18 -: 1] ^ {2{{2{p1}}}}), x8[10 + s2]});
endmodule
