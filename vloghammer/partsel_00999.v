module partsel_00999(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [7:29] x4;
  wire signed [28:1] x5;
  wire [29:4] x6;
  wire [3:25] x7;
  wire signed [25:2] x8;
  wire signed [2:24] x9;
  wire [31:1] x10;
  wire [31:2] x11;
  wire signed [30:7] x12;
  wire [25:3] x13;
  wire [26:0] x14;
  wire signed [29:2] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:0] p0 = 165517710;
  localparam [26:0] p1 = 109125396;
  localparam signed [29:2] p2 = 571796080;
  localparam [28:6] p3 = 514988621;
  assign x4 = (({p3[16 + s0 -: 7], x3} ^ (ctrl[2] && ctrl[1] || ctrl[1] ? ({2{x2[15 + s2]}} - x0) : x3)) | (x0[0 + s1 -: 7] ^ (({p0[8 + s2], x0[5 + s0]} - {2{p2[15 +: 3]}}) + {2{{2{x2[23 -: 1]}}}})));
  assign x5 = {2{p1[10 + s2]}};
  assign x6 = p0;
  assign x7 = (!ctrl[3] && !ctrl[1] || !ctrl[1] ? (ctrl[1] && !ctrl[2] || !ctrl[2] ? {2{(!ctrl[1] || !ctrl[1] || ctrl[2] ? p3[16] : {p3[31 + s0 +: 1], x4[27 + s0 -: 4]})}} : p1[11 + s1]) : (x4[8 +: 3] + x6[18 + s1 +: 3]));
  assign x8 = (!ctrl[2] && !ctrl[2] && ctrl[2] ? (ctrl[0] || !ctrl[2] && ctrl[3] ? {2{p2}} : (x1[21] | (((p0[8 + s2 -: 4] | p0[18 -: 3]) & (x0[18] + x3[28 + s1 +: 6])) ^ {2{(x6[16] - x7[29 + s1 +: 1])}}))) : x7[20]);
  assign x9 = (p3[19 -: 1] & (p3[7 + s3] - (!ctrl[3] && !ctrl[3] || ctrl[3] ? p3[12 +: 1] : x2[15 +: 1])));
  assign x10 = ((!ctrl[2] && ctrl[1] || ctrl[0] ? p2[17 + s0] : x3) & ({2{(p1 ^ (x9[16 + s2 +: 6] - x6[18]))}} & p2[3 + s0 -: 7]));
  assign x11 = (p2[15 + s3 +: 7] & p3[17 +: 1]);
  assign x12 = (x9[20 -: 4] - ((!ctrl[3] && !ctrl[2] || ctrl[1] ? p2 : {2{{2{p0}}}}) & {p3[21], {x8, x1}}));
  assign x13 = (ctrl[1] && !ctrl[2] && !ctrl[0] ? x4[17 + s2] : (ctrl[3] && ctrl[3] || !ctrl[3] ? ({{2{x9}}, {(p3[4 + s0] ^ x0), (x10[17 -: 2] + p0[6 + s0])}} ^ x12[25 + s3 -: 8]) : p1[20]));
  assign x14 = p1[12 + s1 -: 3];
  assign x15 = p0;
  assign y0 = x1;
  assign y1 = p3[18];
  assign y2 = p0;
  assign y3 = x1[10];
endmodule
