module expression_00789(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (6'd2 * (3'd6));
  localparam [4:0] p1 = (~&((~&(4'd3))^~(((5'd29)?(4'd9):(-5'sd15))?(~|(5'sd3)):((2'sd0)^(2'd1)))));
  localparam [5:0] p2 = (-2'sd1);
  localparam signed [3:0] p3 = {((2'd2)!==(-5'sd13)),((2'd3)<<<(-4'sd7))};
  localparam signed [4:0] p4 = (&((((4'd11)>(5'd8))<<<(!(3'd7)))<<((~(3'd1))>>>(-(2'sd0)))));
  localparam signed [5:0] p5 = (~&{{((4'sd2)?(4'sd4):(4'd8))},(6'd2 * ((4'd0)&&(5'd15)))});
  localparam [3:0] p6 = (~^((4'd15)?(3'sd1):(2'sd0)));
  localparam [4:0] p7 = ({(5'd7),(-5'sd9),(-2'sd1)}+((-5'sd11)<(2'd2)));
  localparam [5:0] p8 = (&((((3'd1)>>(4'd1))>=(2'd1))!==(4'sd4)));
  localparam signed [3:0] p9 = {1{(3'sd0)}};
  localparam signed [4:0] p10 = (5'd25);
  localparam signed [5:0] p11 = (~&(!((+(6'd2 * ((5'd14)%(2'd2))))^(~&((~|(4'sd1))^(~|(4'sd2)))))));
  localparam [3:0] p12 = ((&(~&(^((2'd0)<=(4'd13)))))^{{(2'd0),(-2'sd1)},{(2'd1),(4'd11)}});
  localparam [4:0] p13 = (2'd3);
  localparam [5:0] p14 = ((5'sd8)?(3'sd0):(2'sd0));
  localparam signed [3:0] p15 = (((&((2'd0)<<(4'd13)))<((4'd12)^(3'd6)))^~{4{((5'd29)>>(2'd3))}});
  localparam signed [4:0] p16 = (-((-(-5'sd3))?{4{(2'd1)}}:(~&(-2'sd1))));
  localparam signed [5:0] p17 = (-4'sd0);

  assign y0 = ({3{$unsigned(({2{a3}}))}});
  assign y1 = {(4'd2 * (b1-a2))};
  assign y2 = (3'd7);
  assign y3 = ((((a2>>a4)>(b4!=b5))&((p8&b3)&&(b2>>p2)))|(((b2<<a1)===(b2&&b4))===((a1<<<b4)^(b3===a5))));
  assign y4 = ($unsigned((p11|b4))&&(b4<=a2));
  assign y5 = $unsigned($signed({4{$signed({2{{3{a0}}}})}}));
  assign y6 = ({1{{2{((a2<a2))}}}}||$signed({2{{1{{3{b0}}}}}}));
  assign y7 = {(((2'd2)<(4'd14))!=(5'd12)),(4'sd7)};
  assign y8 = ((2'd2)^~{{(3'd2),(p17^~p9)},(~&(~|(-4'sd2)))});
  assign y9 = (-5'sd10);
  assign y10 = (|($unsigned(((6'd2 * (a2===b2))<<(~|(a5<=p15))))+$signed({(~(~^(-({a0}>$signed(p3)))))})));
  assign y11 = (((a3!=a4)?(b5!=a1):$signed($unsigned(b2)))===(((a1!==a2)*(+b1))|(!((b4||b3)!==(a1|b3)))));
  assign y12 = (+(((~(+(b5?a5:b3))))>>((|p1)<(b3))));
  assign y13 = ((b4?a3:b5)&&(!(~|(|a1))));
  assign y14 = (($signed((-4'sd2))<={2{(p17<b4)}})>({3{a2}}==(~^(p5?a3:p7))));
  assign y15 = ($unsigned(((p6%p8)&&((-a3)))));
  assign y16 = (^(5'd2 * (b2===a0)));
  assign y17 = (2'sd0);
endmodule
