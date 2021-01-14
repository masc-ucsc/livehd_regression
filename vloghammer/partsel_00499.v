module partsel_00499(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [29:4] x4;
  wire signed [28:4] x5;
  wire [4:25] x6;
  wire [30:3] x7;
  wire [28:1] x8;
  wire [3:31] x9;
  wire signed [6:26] x10;
  wire signed [29:4] x11;
  wire signed [27:2] x12;
  wire signed [6:25] x13;
  wire signed [24:5] x14;
  wire [27:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:1] p0 = 595293621;
  localparam signed [3:24] p1 = 467706288;
  localparam signed [26:1] p2 = 510024352;
  localparam [7:27] p3 = 766340778;
  assign x4 = {2{({2{{2{{p2[15], (p2 & (x0[19 + s0] ^ p3))}}}}} - x2)}};
  assign x5 = p1;
  assign x6 = (ctrl[1] && ctrl[3] && !ctrl[1] ? p2[12 +: 4] : x2[16 + s1 +: 3]);
  assign x7 = p3[18 -: 2];
  assign x8 = {{((ctrl[3] && ctrl[0] || !ctrl[3] ? (ctrl[3] || !ctrl[3] || ctrl[3] ? (p0[0 + s3 -: 6] - x3[17]) : p2[7 + s3]) : ((x2[29 + s2 +: 1] | x1[20 -: 3]) & x2[30 + s3 +: 7])) + {2{x5}}), (x2[19 + s3] + (x2[15] | p3[12 + s0]))}, p3[8 + s3]};
  assign x9 = (((p2[19 -: 1] & ((!ctrl[1] || ctrl[0] && !ctrl[0] ? p3 : p0[10 +: 2]) & (ctrl[0] && !ctrl[2] && ctrl[2] ? ((p2[12] - (x1[18] + x2[8])) - x8[28 + s1 +: 8]) : p2[19]))) ^ {p1, (!ctrl[1] || !ctrl[2] && ctrl[1] ? {x2, p0} : x2[11])}) ^ {((x8[9 +: 3] ^ (p3 | p3[18 -: 4])) & ((x5[13 + s1 -: 1] - p0[9 + s3 +: 2]) | x8[17 +: 3])), (ctrl[3] || ctrl[2] || ctrl[0] ? ((x1[20 -: 3] & x6[14 +: 4]) | p0) : (x8[16 -: 4] ^ p0[17 -: 2]))});
  assign x10 = ((!ctrl[3] || ctrl[0] || ctrl[3] ? ((ctrl[0] || !ctrl[1] && !ctrl[1] ? (p2[13 -: 2] & (x9[22] & p3[15 + s3])) : {x0[20 + s0 +: 5], x1}) ^ x8[17 -: 2]) : p3[16 + s3 +: 7]) + x4[9 + s1 -: 4]);
  assign x11 = ({2{{2{p3[14 -: 3]}}}} ^ ((x8[23 + s1 -: 6] ^ x0) + {p3[10 + s2 -: 4], {x5, (x1[17 + s1] & x8[5 + s0])}}));
  assign x12 = (p0[7 + s3 -: 7] + x9);
  assign x13 = {({(p2[23 -: 4] & (p1[24 + s0 -: 4] - p0[18 + s0 -: 8])), p2} ^ {p1[21], {{p0[21 + s1 +: 2], ((x3[7 + s0 +: 7] - p1[21]) - p0[22])}, (x12[14] | p3)}}), (ctrl[0] && !ctrl[0] || !ctrl[3] ? p3[18 -: 3] : p0[23 -: 2])};
  assign x14 = (!ctrl[0] && ctrl[0] && ctrl[2] ? x6 : p3[22 -: 2]);
  assign x15 = ((x1[18 -: 4] & (p1[12 +: 1] ^ (x2[23] - (!ctrl[3] || ctrl[1] && ctrl[2] ? (p2[19] | p2) : x5[13 -: 4])))) & x12[7 + s0 -: 3]);
  assign y0 = {2{{{2{x8}}, (!ctrl[2] || ctrl[3] || ctrl[0] ? ((x11[3 + s1 -: 4] - (x1[11 +: 1] ^ (x7[21 -: 1] & x8[16 +: 3]))) - x13[23]) : (ctrl[0] && ctrl[3] || ctrl[1] ? (x3[14 +: 2] ^ x9) : p2[23 + s3 +: 8]))}}};
  assign y1 = p1[20];
  assign y2 = x7[29 + s2 +: 5];
  assign y3 = p1[15 -: 4];
endmodule
