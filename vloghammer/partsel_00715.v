module partsel_00715(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [1:31] x4;
  wire [1:31] x5;
  wire [6:26] x6;
  wire signed [5:24] x7;
  wire [29:4] x8;
  wire signed [24:7] x9;
  wire signed [26:2] x10;
  wire [4:28] x11;
  wire signed [0:27] x12;
  wire [30:6] x13;
  wire [7:31] x14;
  wire [29:2] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [5:28] p0 = 405403387;
  localparam signed [31:5] p1 = 76861641;
  localparam [4:25] p2 = 840726248;
  localparam [27:3] p3 = 153552622;
  assign x4 = (({2{p1}} & (ctrl[3] && ctrl[2] && !ctrl[2] ? p0[27 + s1 +: 5] : x1[20 -: 1])) | {2{{2{p2}}}});
  assign x5 = {2{({p1[17 -: 2], p3[4 + s1 -: 3]} | (p1[9] & (!ctrl[2] && ctrl[1] || ctrl[1] ? (!ctrl[1] || ctrl[0] && ctrl[0] ? x2[14] : x2) : ((p0[12 + s3 -: 8] ^ p3[19 +: 3]) - p2[29 + s3 +: 5]))))}};
  assign x6 = x4[0 + s0 -: 8];
  assign x7 = (p0[30 + s0 +: 6] | ((ctrl[2] && ctrl[1] && ctrl[1] ? {p1[19 + s1 +: 1], x2[18 +: 2]} : x5[8 + s1 -: 5]) ^ x4[11 +: 2]));
  assign x8 = {x7, (x7 | x1[24 + s1 -: 8])};
  assign x9 = {2{{2{x4}}}};
  assign x10 = (p1[19 -: 3] ^ (x5[14] + {2{({p0[12 + s2], p0[16]} ^ x5[10 +: 1])}}));
  assign x11 = x0;
  assign x12 = p1[8 + s2];
  assign x13 = x11[23 -: 1];
  assign x14 = {p0, (x7 ^ p0[31 + s3 +: 6])};
  assign x15 = p1[7 + s3 -: 5];
  assign y0 = (x7 - p2[4 + s0 -: 7]);
  assign y1 = ({(ctrl[2] && ctrl[1] || !ctrl[1] ? ((ctrl[3] && !ctrl[2] && !ctrl[0] ? x2 : x7[4 + s3]) | {x12[13 +: 4], p0[22 -: 1]}) : ((p1[20 -: 3] | x13[12 + s3]) ^ x10[22])), ({2{(x7[21 + s2 +: 4] + x5[5 + s0 +: 2])}} + x6[21])} - p0[7 + s0 +: 1]);
  assign y2 = x12;
  assign y3 = {p1[17 -: 1], p2[3 + s3 -: 8]};
endmodule
