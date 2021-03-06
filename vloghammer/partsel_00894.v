module partsel_00894(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [1:26] x4;
  wire signed [26:3] x5;
  wire signed [31:0] x6;
  wire signed [3:30] x7;
  wire signed [5:30] x8;
  wire signed [24:5] x9;
  wire signed [24:6] x10;
  wire signed [3:25] x11;
  wire [5:29] x12;
  wire signed [3:25] x13;
  wire [27:1] x14;
  wire signed [0:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:24] p0 = 992728223;
  localparam [1:26] p1 = 31183495;
  localparam [25:0] p2 = 585943365;
  localparam [27:6] p3 = 158212587;
  assign x4 = p1[14 +: 3];
  assign x5 = (p2[12 +: 1] & x1[13 + s3]);
  assign x6 = (p1 - x2);
  assign x7 = {2{({{(x0[14] - p3[21 + s2 -: 5]), (x0[6 + s1 +: 3] ^ x2[12 + s1])}, (ctrl[0] && !ctrl[3] || ctrl[0] ? (ctrl[0] || !ctrl[1] || ctrl[2] ? x4 : x6[12 +: 2]) : x4[6 + s3])} | x6[15 + s3 -: 5])}};
  assign x8 = p3[12 +: 4];
  assign x9 = {2{({({2{p1}} & (ctrl[1] && ctrl[3] || !ctrl[0] ? p1 : p0[22 -: 1])), (!ctrl[2] || ctrl[0] && !ctrl[0] ? x2 : p3[10 +: 4])} - x5[9 + s1 -: 4])}};
  assign x10 = (!ctrl[0] && !ctrl[3] && !ctrl[0] ? x3[14 -: 1] : ((x0[19 + s2] + {p3[19 +: 1], x6[17]}) - ((!ctrl[2] || !ctrl[1] && !ctrl[3] ? {p1[13 + s3], p0[23]} : (!ctrl[2] && ctrl[0] && ctrl[0] ? (p1[19] - p2[15]) : p3[15 + s2])) + {{p1[17 + s3], p3[26 + s2 +: 3]}, {x6[14], p3[18 + s1]}})));
  assign x11 = (ctrl[1] || !ctrl[0] && ctrl[0] ? {2{((ctrl[0] || ctrl[2] && !ctrl[3] ? {(p0[25 + s3 -: 7] - x2), ((x0[20 -: 3] ^ p3[21 -: 1]) ^ (x3[15 + s2] ^ p2[28 + s0 -: 3]))} : (p2[22 + s3 -: 7] & p3[9 + s2 +: 2])) & ((((x8[19 + s1 +: 6] - (p0 - x4[22 + s1 -: 6])) ^ p3[22]) & (x3 ^ p0[16])) - (x1[20 -: 3] | x5[18 -: 4])))}} : {p2[19 + s1 +: 7], p2});
  assign x12 = ({{(!ctrl[2] && !ctrl[0] || ctrl[3] ? p1[13 +: 1] : (!ctrl[2] && ctrl[2] || ctrl[1] ? (x5 + p1) : p3[11])), (ctrl[1] || !ctrl[1] && !ctrl[1] ? (ctrl[1] && !ctrl[1] && ctrl[1] ? p3[10 +: 3] : p1[8 +: 3]) : (ctrl[1] && ctrl[2] || ctrl[1] ? p3 : p3))}, p0[25 + s1 +: 5]} & (!ctrl[3] && !ctrl[2] || ctrl[3] ? x1[6 + s1] : (((p3[19] + p1[16]) - {(p0[18 -: 2] + x11[1 + s2 +: 5]), x9[19 + s2]}) + p1[11 +: 3])));
  assign x13 = ((x0 - ((((x1[17 +: 4] & x12[9 +: 2]) - p2) + (x5[13 + s3 -: 3] ^ p0[23 + s2 +: 3])) - (ctrl[1] || ctrl[3] && ctrl[3] ? {(p3[12 + s3 -: 8] + p0[2 + s1 -: 6]), x8[4 + s0 +: 8]} : (ctrl[3] || !ctrl[1] && !ctrl[0] ? (x6[17 + s3 -: 1] + x11[23]) : x9[9 + s1])))) - x5[19 -: 2]);
  assign x14 = x10;
  assign x15 = ((p1 & {2{{2{(ctrl[2] && ctrl[1] && ctrl[3] ? x10[10] : p0[13 +: 2])}}}}) | (ctrl[0] || !ctrl[0] || ctrl[2] ? {2{{x12[18 -: 4], ((p3[10 + s2 +: 2] | p3[23 + s3 +: 4]) ^ x1[3 + s2 -: 5])}}} : {{2{{p0[19 +: 2], x2[17 + s0]}}}, x2}));
  assign y0 = (ctrl[3] || ctrl[0] || ctrl[3] ? x12[18 + s0] : (x12 & (p2[9 + s1] + ((x6 | x3[19 + s0]) - {2{x14[16 -: 3]}}))));
  assign y1 = p1;
  assign y2 = x14;
  assign y3 = (((((x11[19 + s2] | x13[11]) ^ p0) + p3) ^ {p1[29 + s2 -: 8], (!ctrl[3] || !ctrl[3] || ctrl[2] ? {x0, p0[13 + s3 +: 1]} : x12[13 +: 3])}) - x14);
endmodule
