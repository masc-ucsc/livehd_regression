module partsel_00996(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [26:3] x4;
  wire [4:25] x5;
  wire [27:6] x6;
  wire [26:4] x7;
  wire signed [7:29] x8;
  wire [29:1] x9;
  wire signed [1:24] x10;
  wire signed [31:5] x11;
  wire [0:30] x12;
  wire signed [3:26] x13;
  wire [4:29] x14;
  wire signed [29:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:27] p0 = 486251462;
  localparam [4:29] p1 = 197501984;
  localparam signed [31:1] p2 = 652076198;
  localparam signed [6:25] p3 = 553726358;
  assign x4 = (({2{p2[16 -: 2]}} - p3[9 + s2 +: 4]) + {p3[0 + s1 +: 4], (x0[16 + s1] & x1[13])});
  assign x5 = (ctrl[2] || !ctrl[0] || ctrl[0] ? (ctrl[1] || ctrl[2] || ctrl[0] ? p2[13] : (((p2[23] - p1[16 +: 2]) & {2{p1[18 + s1]}}) ^ p3[30 + s0 -: 6])) : {2{x0}});
  assign x6 = ((({2{{2{p3[10 +: 4]}}}} + p2[13 -: 2]) - x3[20]) + p0[11 +: 3]);
  assign x7 = (({x0, x0} | x4[17 + s3]) + ({((ctrl[0] || ctrl[2] || ctrl[0] ? (x0[11 +: 1] | p1) : x4[22 + s1 +: 4]) | p0), (x4[18 + s0] ^ {(p2 ^ x4[10 + s1 -: 3]), p1[16 -: 3]})} - x6));
  assign x8 = p2[1 + s2 +: 5];
  assign x9 = p3[19];
  assign x10 = x1[10];
  assign x11 = ({((((p3[17 +: 4] - x1) + (p2 + x0[17 -: 2])) & (x2[15 +: 3] | x4[18 + s1 -: 2])) ^ ((x1[17 -: 1] ^ (p0[12 -: 4] ^ (p2[19 -: 1] | p3[29 + s3 +: 8]))) + (p3[31 + s1 -: 6] ^ x10[14 + s0 +: 4]))), p1[8 + s0 +: 6]} & x0[26 + s2 -: 1]);
  assign x12 = x0;
  assign x13 = {{2{p2[16 + s3]}}, (x5[19 +: 3] | {2{((x2[14 + s3] & x4) - {2{p0[21 + s3 -: 7]}})}})};
  assign x14 = ((x11[15 +: 1] ^ (((ctrl[2] || !ctrl[1] && ctrl[1] ? p1[12 + s3] : ((x9[1 + s1 +: 5] & p3[13 + s0 +: 2]) ^ (x2[20 + s3 +: 1] & (p1[19 + s0] - x3[8])))) + {2{(x5 - (p0[8 + s1 -: 4] | p1))}}) ^ (x9[17] - (!ctrl[2] || ctrl[1] || !ctrl[2] ? p2[15 + s2 +: 8] : (p1[18 -: 4] & (p3[15 +: 1] ^ p0[18 -: 1])))))) & {2{x6[14 + s2 +: 4]}});
  assign x15 = ((({2{{p0[8], x7}}} | p2[16 +: 3]) | (x14 + p0[7 + s2 +: 1])) + (!ctrl[0] || ctrl[0] || ctrl[2] ? ({2{(!ctrl[2] && ctrl[3] && ctrl[1] ? p1[13 +: 1] : x7)}} - p0[9 + s0 +: 8]) : p1));
  assign y0 = (p0[12 -: 3] | p3[18]);
  assign y1 = {x6, x13};
  assign y2 = ({p1, {x8[5 + s2 +: 7], p2[12 -: 1]}} + {({2{{p2, x12[8 + s1 +: 2]}}} | p0[13 -: 4]), ((x4[4 + s2] | {p1[26 + s1 +: 6], x5[9 + s1]}) - p0)});
  assign y3 = x4[22 -: 3];
endmodule
