module expression_00376(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~^(({(4'd5),(-2'sd0)}<=((5'sd13)>(3'd2)))?(~^((~&(-2'sd0))<<<(!(5'd4)))):({4{(4'sd1)}}?(&(3'd3)):{2{(3'd2)}})));
  localparam [4:0] p1 = ({3{(4'd2)}}?((-4'sd6)===(4'sd6)):(!(4'sd5)));
  localparam [5:0] p2 = (^(-3'sd2));
  localparam signed [3:0] p3 = {3{(~^(5'd5))}};
  localparam signed [4:0] p4 = ((3'd0)?{1{((-2'sd1)>>>(3'd6))}}:(-(&(4'd2 * (2'd0)))));
  localparam signed [5:0] p5 = ((2'd0)<<(4'd6));
  localparam [3:0] p6 = ((~^((3'd0)==(2'd1)))/(-5'sd6));
  localparam [4:0] p7 = (!((((3'd7)<<<(5'd11))^{(-2'sd0),(5'sd4)})>=(5'd2 * (3'd4))));
  localparam [5:0] p8 = ((((2'd0)^(5'sd11))|{4{(2'd2)}})<<{4{((-3'sd0)>>>(3'd3))}});
  localparam signed [3:0] p9 = {2{{3{(~(4'd8))}}}};
  localparam signed [4:0] p10 = ({(!{((-2'sd1)?(5'sd6):(2'd2)),(-2'sd0)})}!==(4'sd6));
  localparam signed [5:0] p11 = ((-4'sd3)<(-3'sd2));
  localparam [3:0] p12 = (~^((3'd2)?((4'sd7)?(4'd10):(4'd8)):{(5'd19),(-2'sd0)}));
  localparam [4:0] p13 = (!{1{{1{{2{(+(5'd31))}}}}}});
  localparam [5:0] p14 = (2'sd0);
  localparam signed [3:0] p15 = ((2'd1)?(2'd1):((-4'sd5)?(-5'sd5):(4'd5)));
  localparam signed [4:0] p16 = (-3'sd3);
  localparam signed [5:0] p17 = ((!(+((3'sd1)&&(-2'sd1))))^((&(5'd5))&&((5'sd14)>>>(4'd12))));

  assign y0 = (+$unsigned((-p17)));
  assign y1 = $signed((((p4?p8:b0)>>>(p13))&&((p2||p11)|{1{p0}})));
  assign y2 = (|(4'd3));
  assign y3 = {4{((b5)>$signed(p17))}};
  assign y4 = {{(6'd2 * (p7&&p2)),(~&{(4'd4),(~p4)})}};
  assign y5 = {p9,p8};
  assign y6 = ((((p11<=b4)>>>(p9!=p17))<<<((b5%b0)==(b2<<<a0)))&&(((a2<<b4)<<<(b3/a4))^~((a0===a4)/a3)));
  assign y7 = {4{(|(+a4))}};
  assign y8 = (+(~(-(~&b1))));
  assign y9 = {{$unsigned((~|(!b2))),{{(~a4)}},$unsigned($signed((b3)))}};
  assign y10 = (((p13&b3)^~(~b0))==(!((p12+p4)!={2{a1}})));
  assign y11 = {(4'd14)};
  assign y12 = (!(|((^((+(^(-p17)))<<(!(|(^p2)))))&(-(~&(5'd2 * (a2||p2)))))));
  assign y13 = ((~&(5'd23)));
  assign y14 = {b5,p2,p12};
  assign y15 = (+(-({((3'd7)&&{p2,p2}),{(p5>=b1),(p11&&p9),{p2}}})));
  assign y16 = (($signed(((4'd0)<<(^p13)))|($signed((p5>>p7))&&((3'sd2)))));
  assign y17 = (b0-p13);
endmodule
