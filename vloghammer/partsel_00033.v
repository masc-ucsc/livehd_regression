module partsel_00033(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [4:31] x4;
  wire signed [7:28] x5;
  wire [4:25] x6;
  wire signed [5:29] x7;
  wire [5:24] x8;
  wire signed [25:2] x9;
  wire [6:27] x10;
  wire [6:27] x11;
  wire signed [31:0] x12;
  wire [31:6] x13;
  wire signed [2:24] x14;
  wire [28:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:7] p0 = 358973810;
  localparam signed [0:25] p1 = 997555904;
  localparam signed [30:0] p2 = 43091240;
  localparam [24:5] p3 = 343883161;
  assign x4 = {2{x1}};
  assign x5 = p3[15 -: 2];
  assign x6 = p1[20 + s1 +: 4];
  assign x7 = ((ctrl[3] || ctrl[3] && !ctrl[0] ? (!ctrl[1] || ctrl[0] || ctrl[2] ? ((p1 - p0[20 + s1 -: 3]) + x2[14]) : {2{(x3[12 + s2] - p0)}}) : {2{{2{(p2[19 +: 4] + x1[5 + s1])}}}}) ^ (({{x2[11], x3[23 + s1 +: 8]}, (ctrl[1] || ctrl[1] && !ctrl[3] ? x3[26 + s3 -: 2] : x0[16 + s0])} + {(x6[17 + s1] + (((x6[16 + s0] - x0[21 -: 2]) - x0) | (((p2 | (p1[18 + s0] ^ x5)) ^ p2[8 +: 1]) | p1[12 + s1 +: 5]))), x3[13 +: 1]}) | {p0, p2[12 +: 2]}));
  assign x8 = p2;
  assign x9 = ((x4[20 -: 3] + {{p0[0 + s1 +: 1], x5[11]}, {p3, p3[13 + s2 +: 8]}}) | (x4[8 + s3 -: 3] + (!ctrl[2] || ctrl[3] && ctrl[2] ? ({p2[11], x8[21]} - (x2[18 +: 1] - ((x6[15 + s3 +: 3] & x4[8 +: 4]) - x6[6 + s3 +: 8]))) : {2{(x8[14 + s0 +: 4] + p2)}})));
  assign x10 = (p3[29 + s0 -: 8] + p1[3 + s0 -: 2]);
  assign x11 = x2[15 -: 2];
  assign x12 = x11[14 + s0];
  assign x13 = (((!ctrl[3] && ctrl[2] || !ctrl[0] ? x2 : ((p1[16 -: 3] ^ (x8[17 + s2 +: 5] & x0[11 + s3 -: 3])) - {p1[12], p2[14]})) | p2[27 + s3 -: 3]) | p2[18 + s3 -: 1]);
  assign x14 = (p0[8 +: 2] & {2{x4[13 +: 3]}});
  assign x15 = {{((x1[4 + s0 +: 2] + x4[8 +: 3]) - {2{{2{x1}}}}), (({((x14 + p2[16 + s2]) - (x6 + x5[14])), p3[19 -: 1]} + p0[20]) ^ ({(x7[13 -: 1] ^ (x0[30 + s3 -: 1] - p2[22])), (p3 + p3)} & {2{p2[17 + s3 +: 5]}}))}, ((!ctrl[2] && ctrl[0] || !ctrl[0] ? p3[18 +: 3] : ({2{p2}} | (ctrl[2] && !ctrl[2] && !ctrl[0] ? p3 : x13[17]))) & p0[19 +: 3])};
  assign y0 = x6;
  assign y1 = x2[22];
  assign y2 = {x15, p0[12]};
  assign y3 = ((!ctrl[3] && ctrl[3] && !ctrl[1] ? p0 : ((p1[3 + s0 +: 4] - p3[9 +: 4]) - (!ctrl[1] && !ctrl[3] || ctrl[3] ? p0[21 -: 4] : {p2, x13[23]}))) | ({2{{2{p1}}}} & p1[0 + s0 +: 6]));
endmodule
