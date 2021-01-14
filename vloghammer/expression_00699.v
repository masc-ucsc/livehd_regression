module expression_00699(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (3'd2);
  localparam [4:0] p1 = ({2{((3'd5)>>>(3'sd0))}}>>((!(-2'sd0))^(~|(-4'sd0))));
  localparam [5:0] p2 = ({2{((-3'sd3)>>>(2'd2))}}&&((!((5'd5)==(-3'sd0)))^~((-3'sd2)^(-2'sd1))));
  localparam signed [3:0] p3 = (((-4'sd0)!=(4'd12))!=={(3'sd0),(4'sd4),(5'd16)});
  localparam signed [4:0] p4 = ((^(3'sd0))?(&(4'sd6)):((-4'sd1)>(-4'sd0)));
  localparam signed [5:0] p5 = ((+(((4'sd1)!=(4'd14))<<<{1{{1{(-5'sd9)}}}}))>=(|{3{(-(3'd7))}}));
  localparam [3:0] p6 = ({(-5'sd11),(4'd12),(2'sd1)}&&((5'd11)&&(2'sd1)));
  localparam [4:0] p7 = (&((+(^(-5'sd14)))/(4'd9)));
  localparam [5:0] p8 = (-5'sd12);
  localparam signed [3:0] p9 = (-3'sd2);
  localparam signed [4:0] p10 = {(-3'sd2),(2'd2)};
  localparam signed [5:0] p11 = (3'sd1);
  localparam [3:0] p12 = ({4{{1{(3'd7)}}}}&({(-5'sd3),(4'd8),(5'd6)}>>>{(5'd14),(-3'sd2),(3'd1)}));
  localparam [4:0] p13 = {1{(4'd3)}};
  localparam [5:0] p14 = {3{(&(~^{3{(-3'sd3)}}))}};
  localparam signed [3:0] p15 = (~|(({2{(-5'sd13)}}>>(^(3'sd0)))?(!(~|(^(2'sd0)))):((&(3'sd2))===(|(-4'sd1)))));
  localparam signed [4:0] p16 = (3'sd2);
  localparam signed [5:0] p17 = (~&(~|(^(-3'sd1))));

  assign y0 = (((b3&b0)?(a2?b2:a0):(a5!==a2))==({1{b1}}^~{b1,a5}));
  assign y1 = (a2==a0);
  assign y2 = (+{2{p17}});
  assign y3 = {(4'd2 * {p13,b2,b2}),(~|(|((b1>a1)+(~&a1)))),(!((a1^~a0)>>(b5?b4:a1)))};
  assign y4 = ((p0<<<b0)%p2);
  assign y5 = (-((4'd2 * (a2>>>b2))!==(~^((&b0)>(a2>a0)))));
  assign y6 = $signed((!(~|(4'd2 * (p2?p12:p8)))));
  assign y7 = (3'd2);
  assign y8 = ((b1===a0)?(a3%b5):(a5?b1:a0));
  assign y9 = {(b0),(+a1),{2{a4}}};
  assign y10 = (((~|a4)?(a1?b4:a5):(+b0))?(~&((b5?b0:b0)?(a1?b1:a3):(p12?a5:a3))):((a4?b0:b3)?(~|a4):(a5?p0:b2)));
  assign y11 = (~({{{(-5'sd6)}}}-(&(2'sd1))));
  assign y12 = {(4'sd4)};
  assign y13 = (3'sd2);
  assign y14 = ((~^(2'sd0)));
  assign y15 = (((4'd2 * (a0|a0))===((b0===b4)==(a5&&a1)))&&((p2&&b2)/p5));
  assign y16 = {3{(-{1{(|{p11,b0,p17})}})}};
  assign y17 = ({{(b3||p12),(2'd1)},((5'sd10)<<(p16?p16:p12))}<<<(5'd8));
endmodule
