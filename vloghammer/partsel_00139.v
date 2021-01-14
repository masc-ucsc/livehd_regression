module partsel_00139(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [1:29] x4;
  wire [26:1] x5;
  wire signed [7:26] x6;
  wire [7:30] x7;
  wire signed [5:30] x8;
  wire signed [3:30] x9;
  wire [25:4] x10;
  wire signed [28:6] x11;
  wire signed [27:0] x12;
  wire [25:0] x13;
  wire [24:5] x14;
  wire [30:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:4] p0 = 219445596;
  localparam signed [6:31] p1 = 295383494;
  localparam signed [26:5] p2 = 6842231;
  localparam [24:0] p3 = 680488192;
  assign x4 = ({((x2[19] + {2{p3[16 + s2 +: 6]}}) ^ p2[7 + s0 +: 5]), (ctrl[2] || !ctrl[1] && !ctrl[1] ? x3[17 + s0 +: 6] : {{2{p0[23 -: 3]}}, (p2[23 -: 1] + p0[17])})} | {p1[11 +: 1], x1});
  assign x5 = ((({2{(p2[11 + s1 -: 8] - p0[3 + s3 +: 7])}} & ((ctrl[3] || !ctrl[1] || ctrl[0] ? p2 : (p3[13 -: 1] ^ p3)) + (p1[2 + s1 +: 7] & p2))) + ({2{(!ctrl[1] && ctrl[3] || ctrl[2] ? x2 : (x1[10 + s3] & p1[17 + s2]))}} ^ x0[4 + s3])) & x1[6 + s1]);
  assign x6 = p2[8 + s1 +: 6];
  assign x7 = x0[2 + s1 +: 7];
  assign x8 = x3[19 -: 4];
  assign x9 = (p2[24 + s2 -: 7] - x2);
  assign x10 = p0[2 + s0 +: 2];
  assign x11 = (x10[10 + s1 +: 1] + (ctrl[3] && !ctrl[2] || ctrl[0] ? {((p2[19 + s1] ^ x5[12 + s0]) - p0), p1[15 -: 2]} : {p1[19 + s3 -: 8], {2{x3}}}));
  assign x12 = (!ctrl[1] && !ctrl[2] || !ctrl[2] ? (ctrl[3] && !ctrl[1] || ctrl[2] ? x1[18 + s3] : {2{(x8[12 +: 2] + x5[4 + s3 +: 1])}}) : x2);
  assign x13 = (p2[22] | {2{{2{(x6[22 + s1 -: 1] + (x9[30 + s2 -: 6] & p2[18]))}}}});
  assign x14 = p2[13];
  assign x15 = x1;
  assign y0 = p3[18 + s0 +: 5];
  assign y1 = {p0[9 + s1 -: 3], {p2[22 + s3 -: 2], (x9 | {2{{p2[18], x14[21 + s2 -: 2]}}})}};
  assign y2 = ({2{p3}} + ((x2[21] & x3[16]) | p2));
  assign y3 = (((ctrl[3] || ctrl[0] || ctrl[0] ? {2{(x4 ^ p2)}} : {2{(!ctrl[1] && ctrl[3] && !ctrl[0] ? p1[19 +: 2] : x14[15 +: 3])}}) & ((x2[8 + s1] ^ {x0[9], p2[27 + s2 +: 6]}) + x8[0 + s0 -: 1])) + {p1[20 + s1 -: 5], p0[14 +: 4]});
endmodule
