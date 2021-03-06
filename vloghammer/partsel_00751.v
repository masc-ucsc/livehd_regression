module partsel_00751(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [27:1] x4;
  wire [31:5] x5;
  wire [1:28] x6;
  wire signed [5:26] x7;
  wire [31:3] x8;
  wire signed [25:5] x9;
  wire [4:24] x10;
  wire signed [2:25] x11;
  wire signed [30:3] x12;
  wire signed [25:6] x13;
  wire [29:3] x14;
  wire [7:26] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [30:3] p0 = 328150320;
  localparam signed [30:6] p1 = 921555979;
  localparam [26:0] p2 = 750379660;
  localparam signed [30:6] p3 = 186621372;
  assign x4 = (ctrl[1] && ctrl[3] || !ctrl[1] ? x3 : (({p0[22 + s0 +: 4], {2{p3[11 +: 3]}}} & x3[7 + s1]) ^ p3[18 + s2]));
  assign x5 = (({p0, x3[8]} - x3) | (p1[21 -: 4] ^ (!ctrl[2] || ctrl[3] && !ctrl[2] ? {(!ctrl[1] && !ctrl[1] && ctrl[1] ? p0[18 + s2 -: 6] : x4[12]), {2{((x3 ^ x2[18 -: 2]) ^ x0)}}} : {x1[18 + s2], (x1[23 + s2 -: 2] + x4[12])})));
  assign x6 = ({2{x3[18 -: 3]}} - {x4[0 + s3 -: 8], ((p3 - (ctrl[1] || ctrl[0] && ctrl[2] ? p0[17 +: 1] : p1[30 + s3 -: 4])) + ((!ctrl[3] && ctrl[1] && ctrl[1] ? p0[3 + s0 +: 5] : (((p0 & p0[13]) | p0[9 + s0]) & x4[11 +: 2])) & {2{x3[19 + s0]}}))});
  assign x7 = (ctrl[3] || ctrl[2] || ctrl[3] ? x5 : {(x6[20 -: 3] + {(!ctrl[1] || !ctrl[0] || ctrl[3] ? x2[9 + s3 +: 4] : (p0[16 + s0] + p2[5 + s1 +: 7])), {p2, x5}}), {2{x6}}});
  assign x8 = p1;
  assign x9 = p2[11 + s1 +: 1];
  assign x10 = p1[18 + s0 -: 2];
  assign x11 = {((x2[22 -: 4] + x6[13 +: 4]) - p0[17 + s2]), x3[13]};
  assign x12 = x0[13 + s3 -: 8];
  assign x13 = p2[17 + s3];
  assign x14 = ((p3[22 + s2 +: 3] + p3[15 +: 4]) - (ctrl[0] || !ctrl[0] || !ctrl[2] ? ((x2 | x6) - {2{x13[13 -: 4]}}) : (p2 - (!ctrl[3] && ctrl[1] || ctrl[2] ? (x12 & p3[10]) : p1[23 + s0 +: 8]))));
  assign x15 = (((((!ctrl[3] && !ctrl[2] || ctrl[3] ? p0[15 -: 3] : p3[18 + s3 -: 3]) + x8[5 + s0 -: 5]) ^ ({2{x14}} - (p0[2 + s3 +: 8] | p0[26 + s2 -: 5]))) & (x12[17 + s2 +: 5] | p1[19 +: 3])) ^ ((p2[20] | p2[12 +: 4]) + (p0[18 +: 4] & p0)));
  assign y0 = p0;
  assign y1 = x8[23 -: 2];
  assign y2 = x8[26 + s2 +: 2];
  assign y3 = x13[5 + s3 -: 5];
endmodule
