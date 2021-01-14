module partsel_00405(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [31:7] x4;
  wire [6:27] x5;
  wire [24:5] x6;
  wire [25:2] x7;
  wire [27:2] x8;
  wire signed [24:1] x9;
  wire signed [2:27] x10;
  wire signed [2:27] x11;
  wire signed [2:26] x12;
  wire signed [6:24] x13;
  wire [5:24] x14;
  wire [25:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:26] p0 = 544298179;
  localparam signed [0:27] p1 = 775144144;
  localparam [31:5] p2 = 702291884;
  localparam signed [29:4] p3 = 557657548;
  assign x4 = {2{x3[13 + s0 -: 1]}};
  assign x5 = (x0[11 +: 3] - ({2{((x2[8 +: 1] & x3) | p2)}} + ({2{{x4[13 +: 4], p0[30 + s0 -: 7]}}} & {2{(p3[10 + s0 -: 8] ^ x1[13 -: 3])}})));
  assign x6 = (p2[19 -: 3] ^ {p1, (!ctrl[3] && ctrl[1] || !ctrl[1] ? ((p0[13] ^ p0) & p1) : (!ctrl[3] || !ctrl[1] && !ctrl[3] ? {x1, (p3[16 +: 4] - p1)} : x1[0 + s2 +: 2]))});
  assign x7 = ({2{(p2[23 + s1 +: 1] & x4)}} - x4[9 + s1]);
  assign x8 = (!ctrl[0] && !ctrl[0] || ctrl[1] ? {2{p1[13 -: 1]}} : (p0[9] - {({2{x7[17 + s2]}} & {x2, x6}), x3}));
  assign x9 = p1;
  assign x10 = x3;
  assign x11 = (x10[13 +: 4] - {2{x3}});
  assign x12 = p1[23 -: 3];
  assign x13 = (ctrl[2] || ctrl[0] || ctrl[0] ? (p3 ^ (((x3[20 -: 3] ^ (x5[24 + s2 +: 7] - p0[11])) ^ p3[12 +: 4]) + p2)) : (ctrl[0] && !ctrl[2] || !ctrl[0] ? x11[8 + s0 +: 4] : x9[18]));
  assign x14 = x4;
  assign x15 = x7[6 + s0 +: 3];
  assign y0 = (x6[18 -: 1] + (p2[16 + s0] + {2{p1[12 +: 1]}}));
  assign y1 = p1[30 + s0 +: 5];
  assign y2 = {2{(((p1[13] | (x13[0 + s1 +: 2] - p3)) - (x2 ^ (ctrl[3] || !ctrl[0] || !ctrl[2] ? p3 : (p3[19 -: 3] ^ x12[18 -: 1])))) & ({2{p0}} - ({2{x7}} - (x11[9 +: 2] ^ (p2[22 -: 2] | p3[16 + s3])))))}};
  assign y3 = x0;
endmodule
