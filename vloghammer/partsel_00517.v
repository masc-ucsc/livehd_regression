module partsel_00517(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [6:29] x4;
  wire signed [4:28] x5;
  wire [2:29] x6;
  wire signed [28:0] x7;
  wire [5:26] x8;
  wire [29:7] x9;
  wire [25:7] x10;
  wire [26:7] x11;
  wire signed [29:4] x12;
  wire [0:27] x13;
  wire [28:4] x14;
  wire [0:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:5] p0 = 657510034;
  localparam [7:27] p1 = 953526642;
  localparam [3:29] p2 = 47840995;
  localparam [31:7] p3 = 396658090;
  assign x4 = ((x0[15 +: 2] | {2{p2[12]}}) ^ x1[16 + s1]);
  assign x5 = p2[19 + s2 -: 3];
  assign x6 = (ctrl[0] && !ctrl[3] && ctrl[3] ? p3 : {2{{2{(ctrl[1] || ctrl[3] && !ctrl[3] ? p2 : p1[17 + s2])}}}});
  assign x7 = ((x0[19 -: 4] | ({2{((p2[9 + s0] & p1) & x2)}} - p1[22 -: 4])) & (ctrl[0] && !ctrl[3] && !ctrl[3] ? {(p0 - x1[24 + s1 -: 2]), (ctrl[1] && ctrl[3] || !ctrl[2] ? p0 : x5)} : p1));
  assign x8 = p3[20 -: 1];
  assign x9 = (x6 + (((ctrl[3] && !ctrl[1] || ctrl[0] ? (x0 - ((p1[16 + s1] - p0[25 + s1 -: 7]) ^ (((p0[10] ^ p2[6 + s2]) - (x8[19] ^ p3)) & (p3[16 +: 1] + (p1[21 -: 3] - x7[17 + s2 +: 4]))))) : p2[17]) ^ x4) - x0[6 + s1 -: 4]));
  assign x10 = {2{p3[20]}};
  assign x11 = x3[10 +: 1];
  assign x12 = p1[17];
  assign x13 = {{x0[22 + s1 -: 3], (p1[12 + s0 +: 5] & {2{((x0[13 +: 2] & p2[6 + s2]) ^ (x3[17 + s2] + p3))}})}, (p1[7 + s0 -: 3] & x0)};
  assign x14 = (({((p1[13 + s1] ^ p3[19 + s2]) & {p1, x3}), x6[16]} ^ ({(p2[16] | x11[10]), {p3[13], x6[23]}} - ({2{p3[16 -: 2]}} | x9[13 + s3]))) & p0);
  assign x15 = p0[14 + s3 -: 8];
  assign y0 = x6[30 + s3 -: 1];
  assign y1 = x7[10 + s0 -: 6];
  assign y2 = (!ctrl[2] || !ctrl[1] || !ctrl[2] ? (!ctrl[3] && !ctrl[0] && ctrl[0] ? {2{p3[20 -: 1]}} : (((p1[21 -: 3] ^ (p2[14 -: 3] + x5[23 + s2 +: 6])) ^ x8[21]) ^ ((ctrl[1] || !ctrl[3] && !ctrl[0] ? p1 : x13[6 + s2 -: 6]) + (x1[13] + p0[15 +: 2])))) : (x2[18 + s0] | (((ctrl[2] || !ctrl[2] || !ctrl[2] ? x13[19 + s2 +: 1] : p1) + p1[21 -: 2]) + ({p1[18 + s2], x3} ^ (ctrl[3] || !ctrl[2] && ctrl[1] ? p0[18 -: 2] : x2[20])))));
  assign y3 = {(p0 & p2[21]), x3[20 + s0 -: 8]};
endmodule
