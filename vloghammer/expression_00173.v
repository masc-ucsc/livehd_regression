module expression_00173(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
  input [3:0] a0;
  input [4:0] a1;
  input [5:0] a2;
  input signed [3:0] a3;
  input signed [4:0] a4;
  input signed [5:0] a5;

  input [3:0] b0;
  input [4:0] b1;
  input [5:0] b2;
  input signed [3:0] b3;
  input signed [4:0] b4;
  input signed [5:0] b5;

  wire [3:0] y0;
  wire [4:0] y1;
  wire [5:0] y2;
  wire signed [3:0] y3;
  wire signed [4:0] y4;
  wire signed [5:0] y5;
  wire [3:0] y6;
  wire [4:0] y7;
  wire [5:0] y8;
  wire signed [3:0] y9;
  wire signed [4:0] y10;
  wire signed [5:0] y11;
  wire [3:0] y12;
  wire [4:0] y13;
  wire [5:0] y14;
  wire signed [3:0] y15;
  wire signed [4:0] y16;
  wire signed [5:0] y17;

  output [89:0] y;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17};

  localparam [3:0] p0 = ((2'd1)|((3'd6)^~((4'd6)&(-3'sd2))));
  localparam [4:0] p1 = {2{(2'd1)}};
  localparam [5:0] p2 = {(3'd1),(4'd14)};
  localparam signed [3:0] p3 = (~^(3'd7));
  localparam signed [4:0] p4 = ((|{(3'sd2),(4'sd5),(-5'sd7)})?((4'd3)?(4'sd0):(4'd10)):(((3'd6)?(4'd5):(2'sd0))>>((3'd5)^~(-2'sd0))));
  localparam signed [5:0] p5 = ({3{{2{(4'sd2)}}}}!==(({2{(2'd3)}}&((-4'sd7)>(2'd1)))>({1{(-2'sd1)}}^((-3'sd1)^(-5'sd15)))));
  localparam [3:0] p6 = ((2'sd0)>>>(5'sd15));
  localparam [4:0] p7 = ((((3'd5)<<(3'd2))&&((-5'sd9)?(2'd0):(-3'sd2)))?(((2'd0)?(2'd2):(-4'sd3))?{(-5'sd13)}:(2'd1)):(3'd0));
  localparam [5:0] p8 = {1{(-{2{(~{2{(4'd7)}})}})}};
  localparam signed [3:0] p9 = {4{({1{(2'sd1)}}===(5'sd5))}};
  localparam signed [4:0] p10 = {{1{(-3'sd0)}},(-(4'sd2))};
  localparam signed [5:0] p11 = (((4'd3)?(4'd9):(4'sd4))&(^((4'd3)<(4'sd2))));
  localparam [3:0] p12 = (((5'sd6)>>>(4'd10))*((-3'sd1)>=(-2'sd1)));
  localparam [4:0] p13 = (|(-4'sd3));
  localparam [5:0] p14 = (((-4'sd1)>>(2'sd1))>>((5'd29)?(3'd5):(2'd0)));
  localparam signed [3:0] p15 = (4'sd2);
  localparam signed [4:0] p16 = {3{{1{({4{(-3'sd3)}}|((-3'sd2)>>(4'd6)))}}}};
  localparam signed [5:0] p17 = ((^((-2'sd1)?(3'd2):(5'sd11)))?(!(~&((3'sd1)?(5'd4):(-2'sd1)))):((4'd9)?(-4'sd2):(3'sd2)));

  assign y0 = {1{((2'd3)>>{2{(|{3{p15}})}})}};
  assign y1 = (+((~|(p9))&&{p9,a5,a1}));
  assign y2 = {3{(a1?p6:a4)}};
  assign y3 = ((a5?a3:b2)?(p16&&b1):((b3>>p13)));
  assign y4 = {1{(4'd2 * (b1===b1))}};
  assign y5 = (((-p14)?(p2?p7:p10):(p8?p14:p9))?((&p16)?(p0?b1:p11):(~|p14)):({p14,p5,a1}?(p0?p10:p17):{p5,p3,p0}));
  assign y6 = ({a2,a4,p9}>=(~(p8)));
  assign y7 = (5'd2 * (b2!=a0));
  assign y8 = (-4'sd3);
  assign y9 = (!(&((4'd1)?((a1^~a2)==(b5===a3)):((5'sd6)+(b3^b1)))));
  assign y10 = (|(b1>>>p2));
  assign y11 = (((4'sd7)||((p12<<<a2)<<<(~&p3)))&(~^((p3<<<b0)>=(b0===a1))));
  assign y12 = ($signed((-5'sd0))&&((-5'sd1)+(3'sd1)));
  assign y13 = ((~&p14)?(~^b0):(a5?b2:a3));
  assign y14 = {(^{4{b4}})};
  assign y15 = ((-a5)!==(+a5));
  assign y16 = ((b1>>b5)!==(|(b4!=b2)));
  assign y17 = (5'sd8);
endmodule
