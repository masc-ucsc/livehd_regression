module partsel_00584(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [30:3] x4;
  wire signed [25:1] x5;
  wire signed [1:30] x6;
  wire [5:25] x7;
  wire signed [28:0] x8;
  wire [3:26] x9;
  wire signed [2:30] x10;
  wire [4:25] x11;
  wire signed [1:28] x12;
  wire [25:4] x13;
  wire [26:0] x14;
  wire [4:24] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:29] p0 = 531862972;
  localparam [31:0] p1 = 79072135;
  localparam signed [26:7] p2 = 78798892;
  localparam signed [27:0] p3 = 268858285;
  assign x4 = x0[15 + s0 +: 6];
  assign x5 = ({2{(x4[30 + s1 +: 2] - (!ctrl[1] && ctrl[1] && !ctrl[1] ? p2[9 + s2 -: 4] : x1[12 + s1 +: 7]))}} | {2{(p2[19 + s1 +: 5] ^ {2{(x2 & ((x2 | (p0[5 + s3] & x2[11])) ^ (p1[2 + s1 +: 8] & (p1[12 -: 1] - p1[11 +: 3]))))}})}});
  assign x6 = ({(p1 + ({2{(p1[10 + s2] ^ x0)}} ^ p3[16 + s1 +: 6])), x2} & {2{(p3 & x4[19 -: 1])}});
  assign x7 = p0[1 + s1 +: 3];
  assign x8 = ({p0[6 + s2 -: 3], (x5[19] | (ctrl[0] && ctrl[2] && !ctrl[2] ? p3[16] : {2{x0}}))} + {(x6[27 + s3 -: 1] ^ ({2{p3[14 +: 2]}} + ((p2[13] - p2[8 +: 3]) | p1[5 + s1]))), ({2{p2}} | x3[15 +: 2])});
  assign x9 = x8[16 + s2];
  assign x10 = {p1[30 + s3 -: 2], p1};
  assign x11 = x10[8 + s0 -: 4];
  assign x12 = {(ctrl[0] || !ctrl[3] || !ctrl[1] ? (p3[12 -: 2] - x0[16]) : (({(p1[23] + x9[16]), p3[19 -: 4]} | x2[15 -: 2]) - x11)), p1};
  assign x13 = ((ctrl[3] || !ctrl[0] && ctrl[0] ? p2[11 +: 4] : x5[31 + s0 -: 6]) & (x3[30 + s3 -: 1] + (!ctrl[0] && ctrl[1] && !ctrl[3] ? ((p0[10 + s3] + p0[8]) | {2{p3}}) : (x7[1 + s3 +: 1] | (ctrl[3] || !ctrl[0] || !ctrl[0] ? p2[22 -: 1] : p3[23 -: 4])))));
  assign x14 = {{({(p3[21 + s0 +: 6] - (x0 - (x6[22 + s3 -: 5] | p1[18 +: 1]))), p3[27 + s1 +: 2]} | ((x13[8 + s0 +: 7] ^ (p3[10 + s1] ^ p3[16 + s3])) & (p0[14 +: 4] | (p1[7 + s2] - x13[26 + s1 +: 4])))), {2{(p3 - p3[7 + s0])}}}, (!ctrl[2] && !ctrl[2] || ctrl[1] ? (p3[26 + s2 +: 4] + {((p2[17 +: 3] | x3) ^ p2[23 -: 4]), p3}) : p0[5 + s1])};
  assign x15 = x11[6 + s2];
  assign y0 = p1;
  assign y1 = ((p2[15] & ((((p1[13 + s0 -: 4] + p3) | p3[0 + s1 -: 6]) - x7) + p1[14 -: 2])) + (!ctrl[2] || ctrl[3] && ctrl[3] ? {2{((ctrl[0] || ctrl[1] && !ctrl[0] ? p2[19 +: 2] : x12) ^ {2{p2[17]}})}} : x4[13]));
  assign y2 = p2;
  assign y3 = x14;
endmodule
