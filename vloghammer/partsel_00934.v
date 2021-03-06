module partsel_00934(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [31:3] x4;
  wire signed [1:28] x5;
  wire signed [30:7] x6;
  wire signed [26:0] x7;
  wire [0:24] x8;
  wire signed [28:5] x9;
  wire signed [4:24] x10;
  wire [1:28] x11;
  wire signed [2:31] x12;
  wire [0:28] x13;
  wire [28:4] x14;
  wire signed [25:4] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:24] p0 = 308277920;
  localparam [2:27] p1 = 444091361;
  localparam [4:24] p2 = 823279295;
  localparam signed [24:1] p3 = 719808074;
  assign x4 = (ctrl[1] && !ctrl[1] || !ctrl[2] ? (x2[24 + s3 +: 8] - x1[9 +: 2]) : p0[19 -: 3]);
  assign x5 = ((!ctrl[3] && ctrl[3] || !ctrl[2] ? x1[5 + s2] : x2[23]) - p3[14 -: 4]);
  assign x6 = x0[8 + s1 +: 8];
  assign x7 = x0[8 +: 4];
  assign x8 = (x5[12 +: 1] & (x4[24 + s1 +: 2] + (ctrl[3] && !ctrl[2] || ctrl[0] ? p0 : ((p0[19 -: 1] - x7[10 + s2]) + ((p1[4 + s0 -: 1] - (((p0[16 + s0] ^ (x5 & x0[18 +: 4])) & p1[12 -: 1]) - p0[5 + s3])) | ((((x6 | (x4[7 + s3] | (p3[9 + s2 +: 4] - p2[14 +: 4]))) - p2[10 + s1 -: 6]) ^ (x5[6 + s3 -: 6] ^ x2[15 -: 3])) ^ x4[6 + s2]))))));
  assign x9 = p3[17 +: 3];
  assign x10 = x7[13 -: 1];
  assign x11 = p3;
  assign x12 = (!ctrl[0] && !ctrl[0] && !ctrl[2] ? {2{p3}} : {2{x2[8]}});
  assign x13 = ((ctrl[1] && ctrl[2] || ctrl[0] ? (((x11[18 -: 2] ^ p2[16 +: 3]) + {p0, p1[17 +: 2]}) | (x7 + {(x7[7 + s1 -: 4] & (x4[6 + s1] & x8[18 +: 3])), x3[7 + s0]})) : (p1[4 + s1] | (ctrl[0] || !ctrl[3] && ctrl[2] ? p1 : p3[9]))) + ((p0[23 -: 3] + {p0[9 +: 2], p3[16 -: 3]}) + (ctrl[2] && !ctrl[3] && ctrl[0] ? p1[20] : p2[22])));
  assign x14 = p3[22];
  assign x15 = (p1[4 + s0] - ((!ctrl[1] && ctrl[3] || !ctrl[0] ? ((ctrl[1] || !ctrl[3] && !ctrl[1] ? x6[17 +: 3] : (p1[13 +: 1] | p2)) - (x11[18 + s3 +: 2] - x3[26 + s1 +: 1])) : (p2[13] & ((x11[14] & p3) - p3))) ^ (x9 - (!ctrl[0] || !ctrl[0] && !ctrl[0] ? p2 : (x1[11] | x1[18 -: 1])))));
  assign y0 = p0[10 +: 1];
  assign y1 = ((x4[12 -: 1] ^ {2{{p3, p3}}}) - (ctrl[1] && !ctrl[2] && ctrl[0] ? {2{p2[8]}} : ({2{x13[17 + s1 -: 2]}} - (!ctrl[0] && !ctrl[1] || !ctrl[1] ? {x9, x6[9 + s1 +: 2]} : ((x12 - x1[4 + s2]) + x8[18 + s0])))));
  assign y2 = x10;
  assign y3 = (p2[13 + s1 +: 8] & p2[15 + s1]);
endmodule
