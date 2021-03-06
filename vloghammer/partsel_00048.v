module partsel_00048(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [31:6] x4;
  wire [1:25] x5;
  wire [4:26] x6;
  wire [24:4] x7;
  wire [7:31] x8;
  wire signed [30:5] x9;
  wire signed [6:27] x10;
  wire signed [2:29] x11;
  wire [25:5] x12;
  wire [1:25] x13;
  wire signed [3:29] x14;
  wire [1:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:30] p0 = 746102909;
  localparam [3:30] p1 = 910484886;
  localparam [31:3] p2 = 239348866;
  localparam [29:5] p3 = 863369718;
  assign x4 = ({2{({x3[16 + s3 -: 1], (p1[11] + p2[18 + s2 -: 5])} + x3[15 +: 1])}} - p0);
  assign x5 = ((p1 & x4[8 +: 3]) | x2[12 -: 4]);
  assign x6 = (({((x0[19] | p1) | x3[10 +: 4]), ({p1[20], x3[12 +: 1]} + (((x4[12 + s2] + x3) | p3[19 -: 3]) ^ p2[25 + s2 +: 8]))} - x1[12 -: 4]) & {p2[12 -: 4], p1[23 + s1 +: 3]});
  assign x7 = (x6 & {2{(x2[12 + s3] & {2{x4[21 -: 1]}})}});
  assign x8 = x7[14 -: 1];
  assign x9 = x3[12];
  assign x10 = x7;
  assign x11 = ((((ctrl[1] || ctrl[3] || !ctrl[1] ? x2[21] : x10[20]) - x9[19 + s3]) ^ (((x10[25 + s1 -: 6] & p3[18 -: 2]) + (x5[14 -: 3] + x8[13 + s3 -: 2])) + p0[11])) - (p2[12 + s2] - (((!ctrl[2] || ctrl[1] || ctrl[3] ? p0[17] : (x0 ^ x0)) - ((p1[12 +: 3] & (x3[15 + s0 +: 7] ^ x0[7 + s2 +: 2])) | p3)) ^ p2[25 + s3 -: 2])));
  assign x12 = p2[2 + s3 +: 1];
  assign x13 = ((p0[9] - p3[9 + s1]) - (!ctrl[0] && ctrl[1] && !ctrl[1] ? {(((p0[4 + s2] ^ x2[18 +: 3]) - (x10[20] - (x10 ^ p2[20]))) + x4[2 + s0 +: 3]), x0[22]} : (ctrl[0] || !ctrl[3] && !ctrl[1] ? (!ctrl[1] && !ctrl[2] && !ctrl[0] ? p2[23] : x1[9 +: 2]) : {2{p0[9 +: 3]}})));
  assign x14 = (ctrl[2] || !ctrl[2] && !ctrl[3] ? ({2{({2{p0}} | (x0 - p3[5 + s2 -: 7]))}} | {((p1[19 -: 2] | (p2[17 + s0] & (p2[23 -: 2] - p2[18]))) - p3[9]), p1}) : (p3[6 + s1 -: 3] ^ ({2{x2[12 -: 1]}} | x13)));
  assign x15 = (x10[12 +: 1] & x1[30 + s3 -: 7]);
  assign y0 = (p3[11 + s0] - (ctrl[0] && !ctrl[3] || !ctrl[3] ? x12[7 + s1] : {p2[16], (x7[14 +: 2] & {p2[21 + s2 -: 6], x2[18]})}));
  assign y1 = ((ctrl[2] && ctrl[3] && !ctrl[2] ? x14[18 +: 2] : p0[12 +: 4]) | p2[17]);
  assign y2 = {2{{p2[17 -: 1], {2{(ctrl[0] || !ctrl[0] || ctrl[3] ? ((p0 | p3[16 +: 1]) & p2) : (ctrl[3] || ctrl[2] && ctrl[0] ? x1[21 -: 1] : (p2[17] + x8[10 + s2])))}}}}};
  assign y3 = p1;
endmodule
