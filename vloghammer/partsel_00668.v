module partsel_00668(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [6:28] x4;
  wire [6:26] x5;
  wire [27:2] x6;
  wire [6:30] x7;
  wire signed [29:6] x8;
  wire [0:30] x9;
  wire [2:29] x10;
  wire [29:0] x11;
  wire signed [24:4] x12;
  wire signed [3:29] x13;
  wire signed [28:2] x14;
  wire [27:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:30] p0 = 930012349;
  localparam [28:0] p1 = 591725465;
  localparam [29:6] p2 = 24740276;
  localparam [7:27] p3 = 674463302;
  assign x4 = x3[21 -: 1];
  assign x5 = {2{(ctrl[3] && !ctrl[0] || ctrl[2] ? ((x4 + (x4[15 + s3] ^ p0[21 + s3 +: 5])) | x3[22 + s3 +: 5]) : ((((x4[29 + s0 -: 1] ^ x0[15 -: 2]) - (p0 + p0[14 + s2 +: 3])) - (x1[9] | x0[15 + s1])) ^ x2[2 + s3 -: 1]))}};
  assign x6 = {p0[25 + s0 -: 6], x4[14 + s2 +: 8]};
  assign x7 = (p1 | p0[27 + s2 +: 6]);
  assign x8 = {{2{p1[15 +: 2]}}, ({2{(p3[30 + s1 +: 2] & p3[26 + s1 -: 3])}} | p2[21 -: 4])};
  assign x9 = {2{x6[21 -: 4]}};
  assign x10 = (ctrl[1] || ctrl[2] && !ctrl[3] ? p2[9 +: 2] : {((!ctrl[1] && ctrl[1] || ctrl[3] ? x3[14 +: 3] : (p3 | p0[25 + s1 +: 4])) | p3[20 + s2 -: 5]), {({x3[8 + s3 -: 7], x9[16 +: 1]} ^ x2[17 + s1 -: 6]), {2{{(x4 | (x1 & x0[15 -: 3])), x0[23 -: 1]}}}}});
  assign x11 = p3[13];
  assign x12 = (x2[14 + s0 -: 3] | {2{{{((p0[15 -: 3] - p0[17 -: 1]) ^ x5[13 + s2 +: 3]), x9[2 + s3 +: 5]}, p2[4 + s1]}}});
  assign x13 = ({p2[12 + s3 -: 8], ({{2{p1}}, p3[15]} & {(x6[4 + s0] & p0[4 + s3]), ((x10[22] | x0) - (p0[11 + s1 +: 2] ^ x7[26 + s3 -: 8]))})} | p3[18 + s2 +: 6]);
  assign x14 = x2[11];
  assign x15 = x9;
  assign y0 = p0[7 + s0 +: 8];
  assign y1 = ((ctrl[3] || ctrl[0] || ctrl[2] ? p2[15] : p2) ^ p0);
  assign y2 = (p3 + (((!ctrl[2] || !ctrl[0] && !ctrl[3] ? (!ctrl[3] && !ctrl[3] && ctrl[3] ? p1[16 +: 3] : p1) : x0[18 +: 3]) + x7[20]) + x12));
  assign y3 = {2{x13[12 +: 1]}};
endmodule
