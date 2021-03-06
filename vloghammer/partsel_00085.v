module partsel_00085(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [25:1] x4;
  wire [7:27] x5;
  wire signed [6:30] x6;
  wire signed [24:3] x7;
  wire [27:3] x8;
  wire signed [4:24] x9;
  wire [1:28] x10;
  wire [30:6] x11;
  wire signed [2:31] x12;
  wire signed [27:3] x13;
  wire signed [2:28] x14;
  wire [28:6] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:6] p0 = 538103148;
  localparam [24:4] p1 = 246602245;
  localparam signed [27:1] p2 = 381248439;
  localparam [26:5] p3 = 289295440;
  assign x4 = x1[16];
  assign x5 = (ctrl[2] && ctrl[2] || !ctrl[1] ? {p2[16], {2{x1[18 -: 3]}}} : x3[14 + s0]);
  assign x6 = (((x3 - (x2[13 + s2 +: 6] ^ {2{x3[12 +: 3]}})) - {2{p3[17 + s0 +: 4]}}) | (!ctrl[2] && ctrl[0] && ctrl[1] ? ({2{(!ctrl[2] || !ctrl[0] && ctrl[2] ? x0[3 + s3 -: 2] : x2[16 -: 2])}} | {2{{p0[13 + s3 -: 2], p3[17]}}}) : p3[28 + s0 +: 2]));
  assign x7 = (ctrl[1] && !ctrl[3] && !ctrl[0] ? ({2{(!ctrl[3] || !ctrl[1] && ctrl[0] ? p0[10] : x4[0 + s0 -: 3])}} ^ p2) : (!ctrl[3] && !ctrl[2] || !ctrl[2] ? p0[8 + s0] : x3[14 -: 1]));
  assign x8 = (x3[22] - {((x4[8 + s2] - (p2 | x0)) - x2[19 + s1 +: 6]), ((p3[13 +: 4] + {2{p1}}) | p0)});
  assign x9 = x5[6 + s1];
  assign x10 = {(p1[16 + s2 +: 4] & p3[11 + s0 +: 6]), p1[15]};
  assign x11 = {2{((p1[18 +: 3] | ({2{x10[10]}} - {p1[8], (x5[12 + s1 -: 4] - p1)})) | {x5[16 +: 1], (p3[19 + s2] | {x3, p3[12 +: 3]})})}};
  assign x12 = (p1[11 + s0] & x0[22 -: 2]);
  assign x13 = {2{x3[28 + s2 +: 7]}};
  assign x14 = x0[27 + s3 +: 1];
  assign x15 = p2[9 +: 2];
  assign y0 = x9[14];
  assign y1 = (((((!ctrl[0] && ctrl[2] && !ctrl[2] ? (p0[7 + s2] | (p2[9 + s3 -: 3] - x3[1 + s0 +: 2])) : p1) + x10[6 + s2 +: 6]) & ({x9[9], (x0 ^ (p0[16 + s2] ^ p3[13 + s3]))} + (p2[9 + s3 +: 2] & p1))) + ((ctrl[3] || ctrl[1] || ctrl[3] ? x15[23 -: 1] : (p0[15 -: 4] + p0[8 + s1 -: 5])) ^ {2{p1}})) - x7[16]);
  assign y2 = p0;
  assign y3 = p0[14];
endmodule
