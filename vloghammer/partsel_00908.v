module partsel_00908(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [3:26] x4;
  wire signed [1:27] x5;
  wire signed [31:0] x6;
  wire [30:6] x7;
  wire [30:7] x8;
  wire [5:25] x9;
  wire [4:27] x10;
  wire signed [3:24] x11;
  wire signed [4:27] x12;
  wire [3:26] x13;
  wire [25:0] x14;
  wire signed [30:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:5] p0 = 220777516;
  localparam signed [30:2] p1 = 246660417;
  localparam signed [25:1] p2 = 43925415;
  localparam signed [2:27] p3 = 705446060;
  assign x4 = (({{(ctrl[1] && ctrl[3] || !ctrl[1] ? p2[20 -: 2] : p2[12]), (ctrl[3] && !ctrl[1] && ctrl[0] ? p1 : x0[14])}, p2} ^ x2[13]) - x2[8 + s1]);
  assign x5 = ({(!ctrl[2] && !ctrl[2] && !ctrl[0] ? p2[19 + s1 -: 7] : x0[30 + s3 +: 4]), {2{p2[16]}}} - p3[25 + s0 +: 8]);
  assign x6 = p3[17];
  assign x7 = p3[7 + s0];
  assign x8 = (({2{(p3 - {p3[23 + s2 +: 1], x1[19 -: 4]})}} + p3) | {x0[8 + s3], p1[23 -: 1]});
  assign x9 = p3;
  assign x10 = {2{{(x6[20] ^ x9), p1[31 + s3 +: 2]}}};
  assign x11 = p1[15 + s0];
  assign x12 = (((ctrl[0] && ctrl[2] || ctrl[2] ? x9[18 -: 4] : x4) ^ {2{{p3[12 +: 1], (p2[25 + s3 +: 4] & x1[23 -: 2])}}}) + ((x6[17 + s0] & p3[23 -: 1]) ^ p1[20 + s1 +: 2]));
  assign x13 = ({2{(ctrl[1] || ctrl[2] || ctrl[2] ? ((ctrl[3] && ctrl[3] || !ctrl[2] ? ((x9[31 + s1 -: 6] - ((x10 | (p2[18 +: 2] | p0[23 -: 1])) - x3)) ^ p0[20 -: 3]) : x5[21 -: 1]) - {2{x11}}) : x3[11 + s1])}} - x3[15 + s1]);
  assign x14 = (x7[28 + s1 +: 4] & (p1[24 + s1 -: 3] | (ctrl[0] && ctrl[0] && !ctrl[0] ? {x3[8], p1} : {p3[16 + s0], p3[19 -: 4]})));
  assign x15 = (!ctrl[2] || !ctrl[2] && ctrl[2] ? {{2{x14[17 + s2]}}, p3[15 +: 3]} : x11);
  assign y0 = p0;
  assign y1 = x0[16];
  assign y2 = (p3[13 + s1] ^ (p1 - {2{p1[8 + s2 -: 2]}}));
  assign y3 = {x11[22], x7[12 + s3]};
endmodule
