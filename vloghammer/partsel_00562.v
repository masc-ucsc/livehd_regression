module partsel_00562(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [3:30] x4;
  wire signed [27:7] x5;
  wire signed [24:1] x6;
  wire signed [4:29] x7;
  wire [29:0] x8;
  wire [26:2] x9;
  wire [29:2] x10;
  wire signed [7:29] x11;
  wire signed [28:4] x12;
  wire signed [5:27] x13;
  wire [6:31] x14;
  wire [25:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:29] p0 = 56074899;
  localparam [26:6] p1 = 961209503;
  localparam [25:3] p2 = 953890283;
  localparam [7:30] p3 = 886815455;
  assign x4 = {2{(!ctrl[0] || ctrl[1] && !ctrl[0] ? x0 : x2[29 + s1 -: 3])}};
  assign x5 = (({(ctrl[2] || !ctrl[0] && !ctrl[2] ? {2{(x0[30 + s1 -: 1] | p3[13 + s0])}} : p1), ((ctrl[0] || !ctrl[0] || ctrl[2] ? x4[0 + s2 -: 1] : p1[23 + s1 +: 1]) + {2{p0[19 -: 4]}})} + {2{p1[18 + s1 +: 6]}}) | {2{x0[13 + s3 -: 8]}});
  assign x6 = {2{(x0 ^ ({2{{((p2[11] ^ (x3[14 +: 4] - ((((x0 ^ x2[8 +: 3]) & (p1[18] ^ (x0[20] & p2))) - p0[27 + s0 +: 5]) - p1[19 +: 3]))) + x5), x1[17 +: 4]}}} ^ (ctrl[0] || !ctrl[3] && !ctrl[2] ? p2[6 + s0] : p1)))}};
  assign x7 = (x2[21] & x2[22 -: 4]);
  assign x8 = {(p0[18] ^ p0[11 + s3]), ((((!ctrl[2] && ctrl[0] && !ctrl[0] ? x6[15 -: 4] : x5[10 +: 2]) | x3[6 + s1]) ^ x1) & {2{x3[16]}})};
  assign x9 = ({2{{2{{2{p0[11 + s2 +: 4]}}}}}} + x5[12 + s2]);
  assign x10 = ({2{(p0[12] & (!ctrl[0] || ctrl[1] || !ctrl[2] ? p1 : {2{(x7 - p3[13 +: 2])}}))}} - ((p1[12 + s3 -: 3] & ((((p3[4 + s0 -: 3] & p1[19 +: 3]) & x9) & x8[9]) | x0)) | (p2[0 + s2 -: 2] - (ctrl[0] || !ctrl[2] && ctrl[2] ? x8[18 -: 4] : (x6[2 + s0 -: 7] + x0[21])))));
  assign x11 = x8[21];
  assign x12 = ({2{x5[14]}} & p0);
  assign x13 = {2{(ctrl[2] && !ctrl[3] || ctrl[1] ? {2{p0}} : {2{(x6[21] - (p1[13 + s3] | (x3[18 +: 4] | p2[27 + s1 -: 5])))}})}};
  assign x14 = (ctrl[0] || ctrl[3] && !ctrl[3] ? ((!ctrl[2] && !ctrl[1] && ctrl[2] ? ((p2[10 + s2] ^ (p1[11] - x2[8 +: 3])) - {x7, x3}) : ({p2[8 + s3 +: 6], x12} | x9)) - (x10[8] - (ctrl[0] && ctrl[1] && ctrl[2] ? x0 : x0))) : x5);
  assign x15 = x6[6 + s3 +: 2];
  assign y0 = x11[14 +: 4];
  assign y1 = p3[9 +: 2];
  assign y2 = p0[14];
  assign y3 = x5[17 -: 1];
endmodule
