module partsel_00145(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [7:26] x4;
  wire [4:28] x5;
  wire signed [1:27] x6;
  wire signed [3:26] x7;
  wire signed [25:6] x8;
  wire [27:0] x9;
  wire [7:29] x10;
  wire signed [24:7] x11;
  wire signed [3:28] x12;
  wire signed [29:6] x13;
  wire [7:29] x14;
  wire [3:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:6] p0 = 105253915;
  localparam [27:5] p1 = 305213860;
  localparam [25:5] p2 = 1156107;
  localparam signed [7:31] p3 = 671664820;
  assign x4 = p3[13 -: 2];
  assign x5 = x3[8];
  assign x6 = x4[31 + s2 +: 4];
  assign x7 = {(x4[14] | p2), (ctrl[0] || !ctrl[1] || ctrl[3] ? {2{x6[16 + s1]}} : (!ctrl[1] || !ctrl[1] && ctrl[2] ? x4[9 +: 4] : {2{x6[19 + s1]}}))};
  assign x8 = x1[19 + s2 +: 1];
  assign x9 = ((p2[15 +: 1] ^ (({p2, x3[14 + s0]} ^ p1[10 + s0 +: 8]) & (!ctrl[0] && ctrl[3] && ctrl[1] ? x4[12 -: 3] : x6[8 +: 1]))) - (!ctrl[3] && ctrl[3] && ctrl[1] ? p1[16 + s1 +: 8] : x3));
  assign x10 = p2;
  assign x11 = ((ctrl[2] || ctrl[0] || !ctrl[3] ? {2{{2{((x3[14 -: 1] ^ p1[21 + s3 -: 5]) + p3[4 + s1])}}}} : {({x5[22 -: 4], p1[9 + s2]} & (!ctrl[3] && !ctrl[3] || ctrl[2] ? ((x8 ^ p2) + (x1[6 + s1 +: 7] - x5[19 -: 3])) : x7)), p1[29 + s0 -: 6]}) | p3[25 + s1 -: 6]);
  assign x12 = x2[6 + s0];
  assign x13 = (ctrl[3] || !ctrl[0] && ctrl[3] ? x0 : (!ctrl[2] || !ctrl[3] && !ctrl[1] ? ({2{x11}} ^ x3) : x0[18 +: 1]));
  assign x14 = x0[4 + s3 +: 1];
  assign x15 = (ctrl[2] && !ctrl[1] || ctrl[2] ? {x7[19 + s1], {x1, (x9[19] + (p1[13 +: 1] + p2[21 + s2 -: 8]))}} : p3);
  assign y0 = p0[12 + s3];
  assign y1 = {2{x1}};
  assign y2 = p0[5 + s3 +: 7];
  assign y3 = (x15 + {2{p2[14 + s3 +: 6]}});
endmodule
