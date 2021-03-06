module partsel_00132(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [7:26] x4;
  wire [31:5] x5;
  wire signed [2:26] x6;
  wire signed [1:26] x7;
  wire signed [26:3] x8;
  wire signed [27:3] x9;
  wire signed [30:4] x10;
  wire signed [4:26] x11;
  wire signed [24:3] x12;
  wire [27:2] x13;
  wire signed [26:3] x14;
  wire [2:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:27] p0 = 36775097;
  localparam signed [28:5] p1 = 828825390;
  localparam signed [29:7] p2 = 575985908;
  localparam signed [2:28] p3 = 494389820;
  assign x4 = {x0, ((ctrl[3] && !ctrl[3] && ctrl[1] ? x0 : (!ctrl[2] || !ctrl[3] && !ctrl[3] ? p0[8 + s3] : (p3[12 -: 2] + p3[16 + s1]))) - {2{(x1[19 + s1] | (x1[19 + s3] ^ p0[15 + s3]))}})};
  assign x5 = {p1[19], {(((x1[12 + s0] - x2[18 + s0 -: 7]) + p3[13 + s3 -: 2]) ^ (p1[9] + (x2[17 +: 4] | p3[9 + s3 +: 7]))), ((!ctrl[2] && ctrl[1] && ctrl[1] ? x0 : x3) | ((p1[12 + s0 -: 7] ^ (((x0[8 + s0] & p3[10 + s0]) + p1[25 + s0 -: 8]) | p3)) - ((x1[23 + s0 +: 2] & ((p3[7 + s2 +: 7] & (x0[29 + s1 +: 1] | p1[11])) ^ x0[15 +: 4])) | (x3 - p2))))}};
  assign x6 = ((x4 ^ {2{x4[22]}}) - ((x2[17 + s2] | (ctrl[0] || ctrl[2] && ctrl[0] ? {p3[25 + s2 -: 3], x0[8 + s1]} : x4)) & p0[8 +: 2]));
  assign x7 = p2;
  assign x8 = x1[25 + s2 -: 5];
  assign x9 = (((p0[17 + s3 +: 1] & (ctrl[2] || ctrl[3] && ctrl[3] ? (x6[19] & x6[1 + s2 -: 1]) : x1)) - p0) & p1[14]);
  assign x10 = x4[15 -: 4];
  assign x11 = (x9[21 -: 3] + p1);
  assign x12 = p0[10 +: 3];
  assign x13 = x1;
  assign x14 = (((p2 & (p0[14 + s1 -: 1] - x3[18 +: 2])) | x9[11 + s1 -: 1]) - x2[10]);
  assign x15 = (({2{p3}} + (p3[20] - x10[9 +: 3])) ^ x6[19 -: 4]);
  assign y0 = p3[13 + s2];
  assign y1 = (!ctrl[3] || !ctrl[1] && ctrl[3] ? (((ctrl[1] || ctrl[2] || ctrl[3] ? x6[16 +: 1] : {x2[6 + s3], x5[14 +: 4]}) ^ (x3 | (ctrl[0] || !ctrl[2] && !ctrl[2] ? p1[13 -: 2] : p3[28 + s1 +: 1]))) & (x2[14] + p1[13])) : ((!ctrl[2] || ctrl[0] || ctrl[2] ? (x9 & {2{x4[16 +: 4]}}) : ((!ctrl[2] && !ctrl[0] || ctrl[0] ? x11 : x3[26 + s0 -: 1]) - x2[19 + s3 -: 2])) + ((!ctrl[0] && !ctrl[2] || ctrl[2] ? p1[7 + s3] : (x10 | p3[20 + s0 -: 2])) + (!ctrl[1] || ctrl[2] || !ctrl[0] ? p2[1 + s1 +: 5] : (x8[8] - x14)))));
  assign y2 = ({{2{x0}}, {x11[18], x5[9]}} ^ x0);
  assign y3 = (x9[9 +: 1] ^ ({p1, (ctrl[3] && !ctrl[1] || !ctrl[0] ? (p0[0 + s2 -: 7] & p1) : (!ctrl[3] || ctrl[0] && !ctrl[0] ? x14[2 + s1 +: 8] : p1[21 -: 3]))} | p3[18 + s2]));
endmodule
