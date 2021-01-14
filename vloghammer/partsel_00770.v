module partsel_00770(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [1:27] x4;
  wire [3:28] x5;
  wire signed [5:30] x6;
  wire [27:0] x7;
  wire [30:7] x8;
  wire [5:31] x9;
  wire [26:5] x10;
  wire signed [24:3] x11;
  wire [27:2] x12;
  wire signed [6:27] x13;
  wire [6:25] x14;
  wire signed [26:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:30] p0 = 689114642;
  localparam signed [29:1] p1 = 894515430;
  localparam signed [3:25] p2 = 88199405;
  localparam [6:25] p3 = 805332111;
  assign x4 = p1;
  assign x5 = (ctrl[1] && ctrl[3] || ctrl[0] ? x0 : (ctrl[3] && ctrl[3] || ctrl[3] ? x4[6 + s2] : x3[11 + s0]));
  assign x6 = x0[7 + s2 -: 1];
  assign x7 = x6[11 + s2];
  assign x8 = ((p2[16 + s0] & x0[22 -: 4]) + (x3 ^ {x2[9 +: 2], {2{(!ctrl[0] || !ctrl[0] || !ctrl[2] ? p1 : x1[15 -: 2])}}}));
  assign x9 = (ctrl[2] && !ctrl[2] && !ctrl[3] ? x2[12 +: 1] : p1[12 +: 3]);
  assign x10 = {p1[14 -: 1], x6[17]};
  assign x11 = {x2, {2{x3[18 -: 3]}}};
  assign x12 = ((x8[9 + s0] - p1[13 +: 4]) + ({({p0, p0[13 + s1 +: 7]} & x6[18 + s3]), p2[1 + s3 +: 2]} - x2[21]));
  assign x13 = (!ctrl[0] && ctrl[2] || ctrl[1] ? p3 : ((x4[10 + s2 -: 6] + (ctrl[2] || !ctrl[1] && ctrl[1] ? p3[16 +: 1] : {p0, p2})) & (x1 ^ (((x0[10 + s0] | p1) & p3) & ((x3[15 + s0 +: 4] & p3) ^ x1)))));
  assign x14 = {2{p3}};
  assign x15 = (x10 - ((x4[29 + s0 -: 7] - (ctrl[3] || !ctrl[2] || !ctrl[0] ? (x5[9 + s2 +: 1] & (x9[5 + s0] ^ x10[0 + s3 -: 6])) : (p0[18] + (x10[9 +: 4] & x14)))) ^ ((p1 & p1[15 +: 2]) & {x6[17 + s1], (x13[14 + s1] ^ p2[13 +: 2])})));
  assign y0 = x13[20 + s3 -: 3];
  assign y1 = (!ctrl[1] || !ctrl[0] && ctrl[0] ? ((x1[20 + s2 -: 4] - {(p1 + x13[14 + s3 +: 4]), {2{(p0[16] & (p1[21 + s3 -: 2] - p2[20 -: 3]))}}}) + (x1[8 + s2 +: 5] + (!ctrl[2] || ctrl[3] || ctrl[0] ? x11[18 +: 3] : x3[13 -: 1]))) : {(p2[10 + s0 -: 6] | p1[15]), {p0[15 -: 4], x15}});
  assign y2 = p3[16 +: 2];
  assign y3 = (!ctrl[3] || ctrl[2] && !ctrl[0] ? x14 : (!ctrl[2] || !ctrl[3] || ctrl[3] ? p0[14 + s1 -: 8] : p0));
endmodule
