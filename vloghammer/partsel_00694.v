module partsel_00694(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [26:5] x4;
  wire [6:29] x5;
  wire [26:5] x6;
  wire signed [2:24] x7;
  wire signed [3:25] x8;
  wire signed [25:2] x9;
  wire signed [2:30] x10;
  wire signed [31:4] x11;
  wire signed [30:0] x12;
  wire signed [0:27] x13;
  wire signed [25:6] x14;
  wire [28:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:3] p0 = 164928561;
  localparam signed [0:25] p1 = 863162169;
  localparam signed [0:31] p2 = 408073900;
  localparam [29:1] p3 = 663397536;
  assign x4 = {2{x2[10 + s0 +: 3]}};
  assign x5 = ((!ctrl[3] || !ctrl[3] || ctrl[0] ? {2{({2{x2}} | x4[20 + s2 +: 8])}} : ({2{((x4[22 -: 1] + x3[21]) | p0[26 + s0 +: 5])}} ^ x2[21 + s0 -: 7])) & x0[7 + s2]);
  assign x6 = (x0 - p0[15 + s1]);
  assign x7 = ((p1[19 +: 1] - x2) - {(({2{x4[20 -: 4]}} ^ {2{((x5[14] + x5[23 -: 4]) & x1[12 -: 2])}}) & x0), x3[13 + s0 -: 4]});
  assign x8 = (!ctrl[2] && !ctrl[0] && !ctrl[2] ? p3[2 + s1 -: 5] : {2{x4}});
  assign x9 = p0[10 + s3];
  assign x10 = p2[15 + s3 +: 6];
  assign x11 = (ctrl[2] && ctrl[1] && !ctrl[2] ? {p0[9 + s2 +: 1], (!ctrl[2] || ctrl[1] && ctrl[1] ? p2[23 + s1 -: 6] : {(p2[14 +: 1] | (x2 - p1)), {p3[22 -: 4], (p2[10] ^ x2)}})} : (!ctrl[1] || ctrl[2] && !ctrl[0] ? {x1[20 -: 1], {2{x0[4 + s3 -: 8]}}} : ({p3[9 +: 4], (x9[12 +: 1] | p3[11 + s1])} - x1[19 -: 1])));
  assign x12 = (x7 & p3);
  assign x13 = {x3[10], x7[15 + s1 +: 2]};
  assign x14 = p0[10 + s3];
  assign x15 = (p2[12 + s0] - x8[7 + s2 -: 3]);
  assign y0 = (!ctrl[1] || ctrl[3] && !ctrl[0] ? (x1 - {2{((!ctrl[1] || ctrl[1] || ctrl[1] ? p3[23] : x8[15 -: 3]) - (p2[10 +: 2] & p0))}}) : ((p2 - p3) ^ (p1[14 + s1 +: 1] | (p0[24 + s0 +: 2] + p3[13 + s3 +: 7]))));
  assign y1 = x15;
  assign y2 = p3;
  assign y3 = ({2{p1}} ^ (ctrl[0] && ctrl[1] && ctrl[0] ? p3[14 -: 3] : x5[23 + s3 -: 6]));
endmodule
