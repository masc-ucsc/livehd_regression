module partsel_00343(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [3:28] x4;
  wire [30:4] x5;
  wire [31:0] x6;
  wire signed [31:3] x7;
  wire [2:30] x8;
  wire signed [26:5] x9;
  wire [24:7] x10;
  wire [4:27] x11;
  wire [2:31] x12;
  wire [0:30] x13;
  wire signed [2:24] x14;
  wire [24:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:7] p0 = 43140871;
  localparam [28:2] p1 = 74262711;
  localparam [29:0] p2 = 312246002;
  localparam signed [25:3] p3 = 852421743;
  assign x4 = p1[6 + s1];
  assign x5 = (!ctrl[1] && ctrl[2] || !ctrl[2] ? (p3[22] + ((x3[16 + s0] & {2{p1[9 +: 3]}}) | (x3[2 + s1 -: 8] - x1[15]))) : ((!ctrl[0] || ctrl[3] || !ctrl[1] ? x0[17 + s1 +: 2] : x3[14 +: 3]) ^ p2[6 + s2 -: 1]));
  assign x6 = x2[17 + s1 +: 5];
  assign x7 = {2{{p0[27 + s0 +: 3], (ctrl[3] || !ctrl[3] && ctrl[2] ? x6[0 + s0 -: 1] : ({2{p0[15 + s3]}} ^ x4))}}};
  assign x8 = {p3[14 + s0 -: 3], {2{{2{p3[15 + s3 -: 6]}}}}};
  assign x9 = {2{(x8[9 +: 1] + x7[19 + s0])}};
  assign x10 = x5[14 + s1 -: 4];
  assign x11 = ((!ctrl[2] || ctrl[2] || ctrl[1] ? (x3[17 + s3] | {(p3[10 +: 1] + (x4 + x10[14 + s2])), p3[15 -: 2]}) : {{{p2, x3[19 -: 1]}, (x0[10 +: 4] & x7)}, {2{{2{p0}}}}}) - p3);
  assign x12 = (ctrl[1] && !ctrl[1] && ctrl[1] ? (x0 + {2{{x11[4 + s0 +: 6], p0[14 + s1]}}}) : (p1[3 + s3 +: 8] ^ x3[11 +: 2]));
  assign x13 = ({2{p1[0 + s0 +: 5]}} + (x8[8 + s3 +: 5] | {2{(((x3[13] - p3[17]) + (p1 & x9[3 + s2 +: 3])) | (p3[6 + s2 -: 3] - (p0 - x0)))}}));
  assign x14 = (ctrl[3] || !ctrl[2] && !ctrl[0] ? (!ctrl[1] && !ctrl[3] || !ctrl[0] ? {2{x4}} : (x10[31 + s3 +: 1] | (x2 | p1))) : p1);
  assign x15 = (x9[14 + s2 -: 1] - (((p2[5 + s0 +: 4] ^ {2{x9[9 + s1 -: 4]}}) & (x10[19 + s1] | x2)) - ((x4[18 -: 4] + p0[13 + s0 +: 2]) - {(x12[22] & p3[13]), x8[10 +: 2]})));
  assign y0 = (((!ctrl[0] && !ctrl[0] || !ctrl[3] ? p2[9 + s1] : (x3[19 -: 3] + (x13[15 + s0 +: 2] & x0[9 +: 2]))) ^ {2{{(p1 & x0[1 + s1 +: 8]), {2{x0}}}}}) + x12[10]);
  assign y1 = {2{{2{p3}}}};
  assign y2 = x13;
  assign y3 = ({2{x5[31 + s3 +: 3]}} | {x2[6 + s2 -: 2], (x12 + (ctrl[0] && !ctrl[0] || !ctrl[0] ? x12[12 +: 4] : p2[15 + s0]))});
endmodule
