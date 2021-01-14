module partsel_00823(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [4:27] x4;
  wire signed [30:6] x5;
  wire signed [4:26] x6;
  wire signed [31:7] x7;
  wire signed [25:6] x8;
  wire [6:24] x9;
  wire signed [6:27] x10;
  wire signed [30:0] x11;
  wire [26:5] x12;
  wire [27:1] x13;
  wire [0:25] x14;
  wire signed [30:6] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [31:7] p0 = 90124578;
  localparam [29:7] p1 = 273820886;
  localparam [31:2] p2 = 444820669;
  localparam signed [0:30] p3 = 133414209;
  assign x4 = p1[11 +: 2];
  assign x5 = (x4[8 +: 3] ^ x1[21 -: 4]);
  assign x6 = (x0[13] + x0[5 + s3 -: 5]);
  assign x7 = ({2{{{(p0[15 + s2 +: 8] & p3), x3}, ((x2[15 + s3] ^ (p0[16 + s0 +: 3] ^ p0[14])) | x5[24 + s1 +: 5])}}} - p2[16 + s0]);
  assign x8 = p1[18 -: 1];
  assign x9 = x3;
  assign x10 = x7;
  assign x11 = (((p1[23 -: 4] - x4) & (x8[17 -: 3] & x9)) ^ {2{p0[18 -: 1]}});
  assign x12 = (((({((p2[15 +: 2] - x10) | (x3[17 -: 2] - (p2[21 + s2 -: 5] ^ p3))), x9[23 -: 3]} - (!ctrl[2] || ctrl[0] || ctrl[3] ? p0[21 -: 4] : (p2[31 + s1 -: 5] - p2[8 + s3 -: 2]))) ^ x10[21 -: 4]) - x0[27 + s1 +: 2]) + (!ctrl[3] && ctrl[3] || ctrl[2] ? x0 : p2[12 +: 4]));
  assign x13 = p1;
  assign x14 = ((p2[25 + s1 +: 2] + (x8 + p0[21 -: 4])) + {2{x13[14 +: 3]}});
  assign x15 = {(ctrl[3] || !ctrl[3] && !ctrl[0] ? p3[11 +: 4] : x5[15 -: 2]), ({p1[17 -: 1], (p2 & p2[19 + s1 -: 4])} | {p2[10 + s0], ((p3[19 + s3] - ((p2 - x11[23 -: 4]) | x10[11 + s2])) | {2{p2}})})};
  assign y0 = (({2{{2{x2}}}} | p2) ^ (ctrl[0] || ctrl[0] && ctrl[2] ? {{2{(ctrl[1] && !ctrl[1] && ctrl[3] ? x12 : (x8[18 + s0 -: 7] & p2))}}, x1} : {2{(p3[14 + s0] - x2)}}));
  assign y1 = (ctrl[0] || !ctrl[1] && !ctrl[1] ? x4[2 + s2 +: 7] : (x1 ^ p3[13 -: 3]));
  assign y2 = ((ctrl[1] && ctrl[3] || ctrl[3] ? x15[31 + s1 -: 5] : (((x0[10 +: 3] - x9[16 +: 4]) | {2{x0[17 + s2 +: 7]}}) & (ctrl[1] && !ctrl[2] && ctrl[0] ? {2{(p2[8 +: 1] ^ x3[14 -: 4])}} : (!ctrl[3] || ctrl[0] || ctrl[3] ? x15 : x12[19 -: 3])))) ^ {2{p1[19 +: 3]}});
  assign y3 = (({{2{p0}}, {2{x8[13 -: 4]}}} ^ (ctrl[2] && !ctrl[2] || ctrl[1] ? p1[10 + s1 +: 7] : x4)) & ({2{(x9 | x11[16 + s0 -: 5])}} | (p3[29 + s0 +: 5] & p3)));
endmodule
