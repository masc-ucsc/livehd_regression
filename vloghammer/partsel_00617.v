module partsel_00617(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [29:7] x4;
  wire signed [24:7] x5;
  wire [29:3] x6;
  wire signed [25:0] x7;
  wire signed [24:2] x8;
  wire signed [28:1] x9;
  wire signed [24:2] x10;
  wire signed [29:2] x11;
  wire signed [24:0] x12;
  wire [24:2] x13;
  wire [31:3] x14;
  wire [0:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:7] p0 = 192203002;
  localparam signed [31:7] p1 = 771569672;
  localparam [3:25] p2 = 450018904;
  localparam [28:6] p3 = 551311724;
  assign x4 = ((!ctrl[2] && !ctrl[1] && !ctrl[0] ? x1[17 + s0 +: 2] : {2{p3[29 + s3 +: 7]}}) + p1[16]);
  assign x5 = x3;
  assign x6 = ((ctrl[2] && ctrl[0] || ctrl[2] ? x2[21 -: 1] : p2[15 +: 4]) + p2[16]);
  assign x7 = (({2{(!ctrl[3] && ctrl[1] && ctrl[3] ? (x1 ^ x5[4 + s1]) : ((x6[7 + s3] + p2) ^ p1))}} ^ x0[30 + s2 +: 2]) & p2[19]);
  assign x8 = (((p1[22] & (x5[6 + s1 +: 6] - (x3[7 + s1] & p3))) & ({2{x3[14 + s2]}} ^ ((x7[10 + s2] + p1[28 + s0 +: 6]) + p0))) | (ctrl[2] && ctrl[2] || ctrl[0] ? x0[13 + s0 -: 4] : (ctrl[2] || !ctrl[0] || ctrl[3] ? {p0, x6[20 -: 4]} : p2[21 -: 2])));
  assign x9 = x3;
  assign x10 = ((!ctrl[1] || !ctrl[0] || ctrl[1] ? p2[20 + s1 +: 7] : {2{{2{p0[16 + s2 -: 3]}}}}) ^ x7[11 + s0 +: 2]);
  assign x11 = (p2[25 + s2 +: 6] | ({2{x10[29 + s1 -: 3]}} & (((p1 & p1[21]) - {p2, x8[16 + s3]}) & {2{(!ctrl[2] || !ctrl[3] && !ctrl[0] ? (p3[20] | p3[23 -: 2]) : p1[6 + s2])}})));
  assign x12 = p3[13 + s0];
  assign x13 = p1;
  assign x14 = p1[17];
  assign x15 = (((x3[18] + (x0[1 + s3 +: 3] ^ p3[12])) - (!ctrl[3] || !ctrl[1] || !ctrl[3] ? p0[13 -: 2] : ({x1[12 -: 4], p0[26 + s0 +: 1]} - x7[0 + s1 -: 4]))) ^ x0[9 + s1]);
  assign y0 = x14;
  assign y1 = (x10[14] & (({(p1[9 +: 3] - p2[14 +: 4]), p3} & (p3[19 + s2] - ((p2[21] - p0[9 + s1]) ^ x1[21 + s1 +: 4]))) + x4));
  assign y2 = {2{p3}};
  assign y3 = (p1[23] & (ctrl[0] && ctrl[2] && !ctrl[2] ? (p2[19 -: 4] + {2{{2{p0[20 -: 3]}}}}) : (ctrl[3] && !ctrl[3] || !ctrl[0] ? {2{(x12[10] & x0[12])}} : {(!ctrl[3] || !ctrl[2] && !ctrl[2] ? p2[20 -: 1] : p0[20 + s1 +: 5]), (p3[9 + s3 +: 2] + p1[14 + s1 -: 4])})));
endmodule
