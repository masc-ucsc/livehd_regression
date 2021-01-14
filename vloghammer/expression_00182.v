module expression_00182(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((5'sd11)?(3'd6):(2'd0));
  localparam [4:0] p1 = (({4{(5'd16)}}?((-3'sd1)?(5'sd13):(2'd2)):(5'd19))<<<(5'd24));
  localparam [5:0] p2 = (((~^(5'd18))^~(|(5'd31)))<(~&(-(|(4'sd6)))));
  localparam signed [3:0] p3 = (4'sd7);
  localparam signed [4:0] p4 = (5'd2 * {3{(3'd2)}});
  localparam signed [5:0] p5 = {1{((5'd12)?(2'sd0):(-2'sd1))}};
  localparam [3:0] p6 = (((2'd3)>=(5'd18))>>(-2'sd0));
  localparam [4:0] p7 = ({(-5'sd9)}-((3'sd2)>(4'd15)));
  localparam [5:0] p8 = (+(&((((2'd1)>(2'sd1))-(|(-2'sd1)))==(-{1{(~^((2'd0)!=(-4'sd3)))}}))));
  localparam signed [3:0] p9 = (-4'sd4);
  localparam signed [4:0] p10 = (((4'd10)?(3'd4):(-2'sd0))>>>(((-4'sd4)<<<(4'sd4))==((-3'sd1)>=(5'd4))));
  localparam signed [5:0] p11 = (((2'd1)?(5'd2):(3'sd3))?((5'd24)<=(4'd14)):((5'd13)>=(5'd22)));
  localparam [3:0] p12 = (~^{2{((|(&(5'd1)))<<<{4{(4'd10)}})}});
  localparam [4:0] p13 = {2{(((4'd7)?(2'sd1):(2'd1))>>>((4'd6)?(-4'sd7):(-2'sd0)))}};
  localparam [5:0] p14 = (~&((~(3'sd0))?(~^(5'd5)):(|(2'sd0))));
  localparam signed [3:0] p15 = (((4'sd5)?(-3'sd0):(2'd3))?{2{((-4'sd1)<=(5'd15))}}:{4{(5'sd10)}});
  localparam signed [4:0] p16 = (2'sd0);
  localparam signed [5:0] p17 = ((((&(3'd4))+((-2'sd1)|(-2'sd0)))!=={((5'sd6)|(3'd1)),{(2'd1),(4'sd1),(5'sd8)}})!==(~&({(5'sd7),(5'sd4),(3'sd0)}?((4'd14)>(4'd0)):{(4'sd6),(-3'sd1)})));

  assign y0 = (+{{{a3,a5}},(3'd4),(3'sd1)});
  assign y1 = {1{{((^(p17!=b3))>>>(p6-a0)),{3{(b1<=a1)}},(+(5'd2 * (b0!==a2)))}}};
  assign y2 = $unsigned({(5'd2 * (p0^~b0))});
  assign y3 = ({4{{a4}}}<<<({{1{b0}}}<<(b0^~a4)));
  assign y4 = {1{{3{(2'd1)}}}};
  assign y5 = (~|((-(~&(~(b5&&b3))))&((b2>>p0)&&(b3<<<p12))));
  assign y6 = ({a4,b0,a5}^{2{a2}});
  assign y7 = (2'd1);
  assign y8 = ((~(~(2'sd0))));
  assign y9 = $unsigned((((-(p4/b1)))!=((p12)>$unsigned(p2))));
  assign y10 = ((a3-a1)?(a0?b1:p16):(~^a2));
  assign y11 = ((((a1===b1)<<<{1{b5}})&((a5&&b2)!=(b3<<b1)))<=(({3{a3}}!==(!b1))>>>(-({2{b1}}))));
  assign y12 = ((({2{p5}}>>>(p5^p5))!=(-4'sd7))<<(((p10>>p3)>>(b3!==a1))||{{p15},{4{p1}},(a3<p15)}));
  assign y13 = {((p12>>a5)>=(a0!==b3)),(5'd18),((p1<<<p8)<(a4===b3))};
  assign y14 = (~|(~^{(~&(4'sd6)),$unsigned((p12>=p16)),(a1!==b4)}));
  assign y15 = {1{{4{b2}}}};
  assign y16 = (3'sd2);
  assign y17 = {3{{4{a1}}}};
endmodule
