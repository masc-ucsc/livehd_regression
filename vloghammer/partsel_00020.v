module partsel_00020(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [3:28] x4;
  wire signed [3:31] x5;
  wire signed [30:5] x6;
  wire [0:24] x7;
  wire signed [6:27] x8;
  wire [3:27] x9;
  wire signed [30:3] x10;
  wire signed [27:0] x11;
  wire [31:6] x12;
  wire [26:5] x13;
  wire signed [26:2] x14;
  wire [27:4] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [27:2] p0 = 831028672;
  localparam [2:28] p1 = 792912107;
  localparam [4:31] p2 = 750463170;
  localparam signed [25:1] p3 = 840110507;
  assign x4 = p1[16];
  assign x5 = ({2{{p1[23], (x1 + p3[18])}}} - x2[22 -: 3]);
  assign x6 = ({(p3[15 + s1 -: 2] ^ (p0[17] ^ x3[1 + s1 +: 1])), (ctrl[0] || ctrl[2] && !ctrl[1] ? (ctrl[2] && ctrl[2] && !ctrl[3] ? (p2 & x0[5 + s2]) : x0[4 + s1 -: 6]) : ((!ctrl[2] && !ctrl[2] || ctrl[0] ? p2[16 +: 1] : p2[30 + s2 +: 2]) + (p1[12 +: 1] | x3)))} & {x3, (x1[12 + s2] ^ x4)});
  assign x7 = p2[16 +: 3];
  assign x8 = (x3[5 + s2 +: 6] & (p0 ^ p0[15 + s2]));
  assign x9 = (!ctrl[3] || ctrl[0] || ctrl[1] ? x3 : (ctrl[0] || ctrl[2] && !ctrl[1] ? x5[9 + s2 +: 6] : ({2{(p1[13 -: 4] ^ x3)}} ^ {2{(x2 | p2[12 -: 4])}})));
  assign x10 = (x8 ^ {2{{p1[11 +: 4], ((x7[15] + p0[20 -: 4]) + (p0[12] ^ p3[15 +: 3]))}}});
  assign x11 = (!ctrl[2] || ctrl[0] || !ctrl[2] ? p1[9 +: 3] : x6[20 + s3 +: 4]);
  assign x12 = {2{{2{{2{((p1[15 + s0] ^ x10[7 + s2]) ^ p3)}}}}}};
  assign x13 = x1;
  assign x14 = (ctrl[0] && !ctrl[2] || ctrl[0] ? (ctrl[3] || !ctrl[3] && ctrl[2] ? p1[22 + s2 +: 3] : x4[19 + s0]) : (x10 ^ ((!ctrl[2] || !ctrl[1] && !ctrl[0] ? (x13[17 + s0] | p2) : (!ctrl[1] || ctrl[2] && !ctrl[2] ? x5[10 + s3 -: 2] : p3)) + x7[7 + s0])));
  assign x15 = x13[10 + s0];
  assign y0 = x5[11 + s1];
  assign y1 = {p0, ({p3[14 +: 4], p3} & ((ctrl[1] && !ctrl[1] && ctrl[0] ? {2{p0}} : p1[23 -: 2]) | {{2{p2[20 -: 3]}}, {2{x5[16 + s0]}}}))};
  assign y2 = x14[8 + s2 +: 6];
  assign y3 = x14[4 + s0 +: 7];
endmodule
