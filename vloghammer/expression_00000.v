module expression_00000(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (+(5'd27));
  localparam [4:0] p1 = {2{{4{((-3'sd0)>>(5'd19))}}}};
  localparam [5:0] p2 = {{(-(-5'sd12)),(2'd0),((4'd11)&&(-2'sd0))},(-3'sd3),(-3'sd0)};
  localparam signed [3:0] p3 = (-({4{(2'sd1)}}?{4{(-4'sd5)}}:{2{(4'd5)}}));
  localparam signed [4:0] p4 = ((5'sd1)?(-4'sd6):(2'd3));
  localparam signed [5:0] p5 = ((-(-((2'd3)===(3'd6))))>(-2'sd1));
  localparam [3:0] p6 = {2{(~&{4{(2'sd1)}})}};
  localparam [4:0] p7 = (+({1{(3'd2)}}+((5'd22)?(-3'sd0):(3'sd2))));
  localparam [5:0] p8 = (~(5'd18));
  localparam signed [3:0] p9 = {4{(~^(4'd11))}};
  localparam signed [4:0] p10 = {((3'd0)>(3'sd2)),((4'sd6)<<<(3'sd0))};
  localparam signed [5:0] p11 = (!(~|(2'sd1)));
  localparam [3:0] p12 = ((5'd6)?(-5'sd14):(2'd1));
  localparam [4:0] p13 = (({(4'd12),(2'sd0)}|(3'sd1))-({(2'sd1),(2'd2)}?(-3'sd3):(!(4'd1))));
  localparam [5:0] p14 = ((~|((2'd0)==(4'd1)))==({(5'd23)}<{(-2'sd1),(4'd0)}));
  localparam signed [3:0] p15 = (((^(+(2'd3)))==(3'd5))<=((-5'sd14)|(+((3'sd3)<(-5'sd11)))));
  localparam signed [4:0] p16 = ((-4'sd7)^(4'd13));
  localparam signed [5:0] p17 = (~^(-((-2'sd1)==(-4'sd6))));

  assign y0 = ((-(b5?p4:p12))?(~^(+(~|(~p16)))):(~|(&(a3?a4:p10))));
  assign y1 = (((p9<p0)>={3{a3}})?$signed({3{(a3)}}):$unsigned({3{$unsigned(a0)}}));
  assign y2 = ({4{p2}}?(~&a4):(p0?p16:p12));
  assign y3 = (+p1);
  assign y4 = (^p4);
  assign y5 = {3{{p17,p13,p4}}};
  assign y6 = ({4{(~(p3||p16))}}+{2{((p12<<<p8)<<<(^p1))}});
  assign y7 = $unsigned((+($signed((($unsigned(b0))>=(^(a0>>p7))))^$unsigned((-($signed((a2!==a0))<$unsigned((b0&&a1))))))));
  assign y8 = ((~(+(-(^(b5<<<b3)))))?(+(~&(~^(^(p3?p12:b5))))):(|(!(&(b2&a3)))));
  assign y9 = {2{$unsigned(((~|(&b1))^(p11|p8)))}};
  assign y10 = $signed(b0);
  assign y11 = {2{p14}};
  assign y12 = $unsigned(({(p7?b0:b3)}>{a5,a2,p11}));
  assign y13 = {4{{3{p15}}}};
  assign y14 = ({1{(!(a4&a3))}}>>>({2{b4}}||{3{b0}}));
  assign y15 = (-4'sd0);
  assign y16 = ((~&a5)?(5'sd3):(4'd15));
  assign y17 = (((~^(~|p10))?(~|(!p3)):($signed(p11)))&(~|((&(~p17))?(|(-p12)):(p8?p12:p3))));
endmodule
