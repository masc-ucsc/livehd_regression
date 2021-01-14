module partsel_00675(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [24:6] x4;
  wire signed [4:29] x5;
  wire signed [2:28] x6;
  wire signed [1:26] x7;
  wire signed [4:30] x8;
  wire signed [0:31] x9;
  wire [31:1] x10;
  wire [24:1] x11;
  wire [4:30] x12;
  wire signed [30:6] x13;
  wire [26:2] x14;
  wire [30:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:2] p0 = 140175633;
  localparam [5:26] p1 = 203029928;
  localparam [2:25] p2 = 582672361;
  localparam [31:1] p3 = 164626900;
  assign x4 = ((x2[4 + s2] & p0[15 + s2 +: 5]) - x1);
  assign x5 = {x2[22 + s1 +: 7], x2};
  assign x6 = {x4[13 + s3], p1};
  assign x7 = (ctrl[2] && ctrl[2] || !ctrl[1] ? (ctrl[3] && !ctrl[3] && !ctrl[2] ? p0 : {2{x3}}) : ((x5[9] & (!ctrl[3] || ctrl[1] && ctrl[3] ? x3[10 +: 2] : p1[19 + s0 -: 7])) | (ctrl[1] || !ctrl[3] || !ctrl[3] ? ((p0[28 + s2 -: 2] + x2) & (x1[19 +: 2] + p3[23 + s0 -: 1])) : x6[15 -: 1])));
  assign x8 = (({2{(!ctrl[1] || !ctrl[2] && !ctrl[0] ? x2[23] : {2{p2[6 + s2 +: 3]}})}} + x1[16 +: 2]) + ((p1 + (!ctrl[1] || ctrl[3] || !ctrl[1] ? p1 : (p2[8] - x3[18]))) - p0[29 + s1 +: 8]));
  assign x9 = x7[7 + s2 +: 3];
  assign x10 = {2{p3[8 + s1 +: 8]}};
  assign x11 = (!ctrl[0] && !ctrl[2] || ctrl[3] ? (p1[24 + s2 -: 5] | (p3[13 +: 4] - p3[15 + s3 -: 7])) : p3[2 + s1 -: 7]);
  assign x12 = p0[11 + s2];
  assign x13 = {(x4 - x10[17 -: 4]), p3[16 -: 2]};
  assign x14 = x11;
  assign x15 = (ctrl[2] && ctrl[3] || ctrl[1] ? x3[22 + s3 +: 5] : ((ctrl[3] && !ctrl[1] || !ctrl[2] ? x2[21 -: 4] : p1[23 + s0 +: 7]) ^ p2));
  assign y0 = ((!ctrl[2] || ctrl[2] && !ctrl[0] ? x2[20 + s0 +: 1] : x3[16 -: 2]) & (((!ctrl[0] || !ctrl[3] && ctrl[1] ? x1 : p1[11 + s1 +: 5]) & {x12, (ctrl[0] && !ctrl[1] && !ctrl[1] ? x12 : x13[10])}) - {2{{2{(p3[15 + s0 +: 5] + x12[27 + s1 +: 5])}}}}));
  assign y1 = x13[15 + s3];
  assign y2 = ((ctrl[0] || ctrl[0] || !ctrl[2] ? (ctrl[2] && ctrl[1] && ctrl[1] ? p2[4 + s1] : p2) : (((p2[13 + s3] & x1[22 -: 1]) + p0) ^ p2[8])) + {{p2[8], x7[13 + s3]}, x2[15 +: 1]});
  assign y3 = ({2{(p2[26 + s0 -: 8] | (!ctrl[2] && !ctrl[1] && !ctrl[3] ? (p1[8 +: 3] | p0[3 + s0 +: 4]) : (ctrl[2] || !ctrl[3] || !ctrl[1] ? p2 : p0[22 + s3 +: 2])))}} | {2{(!ctrl[0] || ctrl[3] || ctrl[2] ? p1[31 + s2 -: 5] : (!ctrl[2] && ctrl[0] && !ctrl[3] ? (x7[5 + s1 +: 1] & p3[0 + s1 +: 2]) : (x3[16 +: 1] & x14[31 + s2 -: 8])))}});
endmodule
