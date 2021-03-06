module partsel_00230(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [5:25] x4;
  wire signed [5:26] x5;
  wire signed [30:6] x6;
  wire signed [6:27] x7;
  wire signed [29:0] x8;
  wire [0:29] x9;
  wire signed [26:5] x10;
  wire signed [27:5] x11;
  wire signed [1:27] x12;
  wire [27:3] x13;
  wire [7:30] x14;
  wire [0:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:0] p0 = 10914767;
  localparam signed [31:6] p1 = 492044366;
  localparam [24:3] p2 = 802037240;
  localparam [24:3] p3 = 703647066;
  assign x4 = p2[14 + s2];
  assign x5 = p1[23];
  assign x6 = (x4 | (x4[15 -: 1] - {x4[9 + s1], (ctrl[3] || ctrl[1] || !ctrl[2] ? p0 : x4)}));
  assign x7 = x4[19 + s1 -: 8];
  assign x8 = ({2{p2[21]}} | {2{({{x6[10], p0[10]}, {p3, x3}} - (((x5[18] | p1[13 + s3 +: 8]) & x5) & x3[4 + s0]))}});
  assign x9 = p3[6 + s2 -: 3];
  assign x10 = (((ctrl[0] && !ctrl[2] && ctrl[2] ? p1[20 -: 2] : p1) + (((p3[8] | x0) | {x6, p1}) & ((ctrl[1] || !ctrl[3] && !ctrl[0] ? (x2[13] & p0) : p1[12]) & {(x2[9 +: 2] ^ p1[29 + s3 -: 8]), x8[15 + s0]}))) + p2[9]);
  assign x11 = {(ctrl[2] || !ctrl[1] || !ctrl[2] ? x7 : p1[15 -: 2]), x1[8 + s2]};
  assign x12 = x11[26 + s3 -: 1];
  assign x13 = (p0[22 -: 3] & x11[5 + s2]);
  assign x14 = (x1[8 + s0 -: 4] & x8);
  assign x15 = x1[13 + s3];
  assign y0 = p0[25 + s1 -: 2];
  assign y1 = x5[21];
  assign y2 = {{({2{((x0[7 + s0] ^ p3[15 -: 4]) + x9)}} + {2{{2{x13[18 + s1]}}}}), x2[12]}, (p2[17] ^ (x12[24 + s2 +: 2] | (x0[23 + s2 +: 7] | x15[2 + s3 -: 1])))};
  assign y3 = ((ctrl[3] && ctrl[2] || !ctrl[0] ? p1[8] : x0[17]) - p0[9]);
endmodule
