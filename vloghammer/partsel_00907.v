module partsel_00907(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [28:7] x4;
  wire signed [0:26] x5;
  wire [2:26] x6;
  wire [6:25] x7;
  wire [4:26] x8;
  wire [3:30] x9;
  wire signed [30:4] x10;
  wire signed [24:7] x11;
  wire signed [27:3] x12;
  wire [1:26] x13;
  wire [25:7] x14;
  wire signed [29:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [30:2] p0 = 631668710;
  localparam signed [2:28] p1 = 757870190;
  localparam signed [29:6] p2 = 779280587;
  localparam [31:7] p3 = 98532491;
  assign x4 = {x0[23], (!ctrl[0] && ctrl[1] || ctrl[1] ? p3[9] : (((ctrl[3] || !ctrl[3] && !ctrl[2] ? p1[18 + s2] : p3[21 -: 4]) - p0) ^ (!ctrl[2] && !ctrl[0] && ctrl[1] ? p1[16 + s0] : {p2[28 + s0 +: 3], p1[16 + s2 -: 1]})))};
  assign x5 = x3[16 -: 4];
  assign x6 = (ctrl[3] && !ctrl[1] || !ctrl[2] ? x2[17] : {2{{(x5[14 + s2 +: 4] - (x0[10] ^ (p3[18 -: 3] + x4[14 + s2 +: 4]))), (p2[4 + s0 +: 3] | {2{p3}})}}});
  assign x7 = p3;
  assign x8 = x5[13 +: 1];
  assign x9 = {2{({(p1[23 + s3 +: 1] & {p0[19 + s1 -: 8], p1}), x0[19 -: 1]} - x4[28 + s3 +: 8])}};
  assign x10 = ((!ctrl[1] || ctrl[1] || ctrl[0] ? (x9[19 +: 4] | (p0[11 + s1] - (x7[12 +: 3] - x1[9 + s0 +: 4]))) : (p0[28 + s2 +: 6] ^ (!ctrl[0] && !ctrl[3] || ctrl[2] ? {p3, p0[13 -: 1]} : x8[8 +: 2]))) & (p0[22 + s0 -: 4] + {2{x2}}));
  assign x11 = p2[23 -: 1];
  assign x12 = x6[19 -: 2];
  assign x13 = p3[23 -: 1];
  assign x14 = ({2{{2{{{2{p2[11]}}, p3}}}}} & x6[19 +: 1]);
  assign x15 = {2{(((p1[22 -: 3] + {2{x0[16 + s3 +: 5]}}) ^ x4[13 + s0]) | {({2{p3[16 +: 1]}} | (p2[12 +: 2] + p3)), (ctrl[3] && !ctrl[1] && ctrl[0] ? (p3[29 + s3 -: 2] & p0[10 + s2]) : p2[18])})}};
  assign y0 = (x0 ^ x3);
  assign y1 = p3[15 + s0];
  assign y2 = p3[14 -: 3];
  assign y3 = ({(ctrl[0] && !ctrl[3] || ctrl[3] ? p3[22 -: 2] : (p2[26 + s2 -: 4] + {x15[18 + s3], (x9[7 + s2 +: 6] | x1[15 -: 4])})), p1} & p0[12 + s0 -: 6]);
endmodule
