module partsel_00272(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [2:27] x4;
  wire signed [5:29] x5;
  wire signed [31:1] x6;
  wire [4:27] x7;
  wire [1:31] x8;
  wire signed [30:0] x9;
  wire [6:26] x10;
  wire signed [2:31] x11;
  wire [2:27] x12;
  wire [1:25] x13;
  wire [26:6] x14;
  wire [30:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:6] p0 = 503555383;
  localparam signed [31:6] p1 = 565098584;
  localparam [1:26] p2 = 460545418;
  localparam signed [4:26] p3 = 271982536;
  assign x4 = (ctrl[1] && ctrl[2] || ctrl[0] ? x0[21] : {(x1 & (!ctrl[1] && ctrl[0] || ctrl[0] ? x1 : p1[18 +: 4])), {2{(x1[7 + s0 -: 7] - {2{p3}})}}});
  assign x5 = x4;
  assign x6 = x0[0 + s0 -: 1];
  assign x7 = p3[20];
  assign x8 = ({2{(((p1[12 +: 3] - p3[19 +: 4]) & p0[12 + s1 +: 6]) - x7[10 + s1 +: 8])}} + ({2{({2{x3[15 -: 4]}} ^ p0[11 +: 3])}} + ({2{p0[9 +: 1]}} ^ {((x1[18 +: 1] & x7[22 + s3 +: 7]) - p3), x5[16]})));
  assign x9 = p1;
  assign x10 = {x2[15 + s0], ((!ctrl[3] && ctrl[3] || ctrl[3] ? ((ctrl[3] || ctrl[3] || !ctrl[0] ? x7[12 + s2] : p0[13 + s1 +: 8]) ^ (!ctrl[0] && ctrl[3] && ctrl[3] ? x1[15 -: 1] : x5)) : p1) & (ctrl[0] && ctrl[2] || !ctrl[0] ? p3 : ((p0[22 + s3 +: 1] & x3[17 -: 4]) ^ (p0[7 + s2] | p0[18 + s2]))))};
  assign x11 = p3;
  assign x12 = x6[15 -: 3];
  assign x13 = x6[29 + s1 -: 7];
  assign x14 = p0[1 + s0 +: 2];
  assign x15 = (x0[12 +: 1] - (!ctrl[0] || !ctrl[2] || ctrl[0] ? x14[18 + s1 -: 5] : (!ctrl[0] && ctrl[0] && !ctrl[0] ? {x14[15 +: 1], p1[14 +: 1]} : (x8[22] + {p1[25 + s0 +: 6], ((x9 | p0[5 + s0]) - x11[11 + s0 -: 3])}))));
  assign y0 = {x11[11], {2{p0}}};
  assign y1 = {p0[8 + s1 +: 7], p0[3 + s0 -: 5]};
  assign y2 = x9[8 + s2];
  assign y3 = x5[25 + s0 +: 4];
endmodule
