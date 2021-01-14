module expression_00974(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (-(((~|(4'd8))|(2'd3))||((-(^(5'sd9)))%(-2'sd0))));
  localparam [4:0] p1 = ({1{{2{(2'sd0)}}}}?{1{((5'd25)|(4'sd4))}}:(5'sd2));
  localparam [5:0] p2 = {(-2'sd0)};
  localparam signed [3:0] p3 = ((+((4'd0)?(-5'sd9):(3'd7)))?((!(-3'sd3))+((4'd1)+(4'd9))):((~|(-4'sd6))^~((2'sd0)?(3'd1):(3'd6))));
  localparam signed [4:0] p4 = ({1{(((-2'sd0)?(5'sd9):(-5'sd9))<<<{(-3'sd1),(-2'sd1)})}}^~{1{{((2'sd0)?(2'sd0):(-5'sd9)),((3'd2)?(-2'sd0):(-2'sd1))}}});
  localparam signed [5:0] p5 = {{(5'd21),(2'd1)},((-4'sd0)?(5'd3):(2'sd1))};
  localparam [3:0] p6 = ((5'd31)===(2'd3));
  localparam [4:0] p7 = (~|(~&(&{(-(~^((3'sd3)?(3'd1):(5'sd14)))),(~|{(|(2'd1)),((3'd3)?(4'sd1):(2'sd1)),(~|(-5'sd8))})})));
  localparam [5:0] p8 = {(&({(~&(3'sd1))}>=((-3'sd1)^(4'd5)))),(((2'sd0)?(3'sd2):(5'sd2))?(!(-2'sd1)):{(-5'sd3),(5'd27)})};
  localparam signed [3:0] p9 = ((2'd1)?(2'd3):(5'd11));
  localparam signed [4:0] p10 = (2'sd1);
  localparam signed [5:0] p11 = ((((3'sd2)^(3'd3))>((3'd7)?(5'd0):(-4'sd4)))<(((5'sd2)!==(5'd30))?((-4'sd2)?(-5'sd1):(3'd2)):((4'sd5)&&(2'd1))));
  localparam [3:0] p12 = ((5'd21)>>(4'd13));
  localparam [4:0] p13 = (~|(~^(~^((-4'sd1)?(4'sd3):(4'sd2)))));
  localparam [5:0] p14 = (!(5'd0));
  localparam signed [3:0] p15 = (-3'sd3);
  localparam signed [4:0] p16 = {1{(-5'sd8)}};
  localparam signed [5:0] p17 = ((2'sd1)<<<(3'd4));

  assign y0 = $signed((+(-(((~|(p10*p9))<<<(p16?p15:a4))||((p14||p2)?(b3%p5):(b0<<p17))))));
  assign y1 = $unsigned((5'd20));
  assign y2 = (3'sd0);
  assign y3 = (2'sd1);
  assign y4 = {p5,p6};
  assign y5 = (b3?a2:a5);
  assign y6 = (&{4{{2{p7}}}});
  assign y7 = (4'd6);
  assign y8 = ((b5!==b5)<=(p5^~p0));
  assign y9 = ({{{(~p4),(+p8),(a1|p6)}},(~^((!(+p11))<<<(p12<<<p9)))});
  assign y10 = ($unsigned($signed((~(-(~^(~|$signed(((~&b4))))))))));
  assign y11 = (5'd11);
  assign y12 = {({4{b4}}<<(+(p6>p15)))};
  assign y13 = (~|(2'd1));
  assign y14 = {3{$signed(p15)}};
  assign y15 = (5'd19);
  assign y16 = (({3{a2}}>>(4'd2 * a2))==((p0>>>a1)==(a0>>b4)));
  assign y17 = (~&(((^(3'd4))||(a2!==a0))===(2'd3)));
endmodule
