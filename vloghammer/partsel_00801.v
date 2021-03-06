module partsel_00801(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [25:5] x4;
  wire [29:7] x5;
  wire signed [1:25] x6;
  wire signed [4:26] x7;
  wire signed [4:28] x8;
  wire [25:2] x9;
  wire signed [1:27] x10;
  wire [2:26] x11;
  wire signed [31:3] x12;
  wire [7:28] x13;
  wire signed [3:26] x14;
  wire signed [31:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [27:1] p0 = 492272584;
  localparam signed [4:26] p1 = 110704488;
  localparam signed [25:3] p2 = 488221844;
  localparam [31:2] p3 = 999662098;
  assign x4 = (x0 + {{x1[13 + s2 -: 3], ((x1[19 + s1 +: 5] - ((p2[14 +: 1] - x1[12]) + ((x1 + p3[5 + s3]) + x2[6 + s1 +: 4]))) & (x1[18 + s2 +: 6] & x3[14 + s1]))}, x3[16 +: 1]});
  assign x5 = p3[5 + s2 +: 7];
  assign x6 = ({x2, x0[4 + s1]} - {2{{2{p3}}}});
  assign x7 = {2{{2{p2}}}};
  assign x8 = {2{((!ctrl[3] || ctrl[0] && !ctrl[0] ? (p1 - x5[13]) : {2{x0}}) - {2{({(x5[25 + s1 +: 7] ^ x1[12 + s0]), p2[15 +: 4]} | x2[17 +: 4])}})}};
  assign x9 = p2[13 +: 4];
  assign x10 = x7[30 + s2 +: 6];
  assign x11 = ({2{{2{p3[22 -: 4]}}}} - (ctrl[3] && !ctrl[2] && ctrl[3] ? p3 : p0[17]));
  assign x12 = {{(((x2[20 + s0 +: 3] - x3) ^ ((x3[22] ^ (p3[10] ^ x2[25 + s3 +: 6])) ^ x7[14])) + p3), x9[13]}, ({2{(((p1[10 + s1] ^ p0[11]) - p1[16 + s3]) ^ x0[16 -: 1])}} + p3[10 + s0])};
  assign x13 = (x3[7 + s1 -: 2] + p1[19 + s1]);
  assign x14 = x9[16 +: 4];
  assign x15 = ({2{{{((p0[28 + s1 +: 7] & (x4[21 -: 1] | (p2 - p2[1 + s2 +: 6]))) | p1[16 + s3]), {2{x7}}}, {2{(x6[15 -: 3] + p1[10 + s1 -: 4])}}}}} | ({{2{(p0[12 -: 2] | p2[19 + s2 +: 2])}}, x3[17 +: 2]} ^ x4[17 -: 2]));
  assign y0 = ((ctrl[0] && ctrl[1] && !ctrl[2] ? x7 : {2{p3[8 +: 2]}}) + x11[12 -: 2]);
  assign y1 = {2{x15}};
  assign y2 = (({2{(ctrl[3] && ctrl[2] && !ctrl[3] ? (p3 - p2[5 + s1 -: 6]) : p1[11 +: 4])}} - (ctrl[1] && ctrl[3] || !ctrl[3] ? {2{x12[24 + s1 +: 2]}} : {p2[28 + s2 -: 1], {p2[22], (x9 ^ p2[17 + s2 -: 7])}})) | (p3[18 +: 1] + (x0 ^ (p3[18 +: 2] - {x13[2 + s0 +: 3], p2}))));
  assign y3 = x9[27 + s0 -: 5];
endmodule
