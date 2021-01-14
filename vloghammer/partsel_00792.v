module partsel_00792(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [28:5] x4;
  wire signed [0:29] x5;
  wire signed [0:29] x6;
  wire [0:29] x7;
  wire [3:29] x8;
  wire [26:5] x9;
  wire [29:5] x10;
  wire [4:25] x11;
  wire signed [30:4] x12;
  wire signed [26:6] x13;
  wire signed [5:26] x14;
  wire signed [27:6] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:24] p0 = 253253880;
  localparam [4:28] p1 = 603813208;
  localparam [5:24] p2 = 863690436;
  localparam signed [25:5] p3 = 476211164;
  assign x4 = (ctrl[1] && !ctrl[3] && ctrl[3] ? (p3 & ((x3[12 +: 4] & x2[13 + s1]) - (!ctrl[2] && !ctrl[3] || ctrl[3] ? p1[23] : {2{p3}}))) : (p2[18] & (p2[4 + s0 -: 1] | p3)));
  assign x5 = ((({{x1[19 -: 3], x1[22 + s1 -: 2]}, (p0[4 + s1] | p0[11 + s0 +: 5])} | {2{(x2[1 + s0 -: 3] & p1[19 + s3])}}) - ((ctrl[2] || !ctrl[0] && !ctrl[3] ? {x1[14 + s2], x0[31 + s1 +: 6]} : {2{x3}}) + {2{(x0[11] + p3[19 -: 1])}})) | {2{(!ctrl[2] && !ctrl[3] || ctrl[2] ? x1[9 + s3 -: 1] : x4)}});
  assign x6 = x2[12 + s2];
  assign x7 = p0[8];
  assign x8 = p3[1 + s3 -: 2];
  assign x9 = x3[21];
  assign x10 = p0[12 +: 4];
  assign x11 = x6[0 + s0 -: 8];
  assign x12 = p3;
  assign x13 = (!ctrl[3] && ctrl[0] && !ctrl[1] ? x7[14 +: 4] : p2);
  assign x14 = ({(p0[16 + s2 -: 6] ^ (x9 - x2[14 -: 4])), ({2{{p3[14 +: 2], p1[12 + s3 -: 8]}}} | (p2[18 + s3 +: 6] & {(p2[27 + s2 -: 4] + p3[12 +: 1]), ((x6[21 + s3 +: 6] - x9[22 -: 1]) + p0[25 + s1 -: 3])}))} + x4);
  assign x15 = p2[20];
  assign y0 = x5[19 + s3 -: 7];
  assign y1 = (x11[17 -: 2] + {2{((p0[6 + s3 +: 3] - x8) + x1[7 + s1])}});
  assign y2 = x1[17];
  assign y3 = ((p3 - p3[13 + s2]) ^ x4[23]);
endmodule
