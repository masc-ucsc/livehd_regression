module expression_00707(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (3'd7);
  localparam [4:0] p1 = ((~(~((4'd14)?(5'sd2):(-2'sd0))))>=(((5'sd12)?(3'sd1):(4'sd2))>>>(~((2'sd1)^(4'sd0)))));
  localparam [5:0] p2 = (&{1{{2{(~((4'd8)<(-4'sd5)))}}}});
  localparam signed [3:0] p3 = {4{{(3'sd0),(4'd8),(4'd6)}}};
  localparam signed [4:0] p4 = (4'sd6);
  localparam signed [5:0] p5 = {(((4'd11)?(3'd0):(4'd12))?(2'sd0):{{(4'd0),(-5'sd11),(2'd0)},{(5'd2)}})};
  localparam [3:0] p6 = {(-3'sd0),(2'd0),(4'd5)};
  localparam [4:0] p7 = ((((-5'sd2)^~(4'd2))<((4'd15)?(2'd1):(4'd5)))<<<(((-2'sd0)?(3'd1):(5'd23))&(~^(-2'sd0))));
  localparam [5:0] p8 = {(~{3{{3{(-3'sd2)}}}}),{{4{(-3'sd0)}},{(4'd3),(4'd11),(3'd7)},{2{(2'sd0)}}}};
  localparam signed [3:0] p9 = (|((((4'sd6)>(3'd3))<=((-4'sd7)<<(-4'sd1)))^~(&((&(2'd1))?(^(-3'sd2)):((4'd2)^(3'd2))))));
  localparam signed [4:0] p10 = (((4'd4)?(2'sd0):(-5'sd15))?(~&(|((5'd6)?(4'sd7):(-5'sd15)))):{(-5'sd9),{3{(-2'sd0)}}});
  localparam signed [5:0] p11 = (+(&(-(+(~|{3{(5'd31)}})))));
  localparam [3:0] p12 = (~&(2'sd1));
  localparam [4:0] p13 = (~((((5'd13)/(-3'sd1))%(2'd1))<=(4'sd2)));
  localparam [5:0] p14 = ((3'sd0)+(3'd7));
  localparam signed [3:0] p15 = (!(-3'sd3));
  localparam signed [4:0] p16 = (((2'd1)&(2'd1))?((3'd2)==(-4'sd5)):((2'd2)<<<(-4'sd0)));
  localparam signed [5:0] p17 = ((3'd0)<(-5'sd2));

  assign y0 = (~(~^(~^(b0^p13))));
  assign y1 = (({3{b3}}<=(a3===b3))<({1{(a0>>>a0)}}<<<(b2<=b1)));
  assign y2 = {1{(~|(((3'd1)?(a4?a1:a2):(2'd0))<=$unsigned({2{((b3)&&(-b3))}})))}};
  assign y3 = ((a1>p3)?(p2?p13:p10):(!{2{a2}}));
  assign y4 = ((+(b5?b2:p14))?(a2+b5):(b3-p6));
  assign y5 = {$signed({({b1,a1,b4}===$signed(b3))}),$unsigned(((b5>=p10)!=(b4^~a1)))};
  assign y6 = (~|(-4'sd1));
  assign y7 = (+{(~|(-((a4-b0)!==(b0+b2)))),((|(p17||p2))>=((~&p12)<(p12>>p5)))});
  assign y8 = ((-3'sd0)?((5'sd9)?(2'd3):(3'd7)):(|(3'sd2)));
  assign y9 = {((p1^~b5)),((b1!==b0)),{a1,a1}};
  assign y10 = ((~((~(a3+a3))?(b3!==a2):(a0-b1)))===((!(b1===a0))?(|(+b3)):{a1,a4}));
  assign y11 = {((-3'sd0)!=({(b0&&b4),(5'd25)}>(5'd14)))};
  assign y12 = {(~|(b3==a4)),(|(b4!=a0))};
  assign y13 = $unsigned((&b1));
  assign y14 = (+(^((b1<<b2)?(p1&&a2):(p8|a5))));
  assign y15 = (p6+p12);
  assign y16 = ((+a3)?(a5?a4:a2):{b5,a5,a3});
  assign y17 = ((5'sd11)===(a1));
endmodule
