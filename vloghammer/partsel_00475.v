module partsel_00475(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [3:29] x4;
  wire signed [7:27] x5;
  wire [5:30] x6;
  wire [7:29] x7;
  wire signed [25:7] x8;
  wire [7:31] x9;
  wire signed [26:4] x10;
  wire [31:1] x11;
  wire [28:0] x12;
  wire [5:28] x13;
  wire signed [31:0] x14;
  wire [2:27] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:1] p0 = 407328650;
  localparam signed [0:25] p1 = 663566038;
  localparam signed [7:25] p2 = 810272090;
  localparam signed [4:28] p3 = 842668811;
  assign x4 = p1;
  assign x5 = x3[10 + s0 -: 8];
  assign x6 = (ctrl[2] || !ctrl[0] || !ctrl[3] ? x1 : (ctrl[1] || ctrl[2] && ctrl[0] ? p2 : (x0[15 +: 2] & {2{x0}})));
  assign x7 = ((x2[12 + s0] & ((ctrl[0] || !ctrl[1] || !ctrl[2] ? {x2, x3[7 + s0 -: 6]} : p0[18]) ^ x6[16 +: 3])) - p0[14 -: 3]);
  assign x8 = x5[16 -: 1];
  assign x9 = x1[10 + s0 +: 2];
  assign x10 = {(p2[10 + s1 -: 8] | ((x2 ^ (((p3[17 +: 3] ^ p3[12 + s2 -: 5]) + p3[8 + s0 +: 5]) & (x0[17 +: 2] + x9))) + x4[14 + s1 -: 6])), p2};
  assign x11 = p3[16 + s2 -: 8];
  assign x12 = x3[23 -: 1];
  assign x13 = ({2{(!ctrl[3] || ctrl[3] && !ctrl[0] ? x11[5 + s1 +: 8] : p3[15 + s0 -: 5])}} + {2{p3}});
  assign x14 = (p3[16 -: 4] - {x9[12 + s3], x6[27 + s3 -: 1]});
  assign x15 = p1[15 -: 3];
  assign y0 = {2{p0}};
  assign y1 = ((x15 & ({2{(!ctrl[2] || !ctrl[3] && !ctrl[0] ? x2 : (p2[26 + s2 -: 2] + x6[23 -: 4]))}} + {{p3[16], x7}, {2{p2}}})) ^ (p3 ^ (p3[10 + s0 -: 2] - (p2[8 +: 4] & x7[11 +: 1]))));
  assign y2 = x10;
  assign y3 = (!ctrl[0] && ctrl[2] || !ctrl[0] ? (!ctrl[1] || !ctrl[1] && ctrl[3] ? {2{p1[25 + s0 -: 1]}} : x13[12 -: 1]) : (p1[6 + s3 -: 5] ^ {2{x8[17 +: 3]}}));
endmodule
