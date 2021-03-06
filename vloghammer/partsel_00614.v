module partsel_00614(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [25:3] x4;
  wire [4:26] x5;
  wire signed [3:27] x6;
  wire [30:6] x7;
  wire signed [3:29] x8;
  wire [29:2] x9;
  wire [27:4] x10;
  wire [30:6] x11;
  wire [26:2] x12;
  wire signed [2:25] x13;
  wire signed [3:31] x14;
  wire [31:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [30:4] p0 = 223745181;
  localparam signed [7:30] p1 = 736068859;
  localparam [2:31] p2 = 133444705;
  localparam signed [1:25] p3 = 50294188;
  assign x4 = {2{({2{x2[21 + s3 -: 8]}} - x0)}};
  assign x5 = p2[11 + s0 -: 3];
  assign x6 = p1[9 +: 2];
  assign x7 = x5[14 +: 3];
  assign x8 = p0[16 + s3 +: 2];
  assign x9 = {2{(x1[18 + s0 +: 6] | p1[16 -: 3])}};
  assign x10 = p2[19 + s3 -: 3];
  assign x11 = {2{p1[12]}};
  assign x12 = (x8[29 + s0 +: 2] & (!ctrl[2] || ctrl[0] && !ctrl[2] ? (ctrl[0] || ctrl[1] && ctrl[0] ? x4[10 + s1 -: 2] : ((p1[8 + s0] | p1[26 + s1 +: 3]) ^ p0)) : (x6 & x3)));
  assign x13 = p2[10 + s1];
  assign x14 = (p1[13 + s3 -: 7] ^ (ctrl[1] && !ctrl[3] && !ctrl[1] ? p2[14 + s1 +: 5] : x6[29 + s0 -: 7]));
  assign x15 = {p2[8 + s2 -: 8], (!ctrl[1] && ctrl[3] && !ctrl[1] ? x0[31 + s0 +: 2] : (ctrl[3] && ctrl[0] && ctrl[3] ? x14 : ({x9[20 -: 4], p1} & (!ctrl[0] && !ctrl[1] && ctrl[3] ? x11[6 + s1] : x7))))};
  assign y0 = p0;
  assign y1 = ({2{(p0 | {2{p3[4 + s2]}})}} + {2{{2{{2{((p1[30 + s0 -: 1] - (p1[26 + s3 +: 8] + p2[16 + s0 +: 2])) - (p1[17 -: 3] - x13[14 -: 3]))}}}}}});
  assign y2 = (x2 ^ {x15[18 + s1 +: 6], {x15[11], (p0[8 + s3] | x11[15 + s0])}});
  assign y3 = x3[16 + s2 -: 7];
endmodule
