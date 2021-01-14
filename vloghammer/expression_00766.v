module expression_00766(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {(2'd0),{4{(-4'sd7)}},{(5'sd8),{(-4'sd1),(2'sd0),(4'sd4)},{2{(-4'sd5)}}}};
  localparam [4:0] p1 = (4'd2 * ((3'd6)-(3'd2)));
  localparam [5:0] p2 = (5'd21);
  localparam signed [3:0] p3 = (((2'd2)<<(-4'sd1))?((2'sd1)?(4'sd5):(5'sd1)):{(+(2'sd1))});
  localparam signed [4:0] p4 = ((5'd23)?(5'd9):(-2'sd1));
  localparam signed [5:0] p5 = ({((4'sd4)?(5'sd15):(3'd6)),((3'd2)?(5'd31):(5'd7)),(+(3'd1))}?(~&{(~|(2'sd0)),(~&(2'sd1))}):((~(2'd3))?(+(4'sd3)):((3'd7)?(-2'sd0):(2'd2))));
  localparam [3:0] p6 = ((~^(~^(5'd6)))?((5'sd4)?(3'sd1):(2'sd0)):(-(~^(3'd0))));
  localparam [4:0] p7 = (2'd0);
  localparam [5:0] p8 = ((^((4'sd2)<=(-2'sd1)))>((2'sd1)/(-4'sd7)));
  localparam signed [3:0] p9 = {{{(3'd3)},(3'd6),{(5'd7),(5'd13)}},(5'd2 * ((4'd14)-(5'd25)))};
  localparam signed [4:0] p10 = (~^(~^(~^((~|((~^(4'sd1))&&((3'd7)>>(3'd1))))==((~^(~&(-5'sd10)))>((5'd29)+(5'd28)))))));
  localparam signed [5:0] p11 = {2{(~&(-5'sd15))}};
  localparam [3:0] p12 = {{{((((-2'sd0)==(3'sd2))!==((5'd28)>=(-2'sd1)))===(4'd1))}}};
  localparam [4:0] p13 = (((5'd13)^~(4'sd2))|((3'sd0)<<(-3'sd2)));
  localparam [5:0] p14 = {1{{2{{(+(-2'sd1)),(^(-2'sd0)),{(3'd7),(4'd12),(5'd25)}}}}}};
  localparam signed [3:0] p15 = {1{({3{{(2'sd1),(2'd1),(4'sd1)}}}|{2{{3{(-5'sd12)}}}})}};
  localparam signed [4:0] p16 = {(~|{(-2'sd0),(-3'sd1)}),(&(!{(-4'sd3),(-4'sd5),(-5'sd1)}))};
  localparam signed [5:0] p17 = (~&(~(4'sd5)));

  assign y0 = (((p12?p9:p1)?(!p8):(p3?p10:p2))?((p4?p10:p14)?(~|p5):(p1?p4:p1)):((p16/p16)?(p16?p0:p3):(5'sd14)));
  assign y1 = (-5'sd4);
  assign y2 = ((b1?a2:b4)<<(b5===a4));
  assign y3 = (((4'd9)?((~&$signed(b3))===(a3?a0:a0)):((2'sd0)?(-p7):(p9*b4))));
  assign y4 = ((5'd12)<<(^(2'sd0)));
  assign y5 = {2{((b0>a0)?{1{b3}}:(5'd23))}};
  assign y6 = ({2{$signed({$unsigned(({3{a3}}?{p7,p9,p0}:{4{p5}}))})}});
  assign y7 = (({4{b1}}||(~p5))^~(-(a3+b5)));
  assign y8 = (&(4'd7));
  assign y9 = ((((p2==p5)/p11)^((~|(+p0))!=(~^(6'd2 * p0)))));
  assign y10 = $unsigned({1{{2{{2{{4{p13}}}}}}}});
  assign y11 = {4{(3'd7)}};
  assign y12 = (-({a5,p6}?{b4,a2}:(-a3)));
  assign y13 = $unsigned(((a4?b4:b1)>=(b4?b3:p11)));
  assign y14 = ((6'd2 * (p8>=p1))?((p16==p14)?(p0?p5:p2):(b1<=p4)):((b1?a3:p9)?(p2-p15):(p3&p14)));
  assign y15 = (&({1{(^((+a5)+(!a5)))}}<{1{{4{b1}}}}));
  assign y16 = (4'd3);
  assign y17 = (!p4);
endmodule
