module partsel_00250(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [1:30] x4;
  wire signed [0:31] x5;
  wire signed [24:7] x6;
  wire signed [31:7] x7;
  wire [26:1] x8;
  wire [5:31] x9;
  wire [24:1] x10;
  wire signed [31:5] x11;
  wire [24:1] x12;
  wire [31:6] x13;
  wire [26:7] x14;
  wire [3:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:31] p0 = 809267771;
  localparam signed [29:4] p1 = 326647786;
  localparam [27:2] p2 = 54596198;
  localparam [30:1] p3 = 413298089;
  assign x4 = p1[15 + s2 +: 7];
  assign x5 = p1[17 +: 1];
  assign x6 = ((ctrl[2] || !ctrl[3] || ctrl[2] ? (((p2 & x3[29 + s1 +: 2]) | p0[18 + s2 -: 1]) & x5[15]) : {2{(x5[9] ^ (p3[8] | p1))}}) + ((((p3[14 + s1] ^ x5[16 -: 4]) - p0[22 + s0 +: 5]) & (!ctrl[0] || !ctrl[0] && !ctrl[3] ? (p0 ^ (p3[21 + s3 -: 4] - (x0[19 -: 3] - x0[16 +: 1]))) : (ctrl[0] || !ctrl[0] || ctrl[1] ? x5[18 + s2 -: 3] : x5))) | (x4[20 -: 2] & {2{(!ctrl[0] && ctrl[2] || !ctrl[3] ? x1[14 -: 4] : x2[20])}})));
  assign x7 = x6;
  assign x8 = (x3[4 + s2 +: 4] + (((p0[19 +: 4] ^ {x6, x7[19 -: 4]}) & p1) ^ (p1 ^ p0[16 + s2])));
  assign x9 = (p0[12 +: 3] & x8);
  assign x10 = {(x0[23 -: 4] | {(!ctrl[2] && !ctrl[2] && !ctrl[3] ? p1[10] : ((p1[9 + s3] + p3) & x7[13 +: 2])), ((!ctrl[3] && ctrl[3] || ctrl[3] ? (p0[10 +: 2] - p3) : (p0[16] + (p1[30 + s3 +: 4] + p2[21 + s0 +: 3]))) | (x6[23 -: 3] | p0))}), ((x1[16 + s1] ^ {2{x2[10 + s0 +: 3]}}) ^ (x8[16 + s3 -: 4] - {2{(ctrl[2] || !ctrl[2] && !ctrl[3] ? p3[10] : x8[18 + s2])}}))};
  assign x11 = {{2{{2{p3[20 + s3 -: 5]}}}}, x1[16 + s1 +: 6]};
  assign x12 = (p0[5 + s2 -: 1] + p2[14 + s1]);
  assign x13 = x2[10 + s3 +: 5];
  assign x14 = (x0 - x6[19 -: 4]);
  assign x15 = p1;
  assign y0 = p1[15 -: 4];
  assign y1 = (x2 & {2{p0[23]}});
  assign y2 = p2[3 + s0 -: 4];
  assign y3 = (!ctrl[1] && ctrl[1] && !ctrl[0] ? p3[29 + s3 +: 7] : p3[9 + s2 +: 5]);
endmodule
