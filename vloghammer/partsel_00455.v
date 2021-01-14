module partsel_00455(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [7:26] x4;
  wire signed [2:30] x5;
  wire [3:31] x6;
  wire [30:1] x7;
  wire [30:6] x8;
  wire [2:29] x9;
  wire [24:0] x10;
  wire [27:1] x11;
  wire signed [5:26] x12;
  wire [1:25] x13;
  wire signed [2:25] x14;
  wire [1:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:30] p0 = 685616766;
  localparam signed [2:27] p1 = 966888818;
  localparam signed [4:24] p2 = 482528964;
  localparam signed [2:30] p3 = 483649528;
  assign x4 = {(((ctrl[2] || !ctrl[0] || !ctrl[1] ? p3[6 + s2 +: 2] : p2[13 + s1]) & p2[13 -: 4]) ^ {2{{{2{p2}}, x2[16 -: 1]}}}), x3[12 + s3]};
  assign x5 = {2{((((p3[14 -: 3] | x0[12]) + x2) | {{2{(p1 & x1)}}, (p3 ^ (p1 & p2[25 + s1 -: 4]))}) ^ p2)}};
  assign x6 = (({2{(p1[15 + s1 -: 7] & x3[16 -: 1])}} | x1[9 +: 4]) ^ {((((p2 & p0[3 + s1 +: 7]) ^ x1[5 + s2]) ^ {2{p2[20 -: 4]}}) - p1[13 -: 4]), {2{p2}}});
  assign x7 = (p2[12 + s1 +: 5] | ({x6, ((!ctrl[1] && !ctrl[1] && !ctrl[3] ? x1 : x0[6 + s3]) | (!ctrl[2] || !ctrl[2] && !ctrl[0] ? p1 : x6[14 +: 3]))} ^ x0[11 + s0]));
  assign x8 = ({2{{2{x0}}}} - {2{(ctrl[2] || ctrl[1] || !ctrl[2] ? p2[0 + s2 +: 6] : ((p2[18 -: 2] & x3[19 -: 4]) + (p3 | x5[11 + s2 -: 1])))}});
  assign x9 = {p2, (p0 - (ctrl[2] || ctrl[0] && !ctrl[0] ? p2[18 +: 4] : ({2{p1[14]}} ^ (x6[19 +: 2] | p2[14 +: 3]))))};
  assign x10 = (!ctrl[2] && !ctrl[1] && !ctrl[1] ? ({2{(p1[28 + s0 +: 7] + {2{p3[3 + s1 -: 5]}})}} - ({{2{(x3[20] ^ x4[11])}}, p1[23]} - (ctrl[1] && ctrl[0] || !ctrl[1] ? (!ctrl[2] || !ctrl[1] && !ctrl[3] ? x3 : (p3 | p1[2 + s2 +: 7])) : {2{p2}}))) : {{{x5[18], (p0[13] - x0[8 +: 3])}, x5[20]}, {(x6[4 + s1 +: 2] - {2{(p1[9 + s0 +: 1] - x9[4 + s3 +: 8])}}), p3}});
  assign x11 = {2{{(((x5[9 + s0 +: 6] | x10[30 + s2 +: 2]) ^ (((x6[22 + s2 -: 6] | p0[15]) - x4[10 + s0 +: 3]) - x9)) ^ x3), x2[15]}}};
  assign x12 = p1[8 +: 3];
  assign x13 = p3[6 + s3 -: 6];
  assign x14 = (!ctrl[1] || ctrl[3] && ctrl[2] ? (x0[24 + s0 +: 2] + ((ctrl[1] && !ctrl[0] && !ctrl[0] ? {(x3 ^ p3[18 -: 4]), x11[2 + s3 +: 2]} : p2[6 + s0 +: 8]) | ({(p0 & ((p1[10 + s3] | (p3[17 -: 2] & (p2[11 + s0] ^ p0[21]))) - p2[10 +: 4])), x2[20 -: 4]} + (ctrl[1] || ctrl[0] || !ctrl[2] ? p1[27 + s0 +: 8] : x8[10 + s3 -: 2])))) : x7);
  assign x15 = ({{2{(x10 + (ctrl[2] || !ctrl[2] && ctrl[2] ? p1[15 -: 1] : p2[18 +: 2]))}}, x9[4 + s0]} + p0[9 + s0 +: 4]);
  assign y0 = (p3 - ((({2{((x4[10 + s3] + ((p0[18 + s1 +: 6] | (x8[21 + s0 -: 8] & p1[13])) & x4[10 + s3 +: 3])) | p0[15 + s1 -: 8])}} ^ p0[21 + s3 -: 1]) - {(p3 + x6), (ctrl[0] || !ctrl[0] || !ctrl[3] ? p1[14 +: 4] : p0)}) & {p0[8 + s3], ((x0 + p2[15]) | x12[0 + s3 -: 7])}));
  assign y1 = {p0, {x8[21], {((ctrl[3] && ctrl[1] && ctrl[3] ? x15[12 + s1] : p0[20 -: 4]) + {2{(x13[18 + s1 +: 5] & x12[8 +: 1])}}), (((p3[9] ^ p1[14 + s2]) | p2) + x8)}}};
  assign y2 = (ctrl[0] && ctrl[3] && ctrl[0] ? p2[16] : p0);
  assign y3 = (ctrl[0] && ctrl[3] && ctrl[0] ? p2[22 -: 2] : ({(ctrl[1] || !ctrl[1] && ctrl[3] ? x9[22 -: 4] : (p2[22] ^ x13[10])), {2{((x13[6 + s3 -: 1] - x13) - ((((x6[14] + x9[9]) ^ x5[11]) - p3[22 + s1 -: 8]) ^ (x8[7 + s3 +: 3] - x11[3 + s3 -: 6])))}}} ^ p0[23 + s1 +: 2]));
endmodule
