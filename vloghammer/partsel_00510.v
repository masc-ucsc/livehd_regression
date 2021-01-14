module partsel_00510(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [0:26] x4;
  wire signed [1:24] x5;
  wire [7:29] x6;
  wire [26:4] x7;
  wire [26:7] x8;
  wire [5:26] x9;
  wire signed [30:7] x10;
  wire [2:27] x11;
  wire signed [30:7] x12;
  wire [2:25] x13;
  wire signed [30:2] x14;
  wire [28:0] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:26] p0 = 663296375;
  localparam [29:1] p1 = 708077466;
  localparam [4:31] p2 = 764617056;
  localparam signed [5:27] p3 = 208847510;
  assign x4 = (p1[15] | x3);
  assign x5 = ({2{(!ctrl[2] || !ctrl[3] || ctrl[3] ? x2[6 + s2] : {(x0 - p1), p1[15 + s3 -: 6]})}} ^ p0[8]);
  assign x6 = {{2{p0}}, x1[25 + s3 -: 4]};
  assign x7 = x3[10 + s2];
  assign x8 = ((ctrl[3] && ctrl[1] || !ctrl[1] ? (ctrl[2] || ctrl[2] && ctrl[0] ? {2{{(x3[2 + s0 +: 3] - x6[20 + s3 -: 2]), p0[25 + s1 -: 8]}}} : {(x0[19 +: 2] & p1[5 + s2 +: 3]), x4}) : (((p3[31 + s2 -: 7] ^ x0[11 +: 3]) + (p2[9 +: 4] - x6[24 + s0 -: 6])) - x4[18 -: 1])) | x7[14 + s3]);
  assign x9 = x2;
  assign x10 = (ctrl[0] || !ctrl[0] && ctrl[3] ? {((((x1[4 + s2] - p3[22 -: 3]) & ((x2 & (p3[21 -: 4] & (p1[23 + s3 -: 6] | p3))) - p1[11 +: 4])) & (x1 - p3)) ^ ({2{p1[22 -: 4]}} | p3[22])), x8[10 + s3 -: 4]} : ((x6[18] & {{x2, x4[20 -: 1]}, x0[16]}) & (!ctrl[2] || !ctrl[2] || ctrl[0] ? {(p1[7 + s2] ^ x5[1 + s1 +: 1]), {2{p2[6 + s3 -: 3]}}} : x0[21 -: 2])));
  assign x11 = (((ctrl[2] && ctrl[0] || ctrl[1] ? {2{x3[21]}} : p0[20]) - {{p3, {x7[11 + s2], (p2[16 + s1 +: 2] ^ x6)}}, x6}) & (x10 & x9[16 +: 2]));
  assign x12 = ({(((ctrl[3] || ctrl[1] && ctrl[0] ? x8[21] : p0) + p2[17 +: 2]) | (!ctrl[0] || !ctrl[0] || !ctrl[0] ? {x9[19], x4[14 -: 3]} : ((x5[4 + s1] + p1[7 + s2]) ^ p0))), {x7, x1[12 + s3 +: 6]}} ^ x10[19 + s1 +: 7]);
  assign x13 = (x12 + {({2{{2{p1[16 -: 3]}}}} & {{2{x0}}, p1[12]}), p2[27 + s2 +: 8]});
  assign x14 = x3[11 +: 1];
  assign x15 = {2{(!ctrl[3] || ctrl[2] || ctrl[0] ? (x3[14 -: 4] + {(p3[10 + s2 +: 2] & (p1 - x1[10 +: 3])), (p3[16 -: 4] & x6)}) : p3[7 + s2])}};
  assign y0 = (x14[13 +: 1] | {2{(x14 ^ p1)}});
  assign y1 = ((({2{((((p0 + (x9 + p2[23 + s0 +: 1])) | x8[16 + s0]) | p1[25 + s0 -: 6]) ^ x2)}} + {(p1[14] - p1[16]), p2[11 + s0 -: 2]}) & p2[21]) ^ x3[9]);
  assign y2 = p2;
  assign y3 = x13[17 +: 3];
endmodule
