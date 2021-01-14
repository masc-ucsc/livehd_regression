module partsel_00390(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [31:4] x4;
  wire signed [31:3] x5;
  wire signed [0:28] x6;
  wire signed [7:24] x7;
  wire signed [7:28] x8;
  wire [28:0] x9;
  wire signed [3:25] x10;
  wire [5:31] x11;
  wire signed [25:2] x12;
  wire [24:6] x13;
  wire signed [4:29] x14;
  wire [5:27] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:6] p0 = 543125840;
  localparam signed [26:0] p1 = 69365639;
  localparam [29:2] p2 = 980703755;
  localparam [6:25] p3 = 684012543;
  assign x4 = (!ctrl[2] && ctrl[3] || ctrl[1] ? ({({2{x3[12 -: 2]}} ^ (x3[12 + s3 +: 6] + x3)), {2{((p2[7 + s1 +: 2] & ((p3[31 + s1 -: 7] - p3[7 + s1 +: 6]) ^ x2[9 + s1 -: 1])) - ((p2[13 + s2] & p2[21 -: 1]) ^ x1[23]))}}} - p0[14 -: 4]) : {p0, {2{((p0[17 -: 2] - (p3[23] + p1[24 + s3 +: 2])) + p2[8])}}});
  assign x5 = p0[4 + s0];
  assign x6 = p3[14];
  assign x7 = {2{x5[28 + s0 +: 2]}};
  assign x8 = x4[8 + s1];
  assign x9 = (ctrl[1] && !ctrl[2] && ctrl[1] ? p2 : {2{(!ctrl[3] && ctrl[1] || !ctrl[1] ? p1[14 -: 2] : {{p3[15 + s1], p1[17]}, p1})}});
  assign x10 = (({2{(x6[3 + s1 -: 5] - p2[10 + s1])}} + x5[14 +: 2]) + x1[7 + s1]);
  assign x11 = {{2{(p2 | p2[0 + s2 +: 5])}}, ({2{p3[25 + s3 +: 5]}} & (!ctrl[2] && !ctrl[2] && ctrl[1] ? ((x4 ^ p0) | x8[9 + s2]) : ((p0[17] ^ (x2 | x2[16 -: 2])) + (p3 + x5[18 -: 4]))))};
  assign x12 = p3[16 -: 4];
  assign x13 = {2{(!ctrl[0] || !ctrl[2] || ctrl[2] ? ((p1[6 + s2] ^ (ctrl[3] || !ctrl[2] || ctrl[0] ? p2[15 +: 1] : p3)) + p0) : x12[16 +: 3])}};
  assign x14 = {{2{p1[8 + s1 +: 5]}}, ((x8[21 + s3 +: 8] ^ x1) + x9[4 + s1])};
  assign x15 = {({(!ctrl[2] && ctrl[1] && ctrl[1] ? p1[13 + s3] : (p0[16 -: 2] & p1)), p3} | p1[19 + s0]), (p0[18 + s1] & x0[12 +: 4])};
  assign y0 = x10[5 + s3];
  assign y1 = (!ctrl[0] && ctrl[1] && ctrl[3] ? x15[20] : ((p0[18 +: 3] - p2) + ((ctrl[3] || ctrl[0] && !ctrl[2] ? (p1[31 + s0 +: 1] ^ p2[22 -: 2]) : (x15[18] - x0[8 + s0])) | ((x7[21] | x13[18 + s1]) | (!ctrl[2] || ctrl[3] || ctrl[1] ? x7[5 + s1 -: 1] : p1[18])))));
  assign y2 = (ctrl[3] && ctrl[3] || !ctrl[0] ? x11[27 + s3 -: 3] : ((x5[1 + s2 +: 7] | ({x14[23 -: 3], x10} - {2{p0[16]}})) - {(((p1[5 + s2] ^ x2[19 + s1 -: 1]) | (x9[23 + s3 -: 2] + (x7[22] - p1[12 + s0]))) ^ {2{x13[18 -: 2]}}), p2[8 + s0 +: 1]}));
  assign y3 = p0;
endmodule
