module partsel_00026(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [26:5] x4;
  wire [5:27] x5;
  wire signed [29:7] x6;
  wire [2:25] x7;
  wire [28:0] x8;
  wire [25:3] x9;
  wire [27:7] x10;
  wire [3:26] x11;
  wire [3:26] x12;
  wire [2:29] x13;
  wire [4:24] x14;
  wire [25:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:27] p0 = 1523422;
  localparam signed [25:3] p1 = 260395761;
  localparam signed [1:31] p2 = 596826997;
  localparam [0:31] p3 = 97291;
  assign x4 = (ctrl[3] && !ctrl[3] && !ctrl[0] ? p3 : {2{((x3[11 + s3 -: 4] - {2{p3[17 -: 1]}}) + x1[16 -: 4])}});
  assign x5 = (ctrl[0] && !ctrl[0] || !ctrl[3] ? {2{{2{(p2 & p1[14 +: 4])}}}} : (ctrl[3] || !ctrl[0] && !ctrl[3] ? (!ctrl[2] || !ctrl[0] || ctrl[2] ? (x2[12 -: 1] - (p0[20 + s3 +: 3] | p2)) : p1) : (x2[15 + s2 -: 2] - p0[30 + s3 -: 5])));
  assign x6 = x1[0 + s1 -: 5];
  assign x7 = ({(x5[4 + s3] | x1[14 -: 1]), p2[21 -: 2]} - (!ctrl[1] || ctrl[0] || ctrl[1] ? (!ctrl[3] && !ctrl[2] || ctrl[1] ? x1[12 + s2] : ((x6[6 + s2 -: 8] + ((p2[19 -: 3] ^ p3[18 -: 3]) - x4[19 + s0])) + x3[15 +: 2])) : x1[5 + s0]));
  assign x8 = {x0[16 +: 4], p2[23 -: 4]};
  assign x9 = {2{(x1 | p1[12 +: 3])}};
  assign x10 = {2{(p3[12 -: 1] ^ (x1[18 +: 1] | {2{x9}}))}};
  assign x11 = p2[12 + s3 +: 8];
  assign x12 = x1[22];
  assign x13 = {2{x10[18 + s3]}};
  assign x14 = {2{{x6[17 + s0 +: 3], x11}}};
  assign x15 = ((!ctrl[3] || !ctrl[1] && !ctrl[1] ? {x7, (ctrl[1] && !ctrl[1] && !ctrl[2] ? x11[17 + s1 +: 3] : x13)} : (p3 & {2{((x14[1 + s0 +: 1] | p3[18]) & x13)}})) - p0[22 + s0 -: 1]);
  assign y0 = x9[18 +: 2];
  assign y1 = ({{2{({2{p0[23 -: 4]}} - {2{p2[12 +: 2]}})}}, x3[13 -: 3]} - {p1, ({2{(p2[12] - x0[8 + s1 -: 6])}} + p1[17])});
  assign y2 = ({p2[16 + s3 -: 1], (x8 ^ (!ctrl[2] && !ctrl[3] && ctrl[1] ? p0[19 +: 4] : {2{p3[20 -: 4]}}))} ^ (x8[6 + s1 -: 4] + (((p1 & (p2[19 + s2] - x7[20 + s3 +: 3])) + ((x0 | p2[14 + s2 +: 1]) & (x4[6 + s0 +: 7] ^ x5))) ^ p2[15 -: 1])));
  assign y3 = p2;
endmodule
