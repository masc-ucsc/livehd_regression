module expression_00283(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (2'd0);
  localparam [4:0] p1 = (((2'd1)^(4'sd5))/(2'sd0));
  localparam [5:0] p2 = (((~&((2'sd1)!=(5'd11)))>=(!{2{(-4'sd3)}}))&{1{(~^({4{(3'd2)}}&((2'd1)==(3'd1))))}});
  localparam signed [3:0] p3 = {(~{(5'd28),(3'sd1)}),((-5'sd5)<<<(4'd1)),((3'sd2)?(4'sd0):(3'sd1))};
  localparam signed [4:0] p4 = (5'd19);
  localparam signed [5:0] p5 = {{{(3'd7),(5'sd13),(2'd2)},(~^(3'sd0))},((3'sd0)?(-2'sd0):(3'd1))};
  localparam [3:0] p6 = ((~&((3'd5)-(-3'sd3)))%(5'sd4));
  localparam [4:0] p7 = ((&(-3'sd3))!==(~(4'd0)));
  localparam [5:0] p8 = (2'sd0);
  localparam signed [3:0] p9 = (~^(!(+{(4'd4),(2'd2)})));
  localparam signed [4:0] p10 = {{(4'd7),{(4'd4)}},{{(2'sd1)},{(3'd6),(5'd19),(-4'sd4)},{(4'sd5),(-3'sd2)}},(-5'sd6)};
  localparam signed [5:0] p11 = {{3{{{{3{(4'd10)}}}}}}};
  localparam [3:0] p12 = ((((5'd5)?(2'd3):(3'd1))?{1{(3'sd1)}}:{4{(-4'sd5)}})!=(~&((-(4'sd7))?((2'sd0)?(-3'sd2):(-3'sd2)):{3{(5'd20)}})));
  localparam [4:0] p13 = (5'd14);
  localparam [5:0] p14 = (2'd3);
  localparam signed [3:0] p15 = (-(~^(|(4'sd0))));
  localparam signed [4:0] p16 = {((5'd30)?(5'sd11):(3'd5)),((3'sd3)||(2'd1)),(4'sd6)};
  localparam signed [5:0] p17 = (((&(~|(2'sd1)))<<<((5'd16)%(-4'sd6)))<(~(!(~|(~^((4'd4)/(3'd5)))))));

  assign y0 = (&(~|(~(~&{4{(a5>=b2)}}))));
  assign y1 = (-(^(!(-(+(4'd10))))));
  assign y2 = ($signed((b0<=a1))?(a1&&b3):(b5<<<p8));
  assign y3 = (^({3{$signed(p15)}}|{4{a3}}));
  assign y4 = ((5'sd7)>>((p0?b2:b1)^{4{p2}}));
  assign y5 = ({p15,b2}?(^(p13>>>p5)):(b0+p3));
  assign y6 = ((4'd13)?(&{4{p15}}):(~(3'd6)));
  assign y7 = (2'sd1);
  assign y8 = (3'sd2);
  assign y9 = $unsigned((6'd2 * (b1!==b2)));
  assign y10 = (a3?a3:b1);
  assign y11 = (((2'd1)?(-5'sd0):(p1?a0:b2))?{(a3<=b2),(4'd2),{b1,a5,p16}}:(3'sd0));
  assign y12 = (a3+p14);
  assign y13 = (~(~^(+{(!{(^{{p10},(~&p14)})})})));
  assign y14 = {4{{2{(~&a1)}}}};
  assign y15 = (4'sd3);
  assign y16 = (3'd2);
  assign y17 = ($signed((-3'sd1))!=(-4'sd7));
endmodule
