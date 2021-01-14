module expression_00114(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{(4'sd0)}};
  localparam [4:0] p1 = (|((-5'sd1)?(2'd2):(4'sd7)));
  localparam [5:0] p2 = (((5'd12)>(5'sd6))*((-5'sd2)<=(2'd1)));
  localparam signed [3:0] p3 = ({1{(!((2'd1)?(5'sd5):(-3'sd0)))}}&(-5'sd13));
  localparam signed [4:0] p4 = (((5'sd0)<(3'sd1))+(~&(-2'sd1)));
  localparam signed [5:0] p5 = (-2'sd0);
  localparam [3:0] p6 = (~|(~|(^(!(-((((2'd0)<<(3'd2))|(~&(3'd0)))?((4'sd4)?(-2'sd0):(3'sd1)):(|((3'd0)^~(4'd9)))))))));
  localparam [4:0] p7 = ((4'd1)?(3'd3):((4'd4)?(3'sd1):(-4'sd5)));
  localparam [5:0] p8 = {2{{2{(-2'sd0)}}}};
  localparam signed [3:0] p9 = {({(((-2'sd0)+(4'd13))^~((3'sd2)>=(4'd4)))}+(((3'd3)==(4'd3))>((5'd31)<<<(2'd0))))};
  localparam signed [4:0] p10 = {4{(5'sd9)}};
  localparam signed [5:0] p11 = ((((3'd0)?(5'd6):(-3'sd2))?(&(-4'sd0)):(!(5'sd5)))^(((4'd14)?(5'd21):(3'd0))/(4'd10)));
  localparam [3:0] p12 = (!{2{(2'd3)}});
  localparam [4:0] p13 = ((3'sd0)===(-2'sd1));
  localparam [5:0] p14 = (5'd2 * {1{{2{(4'd5)}}}});
  localparam signed [3:0] p15 = (6'd2 * ((4'd5)/(4'd4)));
  localparam signed [4:0] p16 = ((3'sd3)^(-5'sd7));
  localparam signed [5:0] p17 = (-4'sd0);

  assign y0 = $unsigned(($signed(($signed(($unsigned({p11,p5,a3})<($signed({a0,a5}))))^~({{a5,a5,p0},{a4,b4}}<<$signed({a0,p8}))))));
  assign y1 = ({1{((b0^b0)>=(a3||p12))}}>(4'd6));
  assign y2 = ({p16}?(p17?p4:p6):(p15?p16:b0));
  assign y3 = {(p2>>>p8)};
  assign y4 = {{({{a4,b0}}>>({a5,b0,p14}|(b5<<b5))),{(a0^b0),{b4,a1,b5},{a0,b2,b3}}}};
  assign y5 = {b3,b5};
  assign y6 = ((b1?p12:b2)^~(p12?p0:a2));
  assign y7 = ((6'd2 * a2)-(!a5));
  assign y8 = (~&{p11,a3});
  assign y9 = {(&(~&(p13<<<b0))),{(|(|b5))},({b2,b1,b3}<{b3,b2,a5})};
  assign y10 = {b3,a2};
  assign y11 = ((^(((p9<<p13)+{4{p16}})<(4'd14)))+(((b5?b0:p12)?(p12+a2):(p6<a0))+((p13?p12:p13)>=(4'd6))));
  assign y12 = (&p15);
  assign y13 = (~|$signed($signed((3'sd3))));
  assign y14 = (((~|p10)=={4{a3}})>>({1{p3}}>={4{p3}}));
  assign y15 = (2'sd1);
  assign y16 = (((p11?p17:p11)>=$signed((p4?p9:b5)))?((p5!=a0)?(p5?p0:p0):(p6?p12:a0)):$signed($signed((a2?a1:p4))));
  assign y17 = $unsigned({1{(3'd0)}});
endmodule
