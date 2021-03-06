module partsel_00480(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [6:30] x4;
  wire signed [24:0] x5;
  wire signed [31:2] x6;
  wire [31:0] x7;
  wire signed [1:29] x8;
  wire [0:26] x9;
  wire signed [30:1] x10;
  wire signed [2:27] x11;
  wire [29:0] x12;
  wire signed [0:28] x13;
  wire signed [5:27] x14;
  wire [27:2] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:25] p0 = 953397643;
  localparam signed [29:4] p1 = 950891323;
  localparam signed [29:7] p2 = 583237714;
  localparam signed [28:5] p3 = 284249214;
  assign x4 = x1[9 + s3 -: 3];
  assign x5 = ((p3[13] ^ p2[15 +: 3]) ^ x4[18 -: 4]);
  assign x6 = {{(({p2[14 -: 4], p0[20 + s3 +: 2]} - p3) + p1[9 + s3]), (ctrl[0] || !ctrl[0] && !ctrl[3] ? {(ctrl[1] || !ctrl[2] || ctrl[3] ? x5[19 + s1] : x0[7 + s3 -: 2]), p3[11 +: 3]} : (ctrl[3] && !ctrl[1] || ctrl[0] ? x0[10 + s1 +: 4] : {p2, (p3[11] & p3[11 + s2 +: 1])}))}, p2[18 -: 4]};
  assign x7 = ((!ctrl[3] && ctrl[1] && !ctrl[3] ? (ctrl[0] || !ctrl[3] && !ctrl[1] ? p1[28 + s1 -: 5] : {2{(((p0[7 + s1] ^ x6[9 + s1 -: 8]) & (p2[28 + s0 -: 8] - x3[14 + s1])) & p0[0 + s2 -: 3])}}) : (!ctrl[3] || ctrl[3] || ctrl[3] ? p2[7 + s1] : (p3[15] - (p1[19 -: 2] + (p0[10 + s2 +: 3] ^ p1))))) + x2[13 -: 4]);
  assign x8 = p1[15 + s3];
  assign x9 = {2{((!ctrl[1] && ctrl[0] || !ctrl[2] ? p1[13 +: 1] : {x0[7 + s2 +: 7], (x1[25 + s3 -: 3] + x5[20 + s3 +: 3])}) | ((ctrl[0] || !ctrl[1] || !ctrl[1] ? x7[21 -: 2] : (p2[9 +: 2] - p3[22 -: 4])) & x8[21]))}};
  assign x10 = x5;
  assign x11 = x9[15 +: 1];
  assign x12 = ((!ctrl[1] || !ctrl[3] && ctrl[1] ? ((p0[0 + s1 +: 2] & (!ctrl[0] || ctrl[0] && !ctrl[0] ? x9[16 + s2] : x4[9 +: 1])) - x3) : (((!ctrl[2] && !ctrl[1] && !ctrl[1] ? x5 : p1[6 + s0]) & {2{p0[20 + s2 -: 4]}}) | {2{p3[16 -: 4]}})) | p0[6 + s1 -: 2]);
  assign x13 = {2{(ctrl[0] && ctrl[1] || !ctrl[1] ? p1[9 +: 3] : (x4[15 + s3] + x11[11]))}};
  assign x14 = (!ctrl[1] || !ctrl[3] && !ctrl[3] ? p1[26 + s0 -: 6] : p3);
  assign x15 = {(x1[25 + s3 +: 2] - (x7[19 +: 3] | p0[10])), (ctrl[2] || !ctrl[2] && ctrl[3] ? {2{(!ctrl[1] || !ctrl[1] || ctrl[1] ? x3[2 + s1 -: 7] : x4[15 +: 1])}} : x8)};
  assign y0 = (p1[9] ^ ((!ctrl[0] && !ctrl[2] || !ctrl[1] ? x5[15] : x6[7 + s0 -: 4]) & p3[9 +: 1]));
  assign y1 = (x8[15 + s1 +: 3] + {({2{(p1 + (x15[21 -: 3] + p3[19 + s1]))}} & ((x9[9 + s1 +: 5] & x13) | (p2[14 + s1] ^ x1))), x5[12 + s3]});
  assign y2 = ((ctrl[2] || !ctrl[3] && !ctrl[3] ? ((p3[22 -: 3] & x7) | ((x7[23] + x9) + x12[22])) : p0) ^ ((ctrl[1] || !ctrl[3] || !ctrl[2] ? ((p3[17] - x12) - x8[23 + s1 +: 1]) : (ctrl[2] || ctrl[1] || ctrl[1] ? (x6 + p3[19 -: 2]) : x15[29 + s3 -: 6])) & {p0[12 +: 1], p0[19 +: 3]}));
  assign y3 = x1[16];
endmodule
