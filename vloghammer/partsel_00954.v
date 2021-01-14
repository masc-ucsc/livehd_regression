module partsel_00954(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [27:4] x4;
  wire signed [4:25] x5;
  wire signed [24:6] x6;
  wire signed [3:28] x7;
  wire signed [7:25] x8;
  wire signed [25:7] x9;
  wire [6:28] x10;
  wire [5:28] x11;
  wire [27:5] x12;
  wire [4:25] x13;
  wire [1:29] x14;
  wire signed [26:2] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:7] p0 = 103461204;
  localparam [0:25] p1 = 546017349;
  localparam [7:25] p2 = 75971873;
  localparam signed [30:3] p3 = 85525177;
  assign x4 = x2;
  assign x5 = ((!ctrl[2] && ctrl[2] && ctrl[3] ? x1 : {2{x4[23 + s3 -: 3]}}) - {x1[16 + s1 -: 7], x2[22]});
  assign x6 = x0[17 -: 2];
  assign x7 = x4[28 + s0 -: 2];
  assign x8 = ((ctrl[2] || !ctrl[0] || ctrl[2] ? (ctrl[1] && ctrl[0] || ctrl[2] ? (ctrl[0] && !ctrl[2] && ctrl[1] ? (x3[12] | x0[17 +: 2]) : (ctrl[2] && ctrl[2] || !ctrl[3] ? x2 : p1[22])) : (x3[6 + s0 +: 1] & {2{p3[7 + s2 -: 2]}})) : x1) & p3[13 +: 4]);
  assign x9 = (ctrl[3] && ctrl[1] || ctrl[1] ? p3[23 -: 4] : x3);
  assign x10 = (!ctrl[3] && ctrl[1] || !ctrl[0] ? {((x4 & x5) - {2{x9[6 + s1 -: 4]}}), x9[21]} : ({2{{p0[4 + s3 -: 5], (ctrl[0] || ctrl[2] || !ctrl[0] ? (p1[17 -: 2] ^ ((((x0 - p1) | x3[2 + s0 -: 7]) - p2[14 + s2 -: 8]) - x3[16 +: 1])) : p0[9 + s2])}}} | x3[19 + s3 -: 3]));
  assign x11 = {x2[27 + s3 +: 7], x2};
  assign x12 = (!ctrl[0] || !ctrl[0] || !ctrl[0] ? p1 : x4[9 + s3 +: 1]);
  assign x13 = (!ctrl[1] || ctrl[0] || ctrl[1] ? (x11[0 + s3 -: 7] - (!ctrl[3] || !ctrl[0] || !ctrl[3] ? {(p0[0 + s0 +: 5] - x6[19 -: 4]), x0} : p2)) : (ctrl[1] || ctrl[3] || ctrl[3] ? p0[10 + s0 +: 5] : (p2[21 -: 3] | (!ctrl[3] && !ctrl[2] || !ctrl[1] ? {2{x0[20 + s0 -: 3]}} : x10[8 + s1 -: 5]))));
  assign x14 = ((p1[20 -: 3] + x12[22 -: 4]) + (x0[9 +: 3] + ((p1[8 + s1 +: 6] ^ (!ctrl[0] && ctrl[3] && ctrl[1] ? p2 : x5[20])) | x2[17])));
  assign x15 = p0[12 -: 4];
  assign y0 = (p2[11 + s2] + (((ctrl[2] && ctrl[1] || ctrl[0] ? {2{x15[9 +: 3]}} : x6[24 + s1 +: 2]) | p0[17 + s1 +: 5]) & p0));
  assign y1 = (!ctrl[1] && !ctrl[1] && ctrl[3] ? x9[13] : ({{2{(x2[18 +: 3] | (x4[15 +: 3] - p3[5 + s2]))}}, p2[20 + s1 +: 3]} - x0[8 + s1 -: 1]));
  assign y2 = ({2{x13[10 + s0]}} & x11);
  assign y3 = {{({2{p0[9 + s2]}} | {2{{((p3[8] - x14[13 -: 1]) - p1), p3[9]}}}), ({2{x9[14 +: 4]}} ^ x2[15 +: 4])}, p1[15]};
endmodule
