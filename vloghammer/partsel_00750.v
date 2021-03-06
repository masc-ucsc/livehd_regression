module partsel_00750(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [4:31] x4;
  wire signed [28:5] x5;
  wire [7:30] x6;
  wire [1:31] x7;
  wire signed [26:5] x8;
  wire signed [27:0] x9;
  wire [6:28] x10;
  wire [2:31] x11;
  wire signed [1:28] x12;
  wire signed [3:28] x13;
  wire [1:31] x14;
  wire [25:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:5] p0 = 201182667;
  localparam [31:3] p1 = 798346489;
  localparam signed [24:2] p2 = 216220856;
  localparam signed [29:4] p3 = 616900896;
  assign x4 = x3[15 +: 3];
  assign x5 = (x0 - ((!ctrl[1] && ctrl[3] || ctrl[0] ? {2{(!ctrl[0] || ctrl[3] && !ctrl[3] ? p0[17 +: 2] : p2[12 -: 4])}} : ((x4[23] | p0) & p0)) - p2[17 -: 4]));
  assign x6 = p3[21 -: 1];
  assign x7 = p0[23 + s2 -: 7];
  assign x8 = (p0 & p3[12 -: 4]);
  assign x9 = x1;
  assign x10 = (x4[29 + s2 +: 3] + {(((x7[9 + s2] ^ x8) | x3[11 + s1]) - {((p1[20 + s3 +: 3] ^ (x2 | (p0[5 + s1 -: 6] - (((x8 + p3[21 -: 4]) + p1) + p3[13 + s2 +: 2])))) & x6[8 + s0]), ((p1[18 +: 2] ^ x9[12]) + p2[15])}), ({{2{p2[6 + s1 -: 1]}}, {p1[22 -: 1], x0[7 + s3 +: 5]}} | (x6 ^ p2[19 +: 3]))});
  assign x11 = x5;
  assign x12 = (p2 ^ ((p1[17 + s1] | p1[17 + s3 -: 6]) & x7));
  assign x13 = x9;
  assign x14 = (p2[16 -: 1] | p1[19 -: 3]);
  assign x15 = {2{{2{{(p1[10] | x7[12 -: 1]), x0[22 -: 2]}}}}};
  assign y0 = p0[24 + s3 +: 6];
  assign y1 = (!ctrl[2] && ctrl[1] || ctrl[3] ? (!ctrl[3] && !ctrl[2] || ctrl[3] ? ({x0[13 + s1], x12[5 + s0]} | (!ctrl[1] || !ctrl[3] || !ctrl[2] ? p0[11 +: 3] : p3[10 + s1])) : {2{{{2{p2}}, (((p1 | p0) + p3) | p3[27 + s0 -: 7])}}}) : {2{p2[9 +: 4]}});
  assign y2 = (ctrl[1] || !ctrl[1] && !ctrl[0] ? p0 : x8[16 + s2 +: 1]);
  assign y3 = ({p2[17], p0[22 -: 3]} - {(((p3 - (p3[5 + s0] & x5[6 + s1])) ^ {x8[21], x13[13 + s1]}) - x8[20 -: 4]), p2[6 + s2]});
endmodule
