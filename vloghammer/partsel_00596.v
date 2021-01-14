module partsel_00596(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [3:30] x4;
  wire signed [24:1] x5;
  wire [31:5] x6;
  wire signed [2:30] x7;
  wire [30:1] x8;
  wire [24:2] x9;
  wire [29:5] x10;
  wire [3:26] x11;
  wire [4:29] x12;
  wire [29:3] x13;
  wire signed [5:24] x14;
  wire [24:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:26] p0 = 15283303;
  localparam [27:6] p1 = 708600292;
  localparam signed [26:3] p2 = 866177885;
  localparam signed [26:2] p3 = 360623173;
  assign x4 = (((p0[9 + s1 -: 8] ^ p2) - p3[15 -: 3]) + (p1[16] & ((ctrl[3] && !ctrl[0] && ctrl[0] ? {2{(x1[28 + s2 +: 8] + x3[12 + s0])}} : (x0[17] - (x0[18 -: 2] & x0[9]))) - p1[5 + s0 +: 8])));
  assign x5 = ({2{(p2[18 -: 3] | x4)}} & (({2{x3[6 + s1 -: 5]}} ^ x4[15 +: 4]) + (ctrl[0] || !ctrl[2] && !ctrl[2] ? {2{p1[20]}} : {p1[8 +: 4], (p0[8 + s3] & p3[9 +: 1])})));
  assign x6 = x0[16 + s2];
  assign x7 = ({(ctrl[3] || !ctrl[3] || ctrl[0] ? x3[22 -: 2] : (x3 & p2[14 +: 2])), x4[16 -: 1]} - (!ctrl[1] && ctrl[3] && ctrl[0] ? p2 : x1[16]));
  assign x8 = (ctrl[1] || !ctrl[3] || ctrl[0] ? (p3 | ({2{((p3[8] - x2) - x6[6 + s0])}} & {2{(x3[9] ^ x7[10 +: 1])}})) : x2);
  assign x9 = x1[12];
  assign x10 = x1[28 + s0 -: 2];
  assign x11 = (!ctrl[2] && ctrl[2] || ctrl[1] ? p3[1 + s0 +: 4] : {(x9[11 + s0 +: 1] + ({2{p3}} & (p3[8 +: 3] - (p3[29 + s3 -: 7] & p2[12 -: 4])))), {p1, ((p3[20 -: 3] + (p3 | (p0[22 + s0 -: 8] | p1))) - (x4[16] ^ p0[12 -: 4]))}});
  assign x12 = ({2{x11[12 +: 1]}} - x7[14]);
  assign x13 = (ctrl[0] || ctrl[0] && ctrl[2] ? p0[17 +: 4] : ((!ctrl[3] || !ctrl[0] && !ctrl[1] ? (p3 | {p0[4 + s3 +: 8], p0}) : x11[10]) | x4[10]));
  assign x14 = p0;
  assign x15 = (!ctrl[2] && !ctrl[2] && !ctrl[1] ? {p1[22], (((x12 | p1) - (p3[22 + s0 -: 3] - p3[17 +: 1])) ^ {2{x7[13 +: 1]}})} : {2{(((x5[14 + s2] + p3) ^ x12) - ((x7[0 + s1 +: 7] | x13[15 +: 4]) ^ {2{x8}}))}});
  assign y0 = {x1[12 + s0 +: 3], ((x14[17 -: 1] ^ {2{{p2[21 -: 4], p2}}}) | (((x14 & p1) & {2{x8[15]}}) + (p0[10 + s1] - x4[15 +: 3])))};
  assign y1 = (p0[23 -: 3] | {2{(((x4[12 + s1] - p1) - {2{x8}}) - x10[8])}});
  assign y2 = (({{2{{2{p3[0 + s2 +: 5]}}}}, p1} + (ctrl[0] && ctrl[2] || ctrl[2] ? x2[10 + s0 -: 1] : ((x3[29 + s1 -: 3] & x7[5 + s0]) ^ x2))) - ((((!ctrl[2] || !ctrl[1] || !ctrl[1] ? x10[17 +: 2] : p0) + x1[8 + s2]) | (p3[9 + s2 +: 4] & (x9[28 + s3 -: 3] | (p2 ^ x4[14 -: 2])))) + ((!ctrl[1] || !ctrl[1] || !ctrl[3] ? (ctrl[0] || ctrl[1] || ctrl[1] ? x15 : ((x1 | p0) - x11)) : (x15[9 +: 4] - (p2[12 -: 2] - p2))) ^ x7[5 + s3])));
  assign y3 = p1[10 + s1];
endmodule
