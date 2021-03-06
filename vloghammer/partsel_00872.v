module partsel_00872(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [3:24] x4;
  wire signed [25:3] x5;
  wire signed [25:2] x6;
  wire [28:1] x7;
  wire [25:4] x8;
  wire signed [30:1] x9;
  wire [30:4] x10;
  wire signed [7:28] x11;
  wire [2:26] x12;
  wire signed [6:26] x13;
  wire signed [27:4] x14;
  wire signed [24:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:5] p0 = 735685476;
  localparam signed [30:2] p1 = 295910278;
  localparam [6:29] p2 = 264967649;
  localparam signed [28:6] p3 = 477775849;
  assign x4 = p1[1 + s0 -: 2];
  assign x5 = p3;
  assign x6 = x2[10 +: 3];
  assign x7 = x5[8 + s2];
  assign x8 = p0[23];
  assign x9 = x0[15];
  assign x10 = x8[21];
  assign x11 = {2{p2[25 + s0 +: 2]}};
  assign x12 = x1[17 + s2];
  assign x13 = {x8, (p3[15 -: 2] - x2[15 +: 4])};
  assign x14 = {2{({(ctrl[1] || !ctrl[3] || ctrl[2] ? (p2 + p1[4 + s3]) : x7[15]), (p1 & (p0[15 +: 4] - p0[2 + s2 +: 1]))} | ((p2 - x8[11 + s2 -: 5]) ^ {2{(p1[12 + s2 -: 8] | p2[14 +: 4])}}))}};
  assign x15 = (({p0[17 + s1], x14} & ({2{(ctrl[0] && ctrl[1] && !ctrl[1] ? p1[9 + s0] : p0)}} | {2{{p1[8 +: 3], p1[28 + s1 -: 4]}}})) + {((ctrl[1] && ctrl[1] && ctrl[2] ? (!ctrl[0] && !ctrl[2] || !ctrl[0] ? p1[8 +: 3] : p0[20 -: 1]) : p2[3 + s2 +: 7]) ^ p3[13 +: 3]), (x14 & (((x11[7 + s3] + p0[18 + s0 +: 2]) - p3[17 + s0]) & {2{x13[5 + s1 +: 1]}}))});
  assign y0 = x10[0 + s3 -: 3];
  assign y1 = (!ctrl[3] && !ctrl[3] && !ctrl[3] ? ({2{{(ctrl[3] || !ctrl[0] && !ctrl[0] ? x11[18 + s3 -: 4] : p1), (x5 + x3[14 +: 1])}}} ^ x1[5 + s2]) : x14);
  assign y2 = {{2{p0[8 +: 3]}}, x8[11]};
  assign y3 = x11[20];
endmodule
