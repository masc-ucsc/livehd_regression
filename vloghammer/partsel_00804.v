module partsel_00804(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [6:27] x4;
  wire signed [30:7] x5;
  wire signed [7:27] x6;
  wire [0:31] x7;
  wire [1:26] x8;
  wire [27:7] x9;
  wire signed [3:31] x10;
  wire signed [2:28] x11;
  wire signed [0:28] x12;
  wire [29:6] x13;
  wire signed [31:6] x14;
  wire signed [1:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:7] p0 = 381002547;
  localparam [5:31] p1 = 88397722;
  localparam [27:1] p2 = 21334176;
  localparam [28:0] p3 = 876277390;
  assign x4 = p2;
  assign x5 = p2;
  assign x6 = x3[15];
  assign x7 = x5[8 + s2];
  assign x8 = p2[15 +: 2];
  assign x9 = ({p0, (!ctrl[2] && ctrl[2] && !ctrl[1] ? ({2{x5[18]}} ^ (!ctrl[3] || ctrl[3] || ctrl[2] ? x6[14 -: 4] : x8)) : x4[14 + s0])} & p1[16]);
  assign x10 = p1[12];
  assign x11 = (!ctrl[3] || ctrl[0] && ctrl[2] ? x4 : x0[15 +: 4]);
  assign x12 = {2{{2{p3[8 +: 3]}}}};
  assign x13 = (p0 ^ (p2[24 + s1 +: 3] ^ (!ctrl[2] && ctrl[1] || ctrl[2] ? {p1[17 + s2 +: 7], p3} : {p2[26 + s0 +: 2], (p3[11 + s1] & p2[29 + s0 -: 8])})));
  assign x14 = x13[12 -: 4];
  assign x15 = {{2{p2[2 + s2 +: 7]}}, {2{{{(ctrl[3] && ctrl[2] || !ctrl[0] ? p0 : p2[20 -: 1]), (ctrl[2] && ctrl[3] || ctrl[1] ? x2 : x12[23])}, p0}}}};
  assign y0 = (x1[16 +: 1] & x10[15 -: 2]);
  assign y1 = x0[22];
  assign y2 = p1[12 -: 2];
  assign y3 = (p1[13 + s3] ^ (!ctrl[1] || !ctrl[3] || ctrl[3] ? x14[13] : p2[8 + s2 -: 2]));
endmodule
