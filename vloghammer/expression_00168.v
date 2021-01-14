module expression_00168(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((2'd3)&&(5'd22))?((4'd8)>>>(-2'sd0)):((2'd3)<<<(4'sd0)));
  localparam [4:0] p1 = (|((~^(^((4'd10)&(3'd1))))==={3{(-2'sd0)}}));
  localparam [5:0] p2 = {((-4'sd2)==(4'sd7)),((2'd1)|(2'd2)),((-3'sd2)>>>(-5'sd13))};
  localparam signed [3:0] p3 = (((5'd9)^(4'd6))!=((-4'sd0)^(4'sd5)));
  localparam signed [4:0] p4 = {((~|(5'sd11))<=((3'd2)|(2'sd1))),(~|((-2'sd0)?(-2'sd0):(4'd12)))};
  localparam signed [5:0] p5 = {(-2'sd1),(2'sd0)};
  localparam [3:0] p6 = (~|((|(4'd7))>>>(|(-4'sd6))));
  localparam [4:0] p7 = {(-4'sd3)};
  localparam [5:0] p8 = (((-3'sd3)?(-3'sd0):(2'sd0))?(^(2'd3)):(|(-(3'sd1))));
  localparam signed [3:0] p9 = ((((4'd3)?(3'd6):(5'd1))?((2'sd1)>=(2'd0)):((5'd31)?(5'sd6):(3'd2)))+(((4'sd3)!==(-3'sd3))<=((2'd3)?(2'd3):(-2'sd0))));
  localparam signed [4:0] p10 = ((((2'd2)>>>(-4'sd4))>((4'd5)!==(-5'sd1)))>>{{1{((2'd0)<(2'd1))}},((3'd3)!==(5'd12))});
  localparam signed [5:0] p11 = {2{((5'd17)>(-3'sd2))}};
  localparam [3:0] p12 = (|((&(-((-4'sd3)<(-3'sd3))))==(+(&((4'd0)?(3'd3):(2'd3))))));
  localparam [4:0] p13 = {{{(3'sd3),(-3'sd1),(2'sd1)},((4'd10)!==(-2'sd0))},(3'd5)};
  localparam [5:0] p14 = (~((2'd1)?(5'd11):(5'd28)));
  localparam signed [3:0] p15 = ((~&(((2'sd1)||(5'sd8))?((4'd12)^(2'd3)):(~|(4'sd3))))!==(((4'd2)?(-2'sd0):(3'd7))<<<(~((-5'sd13)!==(2'd1)))));
  localparam signed [4:0] p16 = (((2'd2)?(-2'sd0):(3'd0))?(&((-4'sd1)?(5'd7):(2'd1))):(+(~^(5'd22))));
  localparam signed [5:0] p17 = (((+(-4'sd2))^~((3'd5)<<<(5'd11)))!==(((-4'sd1)&&(4'd13))|(-(-5'sd15))));

  assign y0 = (-5'sd3);
  assign y1 = ((~|(^{1{a2}}))===((|a5)==(|b4)));
  assign y2 = {(~&(p1<=b3))};
  assign y3 = (-{p2,p9});
  assign y4 = (6'd2 * $unsigned((5'd26)));
  assign y5 = ((3'd3)===((~(-(~|b0)))>=(&(+(b3>>>a1)))));
  assign y6 = {4{($signed((~^b2)))}};
  assign y7 = ((((b4?p11:b5)>=(b0||b4))<<<{1{{{b4,b5}}}})>(4'sd0));
  assign y8 = {(-4'sd6),{p16},(3'd2)};
  assign y9 = (^(5'sd10));
  assign y10 = {1{(3'd6)}};
  assign y11 = {((~&(a0^~a4))===({b1,b1}===(a2!=a0)))};
  assign y12 = ((4'd14)=={4{{3{p7}}}});
  assign y13 = (&$signed((^(2'sd0))));
  assign y14 = ((6'd2 * (b1&&a1))^{4{(p2|p16)}});
  assign y15 = (4'd2 * (6'd2 * b0));
  assign y16 = ((2'd0)^((p8<<<b2)));
  assign y17 = ({{({(p4<p6),(p3!=p8)}+{4{p1}})}}<{3{{2{p14}}}});
endmodule
