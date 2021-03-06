module partsel_00151(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [5:26] x4;
  wire [31:4] x5;
  wire signed [1:27] x6;
  wire [30:2] x7;
  wire [2:31] x8;
  wire signed [6:28] x9;
  wire signed [27:0] x10;
  wire signed [24:6] x11;
  wire [2:26] x12;
  wire [29:5] x13;
  wire [5:28] x14;
  wire [29:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:27] p0 = 32749224;
  localparam signed [4:29] p1 = 529066594;
  localparam signed [25:4] p2 = 527969001;
  localparam [30:2] p3 = 119964659;
  assign x4 = ((({p2[5 + s2 -: 8], {2{(x0 - p0[19 + s2])}}} ^ (ctrl[1] || ctrl[0] && ctrl[1] ? {2{x3[22 -: 3]}} : {2{(p2[11 +: 3] ^ p2[27 + s0 -: 4])}})) | (x3[8 +: 2] | x2[21 -: 1])) - {2{(x0[23 -: 1] | p2[11 +: 3])}});
  assign x5 = x1;
  assign x6 = ({2{x0}} + ((ctrl[0] && !ctrl[0] || !ctrl[2] ? x4[12 -: 1] : p2[14 + s3]) | p1));
  assign x7 = x0[15 +: 4];
  assign x8 = (!ctrl[3] && ctrl[0] || ctrl[2] ? (p0 ^ (!ctrl[3] || ctrl[3] && !ctrl[0] ? ((p0[21 + s0 +: 2] - p1) & x3) : {2{x0[12 +: 2]}})) : ({2{p3[5 + s2 +: 1]}} - ((p1 + {2{p3[13 +: 3]}}) | {2{(x1 & (p0[5 + s1 +: 8] - x0[9 + s1]))}})));
  assign x9 = p0[22];
  assign x10 = p0[13];
  assign x11 = (x2 | (ctrl[3] && !ctrl[0] && ctrl[0] ? (p2 + ((p0 - p0) | p1[14 -: 1])) : ({2{(p3[17] ^ p1[8])}} ^ {2{x10[12]}})));
  assign x12 = x9[15 -: 1];
  assign x13 = ((ctrl[1] && !ctrl[0] && !ctrl[0] ? p3[16 + s1 +: 2] : (ctrl[3] || !ctrl[2] || !ctrl[3] ? p0 : ({(p3[2 + s2 +: 7] & p0), x1} & (!ctrl[2] && !ctrl[3] && ctrl[2] ? x8[19 + s2] : x3[12 -: 1])))) | (({2{x3[18 -: 3]}} & (x6[17 +: 4] | {(p1[14 -: 3] + x6[18 +: 1]), (p1[13 -: 2] ^ p1)})) ^ (x0[11] ^ ((x3[10] | x3) + {p2, p0[19 + s2]}))));
  assign x14 = (((p1 & ({2{p0[13]}} ^ (ctrl[0] || !ctrl[3] && ctrl[0] ? x5[7 + s2] : x5[16]))) & (p1[19 +: 4] + x7[5 + s2])) + (x4[19 + s2] & p3[15]));
  assign x15 = p2[8];
  assign y0 = (x7 + {(ctrl[3] && ctrl[1] || ctrl[1] ? (ctrl[0] || !ctrl[2] || !ctrl[3] ? ((x7[19 +: 3] - x8[17 -: 1]) - p1[8 + s2 +: 5]) : (ctrl[2] && ctrl[3] || !ctrl[3] ? x11[17 + s1] : x5[12])) : ({2{p0[29 + s2 -: 1]}} + x12[23 -: 2])), p1[15 + s2]});
  assign y1 = (({2{{x4, p2}}} - {2{p2}}) + x11[17 +: 3]);
  assign y2 = {2{(ctrl[3] || ctrl[2] || !ctrl[2] ? ({(x4[8 +: 3] & ((x13[26 + s2 +: 7] ^ p0[7 + s1 -: 8]) - (p1 + x7))), (x5 + (p1[16 + s1] | p2[19 + s0 +: 5]))} - ((p3[18 + s1] | x15[1 + s3 -: 1]) - (p3[15] | p0[8 + s3 +: 7]))) : (!ctrl[2] || !ctrl[0] || ctrl[3] ? (!ctrl[0] && !ctrl[1] || !ctrl[1] ? x12[22 + s2 +: 6] : (p3[12 + s0] - (p1[1 + s3 -: 3] + (x8[9 + s1 -: 4] - p1)))) : p2[12 + s1 -: 2]))}};
  assign y3 = x9[28 + s0 +: 2];
endmodule
