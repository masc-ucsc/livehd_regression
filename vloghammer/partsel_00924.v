module partsel_00924(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [28:4] x4;
  wire [25:2] x5;
  wire signed [26:3] x6;
  wire signed [24:3] x7;
  wire signed [24:4] x8;
  wire signed [7:31] x9;
  wire signed [31:6] x10;
  wire [31:3] x11;
  wire signed [0:27] x12;
  wire signed [31:4] x13;
  wire signed [24:2] x14;
  wire signed [1:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [3:30] p0 = 728243829;
  localparam signed [24:7] p1 = 195213625;
  localparam signed [31:1] p2 = 127605100;
  localparam signed [4:26] p3 = 153275576;
  assign x4 = x1;
  assign x5 = (p0 - (!ctrl[3] || !ctrl[3] || ctrl[1] ? {2{{2{(p3 | (p2 + p0[9 + s3 -: 7]))}}}} : x4[8 + s0 -: 5]));
  assign x6 = p2[10 + s1];
  assign x7 = ({2{{2{x2[22]}}}} + p3[9 + s3 +: 6]);
  assign x8 = ((({p0, p3[20 -: 3]} + {2{p0[16 -: 4]}}) ^ x7[16 + s0 +: 2]) & (x3 + ((((p2[22 -: 4] + x0) + (p2 + (((x6[17 -: 4] & p1[19 +: 2]) ^ p1) + (p3[13 -: 2] + p3[27 + s0 +: 7])))) | (x6[10] | p2)) | (ctrl[3] && ctrl[1] || !ctrl[3] ? (ctrl[2] && ctrl[0] || !ctrl[2] ? x2[22] : p1[23 -: 1]) : {2{x5[4 + s1]}}))));
  assign x9 = p2[4 + s3];
  assign x10 = (x1[14 + s2] | x4[19 -: 4]);
  assign x11 = x1[19];
  assign x12 = {({2{(!ctrl[2] && !ctrl[3] || ctrl[0] ? x1[2 + s1 +: 6] : (p0[20] - p2[20 + s2 -: 4]))}} & x0[16]), {2{p2[9 + s2]}}};
  assign x13 = x0[21 + s0 -: 6];
  assign x14 = {2{(!ctrl[0] || ctrl[3] || !ctrl[2] ? {2{p2}} : p3[19 +: 4])}};
  assign x15 = {(x13[13 -: 1] ^ p2), ({2{({2{(x3[20 -: 3] - p0[20 + s3 +: 1])}} ^ (!ctrl[1] && !ctrl[3] && ctrl[0] ? x8[16 -: 2] : (p0 - p2[17 + s3 +: 4])))}} + ({x6[12 + s1], (p2 - p1[21 -: 2])} & (!ctrl[0] || ctrl[2] && !ctrl[3] ? {p3[19 +: 2], p3[13 + s3]} : {2{x10}})))};
  assign y0 = (!ctrl[2] || !ctrl[1] || !ctrl[0] ? p0 : {(({p0[20], x12[18 +: 1]} ^ {x10, x2[19 + s2]}) ^ {2{p2[17]}}), ((x5 | p1[13 + s0 -: 4]) | {(p1 + x3[18 +: 4]), x3[16 -: 1]})});
  assign y1 = ({2{(ctrl[0] || ctrl[1] && !ctrl[2] ? ((!ctrl[2] && ctrl[1] && !ctrl[2] ? (p1[21] - (x7[7 + s2] & x13[14 + s2])) : p0) ^ {2{p1[17 +: 4]}}) : x7[21 + s0 -: 1])}} & p3);
  assign y2 = {2{x14[12 +: 1]}};
  assign y3 = p2[18 +: 3];
endmodule
