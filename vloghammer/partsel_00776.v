module partsel_00776(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [3:27] x4;
  wire [24:4] x5;
  wire signed [5:30] x6;
  wire signed [6:24] x7;
  wire signed [5:30] x8;
  wire signed [24:3] x9;
  wire signed [6:24] x10;
  wire signed [24:2] x11;
  wire signed [26:4] x12;
  wire [6:24] x13;
  wire [4:24] x14;
  wire signed [4:27] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:3] p0 = 316463265;
  localparam [2:25] p1 = 827583264;
  localparam [3:24] p2 = 467455503;
  localparam signed [31:4] p3 = 255715784;
  assign x4 = (p2[4 + s3] - p3);
  assign x5 = (p2[12 + s1] - (x4[6 + s1 -: 1] + p1[19 + s1]));
  assign x6 = x0;
  assign x7 = p0;
  assign x8 = (((!ctrl[0] && !ctrl[1] || ctrl[0] ? {2{x5[3 + s0 +: 8]}} : p1) & x3[15 + s0 -: 5]) | p1[9 + s0]);
  assign x9 = x7;
  assign x10 = x8[17 + s0];
  assign x11 = (ctrl[3] || ctrl[0] && !ctrl[3] ? (x5[15 +: 1] + ((!ctrl[1] || ctrl[0] || !ctrl[2] ? p0[6 + s2] : p3[13 +: 3]) ^ {2{{p1, x6[13]}}})) : p0[13 +: 4]);
  assign x12 = x7[6 + s3 +: 1];
  assign x13 = x7[18 + s0];
  assign x14 = x13[4 + s1];
  assign x15 = x4[10 + s0 +: 3];
  assign y0 = (p3 + x2);
  assign y1 = p2[18 -: 1];
  assign y2 = (ctrl[0] || ctrl[1] || !ctrl[1] ? (!ctrl[0] || !ctrl[3] && ctrl[2] ? {2{(ctrl[3] && !ctrl[2] || ctrl[2] ? (p3[10 + s3 -: 7] - p2[5 + s3 +: 2]) : p1[3 + s1 +: 5])}} : (!ctrl[2] && ctrl[1] || !ctrl[3] ? (x11[6 + s2] + (x12[20 -: 1] | x10[5 + s0 +: 7])) : ({p2, x13[3 + s1 +: 6]} - (p0 | p2)))) : (((((x1[16] | x7[15 + s0]) & p3) | x11[20]) & (p1 | p2[19 + s1 +: 5])) | p0[12 +: 4]));
  assign y3 = {2{(!ctrl[2] || !ctrl[1] && ctrl[2] ? (!ctrl[3] && !ctrl[3] || !ctrl[3] ? ({x13[27 + s2 -: 8], p2[23]} | p1[20]) : p0) : ({2{p3}} + p0))}};
endmodule
