module partsel_00149(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [5:25] x4;
  wire signed [29:5] x5;
  wire [26:3] x6;
  wire signed [2:24] x7;
  wire signed [29:4] x8;
  wire signed [2:30] x9;
  wire [3:27] x10;
  wire [3:31] x11;
  wire [2:29] x12;
  wire [5:31] x13;
  wire [25:7] x14;
  wire [0:31] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:26] p0 = 401399193;
  localparam [25:6] p1 = 900259775;
  localparam [31:1] p2 = 754766257;
  localparam signed [0:28] p3 = 140644680;
  assign x4 = x1[13 +: 3];
  assign x5 = ({2{(p3[18 +: 4] ^ x3[14 +: 2])}} + x2[8 +: 2]);
  assign x6 = x3[22 -: 1];
  assign x7 = (((x3 + ((p0[16 + s3] | x0[7 + s2]) ^ ((p3[18] ^ x6[24 + s2 +: 1]) & x6[13]))) & ({2{(p1[3 + s2 +: 4] - (x2[20 + s3 -: 1] - (p2 + x3)))}} ^ x6[30 + s3 -: 4])) | {x3[14 +: 3], (p0[5 + s0 -: 1] | {2{(x3[27 + s3 +: 5] & p2)}})});
  assign x8 = {2{p1[13 +: 3]}};
  assign x9 = p1[23];
  assign x10 = ({2{{p0, x3}}} | {(({p0[8], p2[12 -: 2]} | (x3[21] | x8[10 + s3 +: 2])) & x4[13 + s3]), ((((p3[10 +: 4] + p0[16 + s0 -: 8]) ^ (x0[17 + s1 -: 7] - (x9[9 + s0 -: 3] + p3[14 +: 1]))) & p3) ^ {2{(ctrl[0] || ctrl[0] && !ctrl[3] ? (x8 + p2[17 + s1]) : x7)}})});
  assign x11 = p2;
  assign x12 = x0[17 +: 3];
  assign x13 = (x4[18 + s3 -: 6] - (ctrl[0] || ctrl[0] || ctrl[1] ? x12[16 +: 1] : {p2[9 + s2 +: 2], ((x8[23 + s0 -: 1] | x12[2 + s1 -: 3]) - (ctrl[2] && !ctrl[3] && ctrl[3] ? p0[17] : (x7[17 +: 3] - p3[14 +: 3])))}));
  assign x14 = (p2[17] & ((!ctrl[0] || !ctrl[0] || !ctrl[3] ? (p0 | (p0[12] ^ x3[12])) : p3[14 +: 4]) ^ x1[9]));
  assign x15 = ({2{(x12[17 + s1 -: 8] | ({x12, p2} ^ (x14 | p1)))}} | x1[9 +: 4]);
  assign y0 = p2[22 + s3 -: 6];
  assign y1 = p2;
  assign y2 = {((p3[10] - ((p0[12 + s2 -: 1] + x14[13 +: 3]) ^ x1)) - {2{(!ctrl[0] || ctrl[2] || ctrl[1] ? {2{x2[16 -: 1]}} : (x15[11] + x7[17 +: 3]))}}), ((ctrl[2] || ctrl[1] || !ctrl[1] ? p0[25 + s2 -: 5] : p1[20 -: 4]) ^ p0[13 + s2 -: 4])};
  assign y3 = p0;
endmodule
