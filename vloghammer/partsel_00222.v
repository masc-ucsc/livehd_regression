module partsel_00222(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [28:3] x4;
  wire signed [1:31] x5;
  wire [6:28] x6;
  wire [24:0] x7;
  wire signed [24:0] x8;
  wire [30:7] x9;
  wire signed [7:26] x10;
  wire signed [24:6] x11;
  wire signed [29:0] x12;
  wire [27:1] x13;
  wire signed [5:31] x14;
  wire [31:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:24] p0 = 594261472;
  localparam signed [25:2] p1 = 387406729;
  localparam [27:6] p2 = 776434967;
  localparam [31:3] p3 = 115782209;
  assign x4 = p1;
  assign x5 = {2{((!ctrl[3] || !ctrl[2] || !ctrl[0] ? {p3[29 + s0 +: 7], {2{p2[15]}}} : x0) - ({2{p3[19 + s0]}} | x1[12 + s0 +: 5]))}};
  assign x6 = (!ctrl[2] && ctrl[0] && ctrl[1] ? {({(p2[18 +: 2] ^ p3[7 + s1]), (p3[23 -: 3] & (p3 + x3))} & p3[14 + s3 +: 5]), {2{(p1[18 + s0 -: 2] | ((p2[21 -: 2] ^ x3[14 +: 3]) & (x2 | p3[21 + s1 -: 4])))}}} : x2[18 +: 3]);
  assign x7 = p2;
  assign x8 = (!ctrl[0] && !ctrl[0] && !ctrl[3] ? (((p1[10 + s0 +: 3] ^ (ctrl[1] && ctrl[1] || !ctrl[2] ? x5 : p3[15 + s0])) & x3[5 + s2]) & {2{(x4[10 + s2 +: 3] | (p2[14 + s1 -: 3] | p1[16 + s2 +: 7]))}}) : {{(ctrl[2] && ctrl[1] && !ctrl[3] ? (p1[9 + s1 -: 2] + x7) : x6[15 -: 2]), p0[31 + s3 +: 4]}, p1[1 + s1 -: 8]});
  assign x9 = (!ctrl[1] || !ctrl[1] && ctrl[3] ? {p3[16], (ctrl[0] && ctrl[2] && !ctrl[1] ? ({2{x5[17 +: 4]}} - ((x3[15 + s1] & x7[16 -: 3]) | (x2[20] ^ x5[13 + s1]))) : p2[9 + s1 +: 8])} : (ctrl[0] || !ctrl[0] && ctrl[2] ? {p0[16 + s2], (x8[14 -: 3] + {x2[4 + s0 -: 7], x5[25 + s2 -: 7]})} : x6[19 -: 1]));
  assign x10 = {(ctrl[3] && !ctrl[2] && ctrl[3] ? x1 : (ctrl[0] && ctrl[2] && !ctrl[2] ? ({x1[16 + s2 +: 7], (x3 + x2[12 -: 1])} | (!ctrl[2] && ctrl[0] && !ctrl[2] ? x7[23] : p3[3 + s0 +: 3])) : ((((p3[14 + s2] - ((x4[12] - (x0[8 + s1] | p1)) | x8[16 + s0 -: 3])) & ((x0[4 + s1 -: 4] | x3[16 +: 3]) & p1[13 +: 2])) + x0) | (ctrl[1] && !ctrl[2] && ctrl[1] ? (p0[15 +: 1] ^ x2) : x1[3 + s0 -: 4])))), x7};
  assign x11 = (x6[7 + s2] | ({2{((x10[14 -: 3] ^ x0) | p1[10 + s3 +: 2])}} - (p1[23] + p1[11 + s3])));
  assign x12 = (x8[14 + s1] | p3[7 + s1 +: 4]);
  assign x13 = x6;
  assign x14 = {((x8[16 -: 2] + ((p0[28 + s0 -: 1] ^ p3[11 +: 3]) - (ctrl[3] || !ctrl[1] || !ctrl[3] ? p1[19 + s0 +: 4] : x12))) ^ x12), ((x0[5 + s3] | (!ctrl[2] && ctrl[2] || !ctrl[3] ? {2{p1[14 + s2 -: 1]}} : x13[29 + s0 +: 2])) - ({2{p1}} - p0[22]))};
  assign x15 = (p1 + (p1[8 + s0 -: 5] + {2{(ctrl[2] || ctrl[3] || !ctrl[3] ? {p1[12 +: 2], p3[18]} : x2[22 + s1 -: 3])}}));
  assign y0 = (((((ctrl[3] || !ctrl[2] && !ctrl[0] ? x13 : p3) ^ (!ctrl[2] && ctrl[1] && !ctrl[0] ? (p0[15] & x4) : x6[20 + s0 -: 5])) - ((x11[15 + s1 +: 7] + p3[16]) ^ {2{p3}})) ^ {p2, ({2{x7[8 +: 2]}} + (ctrl[1] && ctrl[1] || !ctrl[3] ? x11[18 -: 1] : p0[22 -: 3]))}) | (p2 & p1[22 -: 1]));
  assign y1 = p2[8 +: 1];
  assign y2 = (x5[14] - x12[14 -: 3]);
  assign y3 = (({x12[16 -: 1], (x8[9 + s2] - (ctrl[0] && ctrl[1] || ctrl[2] ? x4 : x7))} + (x14[12 -: 1] & ((!ctrl[1] || ctrl[3] && !ctrl[1] ? x12 : x4) | p3))) & x3[9 +: 3]);
endmodule
