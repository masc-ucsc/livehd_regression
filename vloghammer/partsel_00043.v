module partsel_00043(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [29:6] x4;
  wire [1:24] x5;
  wire [7:27] x6;
  wire signed [7:28] x7;
  wire signed [31:3] x8;
  wire signed [3:26] x9;
  wire signed [3:31] x10;
  wire signed [30:1] x11;
  wire signed [3:28] x12;
  wire [7:30] x13;
  wire [28:2] x14;
  wire [30:6] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [5:30] p0 = 768348780;
  localparam [27:6] p1 = 464974042;
  localparam [27:0] p2 = 996619935;
  localparam signed [1:27] p3 = 103330361;
  assign x4 = ({((!ctrl[2] && ctrl[2] && !ctrl[0] ? (x2[21 -: 1] ^ p3[12]) : p2[6 + s3]) ^ x0[16 -: 4]), {{p3[10 +: 2], {p0[13], p2}}, {p1[13 + s1 -: 6], p1[4 + s3]}}} | (!ctrl[3] || !ctrl[0] && !ctrl[1] ? (p2[9] & ({(p0[13 + s3] + (((p0[29 + s1 +: 3] & (x3 & p1[14 +: 2])) + p3[7 + s3 -: 2]) ^ p3)), x0[31 + s1 +: 1]} ^ (!ctrl[2] && !ctrl[0] && ctrl[3] ? x1 : p2))) : (!ctrl[2] && !ctrl[2] && !ctrl[3] ? p0 : (!ctrl[1] || !ctrl[2] || ctrl[3] ? p0[6 + s1 +: 1] : (x3[11 +: 2] ^ x2[18])))));
  assign x5 = x2[11];
  assign x6 = p0[12 -: 4];
  assign x7 = (({2{((p0[13 +: 4] & (p3[9 + s2 +: 7] + x5[11 + s2 -: 8])) - (x6[15 -: 3] + (x1[9] & (x6[2 + s3 -: 2] + x1[12]))))}} - x6[7 + s3]) + {({x0[19 + s2 -: 4], (p0[19 +: 3] - p2[8])} | {x0[31 + s3 +: 5], x6[19 -: 3]}), p0[13 +: 1]});
  assign x8 = (x2[16 + s3] | p0[14 +: 2]);
  assign x9 = p0[23 -: 3];
  assign x10 = x3[12 + s0];
  assign x11 = x9[10];
  assign x12 = ((ctrl[3] && !ctrl[1] || ctrl[0] ? p2 : x4) - (p1[9] & p1[7 + s0]));
  assign x13 = x1;
  assign x14 = x13[13 + s2 +: 6];
  assign x15 = (!ctrl[1] || ctrl[1] || ctrl[3] ? {x12, x1[15 + s3 +: 8]} : ({p2[14], p0[8]} - x3[17 + s2]));
  assign y0 = x10[19 + s3 +: 2];
  assign y1 = ({2{p3}} | (p3 ^ {2{{2{{x3[3 + s0 -: 2], x1[11 +: 2]}}}}}));
  assign y2 = ({p2[11 + s3], x13[26 + s3 +: 5]} + p3);
  assign y3 = (x3 | p2[14]);
endmodule
