module partsel_00647(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [29:6] x4;
  wire [2:30] x5;
  wire signed [0:25] x6;
  wire [7:29] x7;
  wire [0:26] x8;
  wire [3:27] x9;
  wire [26:6] x10;
  wire [2:31] x11;
  wire [30:6] x12;
  wire signed [5:24] x13;
  wire signed [1:28] x14;
  wire [27:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:6] p0 = 605857923;
  localparam [2:28] p1 = 927527186;
  localparam [26:0] p2 = 69308742;
  localparam signed [28:5] p3 = 621521042;
  assign x4 = x3[11];
  assign x5 = {(p2[8 + s3] ^ x3[7 + s1 +: 4]), {2{{(p2[12 + s0] - {2{x1[11 + s1 -: 7]}}), x3}}}};
  assign x6 = {{x1[31 + s2 +: 6], (p1[30 + s3 -: 4] - (x1[26 + s1 +: 4] & {2{((x1[15 + s0 +: 1] - p2[2 + s1 +: 2]) | p1[19 +: 3])}}))}, x1[12 -: 3]};
  assign x7 = {2{p1[9 + s1 +: 7]}};
  assign x8 = {x1, p3[7 + s1]};
  assign x9 = {2{x3[18 +: 3]}};
  assign x10 = x7[25 + s2 +: 8];
  assign x11 = ({{x3[15], ((ctrl[3] || ctrl[2] && ctrl[0] ? p2 : p2[15 + s2]) & (x10[13 + s2 -: 7] | (x5[20] ^ p0[16 + s0])))}, x5} ^ {2{(((x7[29 + s2 -: 6] | x0[14 + s0]) ^ x3[20 + s3 +: 7]) & ({p2[16 -: 2], p3[12 +: 1]} ^ x5[16]))}});
  assign x12 = x7[22 + s2 +: 6];
  assign x13 = x7[15 + s1 +: 1];
  assign x14 = x3[9 + s3];
  assign x15 = ({2{x2}} | (p0[20 + s3 -: 3] + p0[10 +: 1]));
  assign y0 = p3[11];
  assign y1 = p3[13];
  assign y2 = (p1[13 +: 2] ^ x6[15 + s3]);
  assign y3 = p0[11];
endmodule
