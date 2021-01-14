module partsel_00619(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [29:4] x4;
  wire [26:6] x5;
  wire signed [6:27] x6;
  wire [5:26] x7;
  wire [7:25] x8;
  wire signed [24:3] x9;
  wire [0:25] x10;
  wire [6:27] x11;
  wire signed [24:7] x12;
  wire [0:24] x13;
  wire [3:24] x14;
  wire [29:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:6] p0 = 956732875;
  localparam [2:28] p1 = 120099285;
  localparam signed [5:28] p2 = 847482112;
  localparam signed [2:24] p3 = 853857239;
  assign x4 = x1[17];
  assign x5 = p0[15 + s3 -: 4];
  assign x6 = ((ctrl[0] || ctrl[0] && ctrl[1] ? (({2{p1[23 + s2 -: 7]}} & x1[15 +: 2]) | p1) : p2) + {(((p3[16 +: 2] | (p3[12 + s1 -: 3] ^ x1)) | (p1[13 -: 1] ^ x4[29 + s1 -: 6])) - (x5 ^ (p2 & x0[12 + s3 -: 6]))), {(p0 & {2{x0[21]}}), (p0[5 + s1] ^ (ctrl[0] || !ctrl[2] || ctrl[3] ? x2[16] : x3))}});
  assign x7 = ({{{(p1[4 + s0] & x5[5 + s0]), x2[15]}, ({2{x6[22]}} | {2{p0[9]}})}, x4} - ((p0 - (x1[12 + s0] ^ {2{p3[11 + s2 +: 7]}})) & ((!ctrl[3] || !ctrl[0] || ctrl[1] ? (!ctrl[0] || !ctrl[3] && !ctrl[0] ? p3 : x5[16 -: 1]) : (p3[12] ^ (p3[23 -: 2] + p1))) ^ (ctrl[2] && ctrl[3] || !ctrl[1] ? {p2, (x0[21 + s3 +: 7] | p0)} : {2{x3[12 + s3 +: 6]}}))));
  assign x8 = (((({x0[14 + s3 -: 2], p3[30 + s1 -: 2]} - p0[18 +: 2]) & p1[0 + s1 -: 7]) | {2{x5[10 +: 4]}}) | {{{((p0[11 + s1 -: 2] + p1[14 -: 1]) ^ p1[8 +: 4]), (x1[18 +: 1] - p0[11 +: 1])}, x6}, {p2[16], p2[18 -: 4]}});
  assign x9 = x6[6 + s1 +: 2];
  assign x10 = {{(!ctrl[3] || ctrl[1] && !ctrl[1] ? p0 : (((p1 & p2[24 + s2 +: 4]) + x5[22 -: 4]) + (ctrl[2] && !ctrl[2] && !ctrl[3] ? p3[17 + s3] : x2[21 -: 3]))), {({p0[9], p1} + x3), (p3[19] | x0[18 + s3])}}, (({(x5[4 + s0] ^ p3[15]), (x2 - x6[26 + s1 -: 3])} + p1[30 + s2 +: 4]) ^ {2{x8[4 + s3]}})};
  assign x11 = x5[15 + s1];
  assign x12 = p1[8 + s2 -: 4];
  assign x13 = x10[22 -: 4];
  assign x14 = (!ctrl[0] || !ctrl[1] || !ctrl[1] ? (p1[14 -: 2] + x2[19 + s3]) : {((!ctrl[3] && !ctrl[1] || !ctrl[1] ? p1[16 +: 1] : (p2 + (x4[13 + s1 -: 7] | x5[25 + s3 +: 8]))) & ((p2[16 +: 1] - ((x2 ^ x7[27 + s2 +: 8]) ^ p2[19 + s1 +: 5])) - x7[11 +: 4])), p1});
  assign x15 = {{2{p0}}, p1[10]};
  assign y0 = ((p1[25 + s1 +: 6] - (((x13[9 +: 4] & p3[16 -: 3]) ^ p0[14 -: 2]) - (p3[0 + s2 +: 6] & x3[9]))) ^ p2[18 +: 2]);
  assign y1 = (((p1 | (x7[13] - (p3[13 -: 3] + x10))) ^ x0[17 + s2 +: 3]) | x4[24 + s0 -: 7]);
  assign y2 = (x7[18] & {(p0[7 + s1] + (x13[10 + s2] ^ x3[8 + s0 -: 6])), (((p3 + x0[18 +: 4]) - ((p0[18 +: 3] ^ (x9[25 + s2 +: 6] | p1[23 + s3 -: 8])) ^ x13[26 + s1 -: 2])) | p0)});
  assign y3 = x8[5 + s3 +: 3];
endmodule
