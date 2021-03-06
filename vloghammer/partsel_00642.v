module partsel_00642(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [0:27] x4;
  wire [24:7] x5;
  wire [29:3] x6;
  wire signed [2:26] x7;
  wire signed [1:30] x8;
  wire signed [24:0] x9;
  wire [28:4] x10;
  wire [25:1] x11;
  wire signed [0:24] x12;
  wire [7:27] x13;
  wire signed [3:26] x14;
  wire [6:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [5:28] p0 = 326588410;
  localparam signed [1:26] p1 = 291097595;
  localparam signed [30:6] p2 = 296569544;
  localparam signed [24:4] p3 = 678644210;
  assign x4 = x2[9 +: 1];
  assign x5 = {x3[1 + s1 +: 3], {({2{(p1[29 + s1 +: 4] & (p1[15] - p1[13 + s1]))}} - p1), p0[13 + s2]}};
  assign x6 = p2;
  assign x7 = p1[15];
  assign x8 = ({x5[11 + s1], (x6[23] ^ (ctrl[1] || ctrl[3] || ctrl[0] ? p2 : x2[5 + s2]))} + x6[19 + s3 -: 4]);
  assign x9 = (!ctrl[3] && ctrl[1] || !ctrl[3] ? p2 : (!ctrl[1] && !ctrl[1] && !ctrl[2] ? x8[18 + s0] : {2{x3[9 + s0 +: 8]}}));
  assign x10 = (p2[10 + s0] | {2{x6}});
  assign x11 = {2{p3[21 -: 1]}};
  assign x12 = ((ctrl[0] || ctrl[2] || !ctrl[1] ? p0 : x11) ^ p1);
  assign x13 = {2{x9[30 + s1 +: 4]}};
  assign x14 = ((((p0[15 +: 3] & (x12[8 +: 4] - p0[27 + s1 -: 1])) ^ ({p2[16 + s1], p2[4 + s2 -: 8]} & x11[19 +: 3])) | ((!ctrl[3] && !ctrl[1] && ctrl[3] ? p0[22 + s1 -: 7] : {x5, x12[19 -: 3]}) ^ (p0[16] + (p1[18 +: 3] | p3)))) ^ ((!ctrl[3] || !ctrl[3] || ctrl[1] ? {x9, (p1 | p3)} : p2[19]) | {x8[21 -: 1], p3[12 -: 3]}));
  assign x15 = (x7 - x6);
  assign y0 = (!ctrl[2] && ctrl[1] || ctrl[3] ? x5[15 + s3] : {2{p3[9 +: 1]}});
  assign y1 = x11;
  assign y2 = (ctrl[0] || ctrl[2] || !ctrl[0] ? (!ctrl[3] || !ctrl[0] || ctrl[0] ? p0[31 + s2 -: 1] : x1[15]) : ((p1[19 +: 4] & x14[4 + s3 +: 5]) ^ {2{x8[18 +: 1]}}));
  assign y3 = (((x13[23 + s0 -: 6] | x13[24 + s2 -: 5]) - {(x8 ^ (x7[18 +: 1] - p2[27 + s2 -: 1])), (x4[11 + s3] ^ x6[25 + s1 +: 6])}) ^ ({x14[31 + s3 +: 7], p0[7 + s2 -: 8]} - x10[18 + s0]));
endmodule
