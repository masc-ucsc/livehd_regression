module expression_00318(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((2'd0)<=(4'sd4))&((3'd5)||(3'sd2)));
  localparam [4:0] p1 = ((((2'd2)>>>(4'd9))!==((3'sd2)?(5'sd0):(5'd10)))<<(5'd6));
  localparam [5:0] p2 = {{3{((5'd3)&(2'sd0))}},(((3'd0)^~(4'sd7))<((-2'sd0)!==(4'd1)))};
  localparam signed [3:0] p3 = {3{{4{(2'd2)}}}};
  localparam signed [4:0] p4 = (|(4'd2 * ((3'd5)<(2'd0))));
  localparam signed [5:0] p5 = (((~&(3'd6))==((4'sd4)?(5'sd10):(5'd0)))>=(((2'd1)!=(2'd1))?((4'd1)>=(-2'sd1)):(~|(5'sd10))));
  localparam [3:0] p6 = {{({2{{(-4'sd2),(2'sd0)}}}?{3{(2'd3)}}:((3'd4)?(5'd27):(3'd6)))}};
  localparam [4:0] p7 = (2'sd1);
  localparam [5:0] p8 = (4'd9);
  localparam signed [3:0] p9 = ({{(2'd2),(5'd17),(4'sd0)}}-{{3{(4'sd3)}},{(-5'sd15),(2'd1)}});
  localparam signed [4:0] p10 = (|(5'd1));
  localparam signed [5:0] p11 = ((~&(5'sd6))?(4'sd0):(-5'sd2));
  localparam [3:0] p12 = ((((4'sd7)^(-2'sd1))>>>((3'd0)&(-2'sd0)))>>>((2'd3)||{2{(5'd19)}}));
  localparam [4:0] p13 = ({{(3'sd0),(2'sd1),(3'sd0)},((3'd4)?(-3'sd1):(-5'sd15))}==={((3'sd3)^(-4'sd0))});
  localparam [5:0] p14 = ((((3'd5)^(2'd0))%(-3'sd0))==(3'd3));
  localparam signed [3:0] p15 = (-3'sd2);
  localparam signed [4:0] p16 = (~{1{(~&(5'd3))}});
  localparam signed [5:0] p17 = ((^(2'd1))>>(((5'sd5)?(3'sd2):(-3'sd2))?((5'sd9)*(2'd2)):((4'd10)<<(2'd0))));

  assign y0 = (|(^(~$unsigned((!(~&((~&(~&(~&(~^b5)))))))))));
  assign y1 = {3{({1{a2}}^~{4{b5}})}};
  assign y2 = ($unsigned({(-(~(((a5>=a1)-{p9,a3})>>>((a1!==b0)>>(p4?b2:b1)))))}));
  assign y3 = (((&(+b1))%p14)<<(((b0>=a2)|(^b5))>((~|p8)>=(a0^~b1))));
  assign y4 = (-(4'd5));
  assign y5 = (|(&{4{(b5?a1:b4)}}));
  assign y6 = (p7<=a0);
  assign y7 = ((p6?p6:p5)^(+(p0==p0)));
  assign y8 = ((p8?p11:p17)*(p0/p17));
  assign y9 = (|(5'sd11));
  assign y10 = {2{{4{{1{p5}}}}}};
  assign y11 = ((a3&&b2)?{3{a1}}:(b0^a1));
  assign y12 = ({{1{a5}},(5'd2 * b1)}>{{{3{b2}}}});
  assign y13 = (|{({a1,a2}!=(a1!=a0))});
  assign y14 = (-((-3'sd3)>>{(a4===b0),(&p2)}));
  assign y15 = (2'd1);
  assign y16 = (4'd2 * a0);
  assign y17 = (((!b1)<(b2/b3))<<<(6'd2 * (a0<=a0)));
endmodule
