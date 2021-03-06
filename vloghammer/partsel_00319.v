module partsel_00319(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [5:24] x4;
  wire signed [2:24] x5;
  wire signed [2:25] x6;
  wire signed [7:29] x7;
  wire signed [1:29] x8;
  wire [6:25] x9;
  wire signed [30:5] x10;
  wire signed [27:3] x11;
  wire [26:4] x12;
  wire signed [28:2] x13;
  wire signed [1:27] x14;
  wire [24:2] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [24:4] p0 = 153351537;
  localparam [28:3] p1 = 412262152;
  localparam [24:5] p2 = 247145686;
  localparam signed [24:2] p3 = 465523040;
  assign x4 = x0[2 + s2 +: 7];
  assign x5 = (ctrl[0] && ctrl[1] || ctrl[1] ? (({x2[10 +: 2], p1[8 + s3 +: 4]} - p1[3 + s1 -: 6]) - x1[14 + s3 -: 8]) : {2{x4[5 + s1 -: 7]}});
  assign x6 = p3[15 + s2];
  assign x7 = x6[18 -: 3];
  assign x8 = {2{x7[16 +: 4]}};
  assign x9 = x8[6 + s2 -: 2];
  assign x10 = x7[8 +: 2];
  assign x11 = ({2{{2{(p2[23 -: 3] & (!ctrl[2] && ctrl[0] && !ctrl[0] ? x0[28 + s1 -: 7] : p1))}}}} & x0[6 + s2 -: 7]);
  assign x12 = x3[19 +: 2];
  assign x13 = ({x4, {{(x6[13 -: 4] ^ p1[12 -: 3]), (ctrl[3] || !ctrl[0] || !ctrl[1] ? (x6 | p0[21]) : (x12 ^ x4[11 + s1]))}, x7[31 + s2 -: 7]}} + x2[15 +: 3]);
  assign x14 = (p3[15 +: 3] - (p2[14 +: 3] | x11));
  assign x15 = ({2{x9[14 -: 3]}} | ((x0 | x13) + (x6[11] - p0[24 + s2 -: 4])));
  assign y0 = (((ctrl[2] && !ctrl[3] || ctrl[3] ? p3[9 +: 2] : ({2{p0[26 + s0 -: 7]}} | (((x11[19 + s1 -: 6] | (x2 | p1)) - x7[16 -: 3]) - p0[8 + s2 +: 6]))) - p3[14 -: 1]) | x10[17 +: 2]);
  assign y1 = {((ctrl[1] || !ctrl[2] && ctrl[3] ? x14 : p2[24 + s1 -: 5]) ^ {(!ctrl[0] && !ctrl[0] && ctrl[1] ? p2 : (p3[13 + s1] | p2[19])), {2{(p2 + p2[19 + s2 +: 3])}}}), (((ctrl[0] && !ctrl[2] || ctrl[3] ? {x2[22 -: 4], x0} : x13[27 + s1 +: 3]) | {2{(x10[14] & p3)}}) - {{p3, {x5[8 + s3 -: 8], (x6[2 + s0 +: 3] ^ x0[8 + s1])}}, ((x6[18 + s0 -: 6] | p0) ^ {(x1[13 -: 1] - x6[21 -: 2]), p2})})};
  assign y2 = (x6 ^ {2{x5[7 + s3 +: 2]}});
  assign y3 = (({2{p3[23 -: 1]}} | (p1 | {(ctrl[3] && !ctrl[3] && !ctrl[1] ? p1[17 + s0] : ((p2[24 + s2 +: 8] | (x3 ^ p0[2 + s2 -: 8])) + x2[15 +: 3])), x8[30 + s2 +: 1]})) - {x14, ((ctrl[1] || !ctrl[0] && !ctrl[2] ? x4[23 + s2 -: 4] : (p3 ^ p1[18 -: 3])) + (p3[8 + s2 +: 3] - p2))});
endmodule
