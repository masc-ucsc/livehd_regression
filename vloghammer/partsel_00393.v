module partsel_00393(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [27:0] x4;
  wire [3:30] x5;
  wire [30:4] x6;
  wire [0:30] x7;
  wire signed [28:3] x8;
  wire signed [29:3] x9;
  wire [0:31] x10;
  wire signed [6:27] x11;
  wire [27:0] x12;
  wire signed [2:29] x13;
  wire [24:1] x14;
  wire [26:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:5] p0 = 822799671;
  localparam signed [2:25] p1 = 958367092;
  localparam [28:4] p2 = 28854834;
  localparam signed [27:6] p3 = 914578751;
  assign x4 = ({2{((x3[8 +: 1] ^ (((x0[2 + s2 -: 8] + x2[11 + s2 -: 4]) & p1[11 +: 4]) - p2)) + ((p3 ^ (x1[12 + s1 +: 1] - (x0 + p0[9 + s0 +: 1]))) | x3[9 + s1 +: 8]))}} ^ (p1[6 + s0] & p2));
  assign x5 = (p3[14 +: 3] | x0[11 + s3]);
  assign x6 = ({p0[22], (p3[16 +: 2] ^ (ctrl[2] || ctrl[1] && ctrl[2] ? p3[11 + s2 -: 1] : (x3 | x3[14])))} & p2[16]);
  assign x7 = {{2{p3[23 -: 1]}}, (p0[6 + s0 -: 5] - {{(ctrl[2] && !ctrl[0] && !ctrl[0] ? p1[22 -: 2] : x2), {x5, x0}}, ((ctrl[3] && ctrl[0] && !ctrl[2] ? p2[21 -: 3] : p2) & (x6 | p2[21]))})};
  assign x8 = x6[19 -: 3];
  assign x9 = (p3[10 + s1 +: 2] & {2{({2{(p1[16] + x3[23 -: 2])}} & x1[14 + s3])}});
  assign x10 = p2[14 +: 2];
  assign x11 = p0[25 + s2 +: 6];
  assign x12 = (!ctrl[2] && ctrl[0] || ctrl[0] ? {x5[13 + s2], x7} : {2{x8[10 + s1 -: 7]}});
  assign x13 = {2{p0[14 + s2 -: 8]}};
  assign x14 = p0[21 -: 2];
  assign x15 = ((((ctrl[2] && !ctrl[2] || ctrl[0] ? (p2[19] + x11[21 + s2 +: 8]) : (p0[7 + s1 +: 6] & x10[8 + s2])) - p1[14]) | p0[10]) + p0[14]);
  assign y0 = x9[14 + s1 -: 6];
  assign y1 = {2{({2{x13[15 + s2]}} & p2)}};
  assign y2 = (!ctrl[0] && !ctrl[2] && ctrl[3] ? (p1[19 -: 4] - {2{(p3[13 + s2] + x2[19 + s2])}}) : ({{p1[4 + s0 +: 1], (p2[17 +: 4] ^ p2[10])}, (x3[13] ^ x12)} ^ (!ctrl[1] || !ctrl[1] && ctrl[3] ? p0[28 + s2 +: 2] : ((!ctrl[2] || !ctrl[1] || !ctrl[2] ? p2[19] : ((x15[14 + s3] - (p0[21 -: 3] | ((p1[15 +: 1] + x0[14]) - (p1 ^ x6[17 +: 1])))) | x14[18])) & (p3[14 -: 4] + x15[31 + s3 +: 2])))));
  assign y3 = p0[15];
endmodule
