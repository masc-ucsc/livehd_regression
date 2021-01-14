module partsel_00004(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [28:2] x4;
  wire [27:6] x5;
  wire signed [27:6] x6;
  wire signed [6:29] x7;
  wire [0:24] x8;
  wire signed [1:29] x9;
  wire [5:30] x10;
  wire [7:27] x11;
  wire [27:6] x12;
  wire signed [6:27] x13;
  wire [27:0] x14;
  wire [4:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [6:25] p0 = 189221785;
  localparam [4:25] p1 = 475730579;
  localparam [2:31] p2 = 589109257;
  localparam signed [31:0] p3 = 320636351;
  assign x4 = (!ctrl[3] && !ctrl[1] || !ctrl[1] ? x2[18 + s0 -: 3] : ((p0 - ((x0[15 -: 4] + x2[20 -: 3]) | x0[19 + s2])) | p1[16 + s3 -: 4]));
  assign x5 = p0[14 + s0 +: 5];
  assign x6 = {{p3, ((x2 | (p1[15 + s2] - p2[15])) + ((x5[17 +: 2] | p0[11]) - p3[15]))}, p2[12 -: 1]};
  assign x7 = (x3[5 + s1] & p0);
  assign x8 = ((p3[18] | p3[14 + s3 +: 5]) | p2);
  assign x9 = p3[18 +: 2];
  assign x10 = x9[9 + s0 -: 5];
  assign x11 = (!ctrl[1] && !ctrl[2] && ctrl[0] ? p1[12] : (!ctrl[3] || !ctrl[3] || !ctrl[0] ? {p3[22], ((ctrl[1] || !ctrl[2] || ctrl[2] ? (p2 & x6[23 + s0 -: 2]) : (((p0 & ((x8[10 + s2] ^ p0[18 +: 1]) + x3[31 + s0 -: 7])) | p3) + p3[19])) + {2{x8[9 +: 3]}})} : p2[18]));
  assign x12 = {x9[14 +: 1], ({p1, x5[22]} ^ {2{((p1[23] - p2) | x2)}})};
  assign x13 = (x8 | (ctrl[3] || !ctrl[2] && !ctrl[3] ? x0[10 +: 4] : (!ctrl[2] || !ctrl[1] || !ctrl[3] ? p3[4 + s0] : ((!ctrl[1] && ctrl[1] && !ctrl[2] ? x8[23] : x11[8]) ^ x1[15 + s3 -: 3]))));
  assign x14 = p0[11 + s2];
  assign x15 = {2{(!ctrl[3] && !ctrl[0] || ctrl[0] ? (x0 + p0[19 +: 4]) : {(x10[29 + s3 -: 8] - x0[15]), {p2, p0[12 +: 2]}})}};
  assign y0 = ({(p3[27 + s0 -: 4] + {2{{2{(x2 | x2[8 + s2])}}}}), x15} ^ (p2[13 + s2] ^ (ctrl[3] || !ctrl[2] || !ctrl[3] ? p2[5 + s1 +: 7] : ((p2[19 +: 1] & p0) & ((x3[8 +: 3] ^ x11[8 +: 3]) - p2[8 + s3])))));
  assign y1 = (ctrl[0] || !ctrl[0] || !ctrl[2] ? (!ctrl[3] || !ctrl[0] && ctrl[2] ? x10[13 -: 2] : ({2{(x10[21] + (x6[10 +: 1] - x5[22]))}} - {(p2[19 -: 2] + x3[19 +: 4]), p3[31 + s1 +: 8]})) : x15[15 -: 3]);
  assign y2 = (x7[11 + s3 -: 1] ^ {x7, (p3[8 + s3 +: 2] - x15[10 +: 2])});
  assign y3 = x9;
endmodule
