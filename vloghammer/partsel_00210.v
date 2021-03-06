module partsel_00210(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [31:7] x4;
  wire signed [27:0] x5;
  wire signed [25:0] x6;
  wire signed [6:25] x7;
  wire signed [31:7] x8;
  wire [1:31] x9;
  wire [4:31] x10;
  wire [29:0] x11;
  wire signed [31:3] x12;
  wire signed [28:3] x13;
  wire [29:2] x14;
  wire [26:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:31] p0 = 184569860;
  localparam signed [30:5] p1 = 56513164;
  localparam [6:26] p2 = 829131164;
  localparam signed [29:6] p3 = 571541512;
  assign x4 = (p1 | {2{{2{p3[12 + s1]}}}});
  assign x5 = p0[7 + s0];
  assign x6 = {x0[0 + s1 +: 6], (x1[18] & (x3[18 -: 3] & p3[19 + s2]))};
  assign x7 = {2{x4[16 + s2 -: 2]}};
  assign x8 = p2;
  assign x9 = x5[16 -: 3];
  assign x10 = {2{(p3[30 + s1 +: 5] | ((!ctrl[2] || ctrl[1] || ctrl[2] ? {p0[19 +: 3], x5[8 +: 3]} : ((p3[18 + s0] + x9) | x7[7 + s0])) - (ctrl[1] || ctrl[2] || ctrl[0] ? p3[14 + s0 -: 1] : (p2[12 -: 4] & x9[16 +: 3]))))}};
  assign x11 = (ctrl[1] && !ctrl[1] && !ctrl[2] ? (ctrl[2] && !ctrl[1] || ctrl[3] ? (({p3, p0[3 + s1 -: 8]} + (p0[12] + p0[25 + s1 +: 2])) - (p2 ^ (p0[16] + x10[12 + s1 -: 5]))) : ((p1[17] & x5[18 -: 4]) | x5)) : {2{x0[19]}});
  assign x12 = {x1, p1[14 + s3 +: 3]};
  assign x13 = {(ctrl[2] || !ctrl[1] && !ctrl[2] ? {2{((p1[14 -: 4] - x10) | (x0[10 + s3] & (x0 ^ p2[13 + s0 -: 6])))}} : (ctrl[1] || !ctrl[3] && ctrl[0] ? ({2{x10}} ^ (p1[14] ^ p2[12 + s1])) : {2{{2{(((p0[8 +: 4] - p3) + p0[13 + s1 +: 1]) | p1[26 + s2 -: 6])}}}})), x8[20]};
  assign x14 = p2[21 -: 2];
  assign x15 = {2{(!ctrl[3] && ctrl[0] && !ctrl[2] ? (({p3[10 + s3 +: 2], x9[13]} ^ {(x13 ^ p0[18 + s1]), p0[16 + s1]}) & ({p1, (x3[28 + s0 +: 6] - (p3[12] + ((x10[20 -: 4] - (x8 & p1[15 +: 1])) - p1[26 + s2 -: 4])))} + x5[13 + s3 +: 5])) : x13[13 +: 3])}};
  assign y0 = ({2{((p1[13] - x1[9 + s2 +: 7]) | p3[24 + s3 -: 1])}} + p0[25 + s1 -: 3]);
  assign y1 = p1[9];
  assign y2 = p1[27 + s3 +: 8];
  assign y3 = p1[14 +: 1];
endmodule
