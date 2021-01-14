module partsel_00059(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [2:24] x4;
  wire signed [25:1] x5;
  wire [2:24] x6;
  wire [1:25] x7;
  wire [25:0] x8;
  wire [1:28] x9;
  wire [24:2] x10;
  wire [2:26] x11;
  wire signed [7:28] x12;
  wire signed [27:0] x13;
  wire signed [29:0] x14;
  wire [1:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [24:5] p0 = 831558197;
  localparam [29:3] p1 = 956915362;
  localparam [29:0] p2 = 319112788;
  localparam signed [7:26] p3 = 893845037;
  assign x4 = x2[6 + s1 +: 3];
  assign x5 = ({(ctrl[1] && !ctrl[1] && ctrl[3] ? ((p1[12 -: 1] ^ x1) + (p3[12 -: 3] - x1[15 -: 4])) : x1), (p3[11 + s2 -: 8] ^ (!ctrl[1] && !ctrl[2] && ctrl[1] ? p1 : p3))} + (x1[16 + s0] | {2{({2{x3}} + x4)}}));
  assign x6 = (!ctrl[3] || ctrl[1] || ctrl[0] ? x0 : (({2{{x2[13 + s2 -: 5], x5}}} ^ x2[9 + s3]) & ({2{(p1[17 -: 2] + p3[13 + s3])}} | x0)));
  assign x7 = ((x6[25 + s3 -: 1] & (p1[3 + s0 -: 4] + ((x3 | (x5[19 -: 4] - (x1[6 + s3 +: 3] & p2[10]))) ^ {2{x3}}))) - {p2[20], x1[16 + s1]});
  assign x8 = p3[28 + s1 -: 4];
  assign x9 = x4[4 + s0];
  assign x10 = (ctrl[1] || ctrl[1] && !ctrl[1] ? p2[5 + s0] : p1[2 + s1 +: 6]);
  assign x11 = x5[16 -: 1];
  assign x12 = ((ctrl[3] && ctrl[3] || !ctrl[1] ? (p3[21 -: 1] + ((ctrl[1] || ctrl[2] && ctrl[3] ? p2[18 +: 3] : p2[10]) | (ctrl[3] || !ctrl[1] && ctrl[0] ? x5 : x7[10]))) : x1[4 + s1]) & ({2{x1[5 + s3 -: 7]}} | x4[20]));
  assign x13 = (x6[20] ^ x7[10 +: 3]);
  assign x14 = x12[27 + s1 +: 5];
  assign x15 = (p0[30 + s3 -: 1] | (!ctrl[0] || !ctrl[1] || !ctrl[2] ? {2{{p2[18 + s3], (!ctrl[2] || ctrl[3] && !ctrl[2] ? x12[18 + s2] : (p0 - x0[2 + s3 +: 7]))}}} : p2));
  assign y0 = p1;
  assign y1 = x5;
  assign y2 = x2[16 + s0];
  assign y3 = {2{x14[10 +: 1]}};
endmodule
