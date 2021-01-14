module partsel_00955(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [4:26] x4;
  wire [7:25] x5;
  wire signed [30:4] x6;
  wire [7:25] x7;
  wire [2:31] x8;
  wire signed [27:2] x9;
  wire [4:24] x10;
  wire signed [5:26] x11;
  wire [4:26] x12;
  wire [30:3] x13;
  wire [29:1] x14;
  wire signed [4:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:1] p0 = 990620591;
  localparam signed [1:28] p1 = 389550263;
  localparam signed [5:27] p2 = 618518293;
  localparam signed [29:1] p3 = 495357477;
  assign x4 = (p3[8 + s0 -: 8] + x0[13 + s2 +: 2]);
  assign x5 = (((ctrl[0] || ctrl[3] || ctrl[0] ? x0[3 + s2 +: 7] : {p3, p1[12]}) + x4[9]) & p3[14 +: 2]);
  assign x6 = x2;
  assign x7 = p0[12];
  assign x8 = (x7[18 + s3] ^ (((ctrl[1] && !ctrl[2] && !ctrl[0] ? (p2[13] & ((x7[3 + s0 +: 4] & p0) - ((x0[14 + s1 -: 6] ^ (p3[0 + s0 -: 1] | x0[11])) - p3[9 + s3 +: 6]))) : {x2[5 + s1 -: 7], p2}) ^ (ctrl[1] && !ctrl[2] || !ctrl[3] ? (((p3[13] | (p3[19 + s0 -: 2] ^ p3[31 + s2 +: 7])) ^ (p2[12 + s0] & p0[12 + s3])) + p3) : (x5[7 + s3 -: 5] ^ ((p1 & p1) ^ p3[21 + s2 -: 1])))) ^ x3[20 + s1 +: 5]));
  assign x9 = {x1, (x8[21 + s3 +: 1] | (ctrl[1] || ctrl[3] || !ctrl[2] ? x1 : x1[16 -: 1]))};
  assign x10 = ({p3[12 + s2], (!ctrl[1] || !ctrl[1] && ctrl[1] ? (p0 | (x1[21] + (x0[8 + s3] + x0))) : (ctrl[0] || !ctrl[2] && !ctrl[0] ? (!ctrl[2] && !ctrl[2] || ctrl[0] ? x1[17 + s2 +: 7] : x8[3 + s1 -: 1]) : {p2[4 + s2], p2[3 + s2 -: 3]}))} | x0[12 +: 3]);
  assign x11 = x10[17];
  assign x12 = ({{x6[6 + s1 -: 6], ((ctrl[0] || ctrl[2] || !ctrl[0] ? x1[20] : (p2[10 + s1 -: 4] + x6[16 + s2 -: 8])) - ((p1[8 + s2 +: 5] ^ p3[20 + s3 +: 6]) & p0))}, p3[22 + s0 +: 5]} ^ x9[9]);
  assign x13 = p2[13 + s3 +: 7];
  assign x14 = p0[20 + s3 -: 3];
  assign x15 = ({2{({{2{x4[5 + s0]}}, {p2[17 +: 2], (p1 + p3[17 + s0 +: 8])}} | {2{p2}})}} - x0[16 +: 4]);
  assign y0 = (ctrl[3] && ctrl[0] && ctrl[0] ? ({2{{{x11[8 + s1], x15[7 + s0 +: 5]}, {2{(x2[12 + s0] & x6[2 + s3 -: 3])}}}}} & {({2{p0}} | (p3[17 + s0 +: 8] + p3[9])), {2{{2{p2[4 + s3]}}}}}) : (((((p0[19 -: 3] ^ x7[19 + s0]) - (p2[17 +: 3] | (p0[4 + s3 -: 8] & p2[5 + s1]))) & {x9[8 + s3], x8[11 + s1 +: 1]}) | p1) - ((!ctrl[3] && !ctrl[1] && ctrl[0] ? {p1[24 + s3 -: 7], x12} : (x0 | p3)) ^ p3[10 + s2])));
  assign y1 = p0[1 + s1 -: 5];
  assign y2 = x13[6 + s1 +: 1];
  assign y3 = x4[9 + s2];
endmodule
