module partsel_00624(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [31:4] x4;
  wire [26:7] x5;
  wire signed [5:26] x6;
  wire signed [26:2] x7;
  wire signed [31:5] x8;
  wire signed [5:28] x9;
  wire [5:29] x10;
  wire [26:7] x11;
  wire [2:30] x12;
  wire [6:31] x13;
  wire signed [28:7] x14;
  wire [2:27] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [31:6] p0 = 100225498;
  localparam [26:4] p1 = 254841497;
  localparam signed [1:31] p2 = 271243037;
  localparam [30:6] p3 = 271336472;
  assign x4 = x2;
  assign x5 = (p0[15] + ({2{{p0, (ctrl[1] && !ctrl[1] && ctrl[2] ? p2[15 + s3] : (p1[20 + s1 +: 8] + p0[16]))}}} | p1[16 +: 1]));
  assign x6 = ({2{x4}} ^ x4);
  assign x7 = {p1[16 + s2 +: 4], x5[19 + s0 +: 4]};
  assign x8 = (p2[1 + s0 +: 3] | ({2{p0[21 -: 4]}} + (x0[9 +: 3] - {p3[18 +: 4], x2[20 -: 1]})));
  assign x9 = {2{{x7[20 + s3 -: 3], p1}}};
  assign x10 = p1[5 + s3 +: 7];
  assign x11 = {2{p0}};
  assign x12 = ({2{({2{{p3[12 -: 1], p1[11 +: 4]}}} - p2)}} & p0[31 + s2 +: 6]);
  assign x13 = p1[11 +: 3];
  assign x14 = (({{2{(x6 & p2[18 +: 3])}}, {2{(p2[22] + (x10 & (p2 - x11[6 + s0])))}}} + p0[19 +: 3]) ^ (p2[15 + s1] & x3[21]));
  assign x15 = {{{2{({(x5[0 + s1 +: 2] ^ p2), p0[10 + s1]} & p0[23])}}, x9}, x6};
  assign y0 = (x0 | (p2[18 +: 3] | x12[8 + s1]));
  assign y1 = {2{x1}};
  assign y2 = x14[12 -: 1];
  assign y3 = (ctrl[0] && !ctrl[1] && !ctrl[1] ? x13[26 + s2 -: 3] : p0);
endmodule
