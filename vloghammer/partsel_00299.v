module partsel_00299(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [7:24] x4;
  wire signed [26:6] x5;
  wire [5:29] x6;
  wire [28:6] x7;
  wire [25:5] x8;
  wire signed [25:5] x9;
  wire [2:31] x10;
  wire [31:5] x11;
  wire [3:27] x12;
  wire signed [4:25] x13;
  wire [0:29] x14;
  wire [7:30] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:30] p0 = 170709302;
  localparam signed [2:27] p1 = 575403445;
  localparam [27:4] p2 = 261888130;
  localparam signed [28:3] p3 = 788319421;
  assign x4 = ((ctrl[2] || !ctrl[2] && ctrl[3] ? {2{((ctrl[3] && ctrl[3] || ctrl[3] ? x1[4 + s3] : p2[10 + s2 -: 2]) + {2{(p2 ^ p1)}})}} : p1) + ((((!ctrl[3] && !ctrl[0] && !ctrl[0] ? p3[8 +: 4] : x3[12 + s1 +: 7]) | (p2[0 + s1 -: 8] + p2)) | (p1[29 + s1 -: 5] | p3[21])) | x0));
  assign x5 = {2{(x4[16 + s0 +: 7] - x2[13 +: 3])}};
  assign x6 = p0[14 -: 2];
  assign x7 = x5[9 + s2 +: 7];
  assign x8 = x7[25 + s2 -: 6];
  assign x9 = ({{2{x6[26 + s3 -: 7]}}, {x1[23 + s3 -: 7], {(!ctrl[3] || ctrl[3] && !ctrl[1] ? x6[19 -: 1] : p3), (x2[10 + s2 -: 7] ^ (p3[12 + s1 +: 1] ^ (x6 & (x7[10 + s3] - p3[17]))))}}} ^ x5);
  assign x10 = ((ctrl[3] || !ctrl[1] && !ctrl[3] ? (x1[12 + s2 +: 1] - p1[22 -: 2]) : (((p3[15 +: 4] ^ p2[7 + s3]) + (p0[12] + x6[12 -: 3])) + {2{p0[6 + s1 -: 3]}})) & {x8[4 + s0], p0[22]});
  assign x11 = ((x8[15 + s2] ^ x5[5 + s1 -: 1]) & {2{{2{p2[18 -: 4]}}}});
  assign x12 = x3[6 + s2 +: 8];
  assign x13 = ((((ctrl[1] && !ctrl[0] || ctrl[3] ? (p0 & x11[11 + s2 +: 4]) : (x3[16 +: 3] - x10[14 +: 1])) & x3) & (x8[13 -: 3] + {((((p1[19 +: 3] & x1[17 + s1 -: 1]) | p2) + x12[5 + s2 -: 5]) | x4[14 -: 2]), p0})) - p2);
  assign x14 = {2{(p0[30 + s3 -: 6] - (p0 - p3))}};
  assign x15 = {(((x5[4 + s2 -: 5] & (((x13[13 +: 2] ^ x14[6 + s2 -: 1]) & p2[18 -: 4]) + p1[15 + s2])) - p2[19 +: 1]) | p0[22 -: 2]), x0[15 +: 1]};
  assign y0 = p2[14 + s1];
  assign y1 = p1[7 + s0];
  assign y2 = {{2{{2{x0}}}}, ((ctrl[3] || ctrl[3] && !ctrl[3] ? (p2 & {(p3 & p1), p3[13 + s2]}) : {{2{p3[15 + s1]}}, (p2 | p1[14 +: 1])}) & {(ctrl[3] || ctrl[2] && !ctrl[0] ? p0[9 + s2] : (x5 + ((x12[12 +: 3] ^ p1[22]) - p1))), p3})};
  assign y3 = x7;
endmodule
