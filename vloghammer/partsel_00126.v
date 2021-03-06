module partsel_00126(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [28:0] x4;
  wire [0:24] x5;
  wire [26:0] x6;
  wire signed [2:25] x7;
  wire [4:26] x8;
  wire [24:5] x9;
  wire [31:6] x10;
  wire signed [7:24] x11;
  wire [5:30] x12;
  wire signed [27:3] x13;
  wire [26:3] x14;
  wire [3:28] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [5:30] p0 = 745448997;
  localparam [5:25] p1 = 784337711;
  localparam [30:3] p2 = 361298169;
  localparam [28:1] p3 = 618757216;
  assign x4 = p3[11 +: 1];
  assign x5 = ((p2[21] - (p0[11] | ((ctrl[1] || !ctrl[1] && ctrl[3] ? p0[18 + s2 -: 7] : p0[12]) | (x4 + x2[9 +: 1])))) ^ ((ctrl[1] && ctrl[1] && ctrl[1] ? p1[3 + s2 -: 1] : p2[17 -: 3]) + ({2{p3}} - p1[13 -: 3])));
  assign x6 = {2{x2}};
  assign x7 = ({2{x4[6 + s2]}} & {2{({2{x6}} - {2{p0[18]}})}});
  assign x8 = {{2{(((p1 + (x6 ^ p1)) + ((p0 & x3[26 + s0 -: 7]) + (x7[15 + s0 -: 3] ^ x1))) & ((p2[14 +: 3] ^ x6[19]) - (x0[22 + s2 -: 7] & p2[9 + s0])))}}, (!ctrl[3] && ctrl[3] && ctrl[3] ? {2{(p2 & x1[23 -: 3])}} : p0[14 +: 2])};
  assign x9 = x7[22 + s0 +: 5];
  assign x10 = ((p0[26 + s2 -: 6] ^ p0) + p3);
  assign x11 = x3[4 + s0];
  assign x12 = (x0[4 + s1] + (((x10[12 +: 3] & x3) - ({(p1[11 +: 4] - (p0 ^ p3)), x0[10 + s3]} - p3[21 -: 3])) ^ {2{x5[14 + s3]}}));
  assign x13 = x2;
  assign x14 = p3[8 + s3];
  assign x15 = p2;
  assign y0 = ((p0 - (!ctrl[3] && !ctrl[3] && !ctrl[2] ? {(p2[11] + x1[17]), (!ctrl[3] && ctrl[1] || !ctrl[0] ? x5[19] : (x14 - x1[13 +: 2]))} : p0)) ^ ({2{x1[23]}} & ({2{{2{x14[15 + s0]}}}} ^ p0[15 + s1])));
  assign y1 = ((p1[19 -: 4] ^ (p1[18 +: 3] | (ctrl[2] && !ctrl[0] && ctrl[3] ? (p3[21] + (x1[8 + s2] | p3)) : p3[17 +: 4]))) ^ (p1[15 + s0] - {2{{(x1 | (x10[11 +: 2] | p3)), (x4[13 + s2] & x6[6 + s1])}}}));
  assign y2 = p2[1 + s3 +: 4];
  assign y3 = (x12[21] - {p0[16], p1[14 -: 2]});
endmodule
