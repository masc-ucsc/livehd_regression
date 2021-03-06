module partsel_00724(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [24:6] x4;
  wire signed [28:2] x5;
  wire [6:25] x6;
  wire signed [5:25] x7;
  wire signed [4:26] x8;
  wire [2:28] x9;
  wire signed [6:31] x10;
  wire signed [0:27] x11;
  wire signed [7:24] x12;
  wire signed [0:26] x13;
  wire [4:27] x14;
  wire [30:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:24] p0 = 899034439;
  localparam signed [3:26] p1 = 533467225;
  localparam [5:27] p2 = 584874912;
  localparam signed [7:30] p3 = 601622470;
  assign x4 = p1[26 + s0 +: 2];
  assign x5 = x2[28 + s2 -: 5];
  assign x6 = ((x0[26 + s2 +: 6] - p2[17 +: 4]) ^ {(ctrl[0] || ctrl[2] || !ctrl[0] ? p3[12 -: 1] : ((p0[10] & p1[12]) + (x2[11 + s3 -: 2] - p1[12 + s0 -: 4]))), x1[16 -: 4]});
  assign x7 = {2{x2[14 + s0]}};
  assign x8 = (((p0 ^ ({p0[13], x6[15 +: 2]} | (ctrl[3] || ctrl[0] && !ctrl[3] ? (p2[15 + s0 +: 3] | x0) : x4[20]))) & p3[14 + s1 +: 6]) ^ {2{(ctrl[1] && !ctrl[0] && !ctrl[0] ? (ctrl[0] && ctrl[1] || ctrl[3] ? p2[28 + s3 -: 4] : (x6[7 + s3 -: 5] + x4)) : {{p3[16], x5[8 + s3 -: 7]}, {p3[15 +: 1], (((x5 & x0[21 + s1 +: 4]) & p3[9]) & p0[19 +: 2])}})}});
  assign x9 = (p3[18] | {2{(ctrl[0] || ctrl[1] && ctrl[3] ? {x4, {2{(x5[14 +: 4] ^ x8[20 -: 1])}}} : (!ctrl[2] || !ctrl[1] && !ctrl[3] ? p0[14 + s2] : ((x3[17 +: 1] + p0) - x4[21 + s1 +: 5])))}});
  assign x10 = x0[4 + s1];
  assign x11 = x7[19 + s3];
  assign x12 = p3[13 + s0 +: 6];
  assign x13 = {p3, x6[9 + s1 -: 6]};
  assign x14 = p0;
  assign x15 = x2[11];
  assign y0 = x6[23 -: 2];
  assign y1 = ((((x9[11 +: 4] ^ {2{x3[8 + s0]}}) | (x9[19] & {2{p1[11 +: 3]}})) + (x1[9 + s0] ^ {p0[13], p0[18 +: 3]})) | p3[13 -: 1]);
  assign y2 = x0;
  assign y3 = ((p2[14 -: 2] & ({{2{(((x0[10 + s1 -: 2] ^ (x10 + x4[18])) ^ p1[19 -: 4]) ^ ((p3[25 + s0 -: 4] & x14[8 +: 4]) | (x7 ^ (x13[15 -: 4] + p3))))}}, x10[25 + s0 +: 1]} + (p1[19 + s0] ^ (ctrl[1] && !ctrl[3] && !ctrl[3] ? x8 : x3[22])))) - p0[14 + s0 +: 3]);
endmodule
