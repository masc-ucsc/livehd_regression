module partsel_00180(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [31:7] x4;
  wire signed [24:6] x5;
  wire [30:4] x6;
  wire signed [0:26] x7;
  wire signed [28:6] x8;
  wire [3:31] x9;
  wire [4:24] x10;
  wire signed [25:7] x11;
  wire [7:26] x12;
  wire [4:27] x13;
  wire signed [30:5] x14;
  wire [27:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:24] p0 = 308689648;
  localparam signed [31:5] p1 = 761242103;
  localparam signed [5:26] p2 = 741978922;
  localparam [0:26] p3 = 98125970;
  assign x4 = p3[20 + s3 -: 3];
  assign x5 = x4;
  assign x6 = {2{((ctrl[2] && ctrl[2] && ctrl[2] ? ((x5[11] + ((p1[10 + s0 -: 2] + ((x0[16 +: 3] | x5[21 -: 2]) & x2[27 + s3 +: 3])) - p0)) ^ (x0[17] & x1[11 + s0])) : ((!ctrl[1] && ctrl[0] && ctrl[2] ? p3[19 +: 3] : x2[25 + s2 -: 8]) ^ x0[13 +: 2])) & (ctrl[1] || ctrl[3] && ctrl[2] ? p0[28 + s0 -: 4] : x4[4 + s2]))}};
  assign x7 = p0[13 +: 1];
  assign x8 = (p0[15 -: 4] - (ctrl[3] && !ctrl[3] || !ctrl[0] ? (ctrl[2] && ctrl[3] && !ctrl[1] ? (x1 + x1[13 +: 4]) : p1[21 -: 4]) : p1[5 + s2]));
  assign x9 = ({{2{({p3[20 + s1 -: 3], p1[12 + s3 +: 7]} | (x4[20] | p3[12 + s1]))}}, x0} ^ {p3[16 -: 3], p1[20]});
  assign x10 = (((ctrl[2] && !ctrl[2] || ctrl[3] ? p1 : {x5, (x9[22 -: 3] | x9)}) | {p3[22], p0[19 + s3 +: 6]}) ^ ({{(!ctrl[0] || !ctrl[2] && ctrl[2] ? p0[10 +: 2] : x3[19 +: 2]), x7}, (p1[15] ^ p3[13 + s2 +: 3])} + x4));
  assign x11 = x10[10 +: 1];
  assign x12 = x4;
  assign x13 = (p3 ^ x0);
  assign x14 = p1[6 + s3];
  assign x15 = x13[7 + s1 -: 7];
  assign y0 = x13[15 +: 1];
  assign y1 = (x7 ^ p3[18]);
  assign y2 = ((ctrl[2] || !ctrl[2] || ctrl[0] ? x10[14 +: 1] : ((p0 + {(p3 ^ x12[14 +: 4]), x11[3 + s1 +: 8]}) ^ x15[9 +: 2])) | ({2{{(!ctrl[0] && !ctrl[0] && !ctrl[1] ? p2[14 +: 4] : x4), p2[12 -: 1]}}} + p3));
  assign y3 = (((!ctrl[0] && !ctrl[3] || !ctrl[1] ? x10[17 +: 3] : {p2, (!ctrl[3] && !ctrl[2] && !ctrl[1] ? (x3[22 -: 3] | ((p0[18] - p3[17 + s0 +: 2]) ^ x4[19])) : (x9[12 + s1] + p3[13 +: 4]))}) + p2[16 -: 4]) ^ (x4[19 +: 1] - x12[8 + s3]));
endmodule
