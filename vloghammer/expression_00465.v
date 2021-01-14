module expression_00465(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (({2{(-5'sd13)}}!==((4'd8)>>(-5'sd9)))!=(-((-3'sd2)?(-2'sd0):(4'd12))));
  localparam [4:0] p1 = (5'sd3);
  localparam [5:0] p2 = ((((4'sd6)|(4'sd7))>((5'd17)>>>(-5'sd4)))!=((2'sd0)<((-2'sd1)+(-2'sd0))));
  localparam signed [3:0] p3 = (|(-(+(~&(4'sd6)))));
  localparam signed [4:0] p4 = ((((3'd3)!==(4'sd6))&&{3{(2'd1)}})||({4{(2'sd0)}}!=={3{(2'd1)}}));
  localparam signed [5:0] p5 = {(!{4{(3'sd2)}})};
  localparam [3:0] p6 = (~&(~(5'd22)));
  localparam [4:0] p7 = (((3'd5)==(4'd15))>((-2'sd0)<<<(-5'sd8)));
  localparam [5:0] p8 = (5'd2 * ((3'd0)!==(5'd10)));
  localparam signed [3:0] p9 = ((5'd2 * (-((5'd8)?(4'd5):(4'd15))))<=(((-4'sd7)?(5'sd12):(-4'sd0))?(~^(~(2'sd0))):((-4'sd0)?(2'd2):(5'd31))));
  localparam signed [4:0] p10 = (-2'sd0);
  localparam signed [5:0] p11 = (~^((|(4'd3))&(((-4'sd1)>>>(4'd3))=={(4'sd4),(-3'sd3)})));
  localparam [3:0] p12 = ({4{((4'sd4)<<(3'd6))}}!==(((5'd20)<=(5'd14))<<<((2'd0)>=(-2'sd0))));
  localparam [4:0] p13 = (~&(((^(-5'sd5))>((5'd23)<=(2'sd1)))-(~|(~{4{(2'd3)}}))));
  localparam [5:0] p14 = (+(~|(!((^((-3'sd3)^~(2'd2)))==(~&(!((4'd0)||(-3'sd1))))))));
  localparam signed [3:0] p15 = {2{{4{(3'd3)}}}};
  localparam signed [4:0] p16 = {3{{1{(2'sd0)}}}};
  localparam signed [5:0] p17 = (4'd8);

  assign y0 = ((b1<<a3)!==((6'd2 * b1)));
  assign y1 = {{4{p2}},{{b5,p15,p6}},{3{(p0<p12)}}};
  assign y2 = (b3&a1);
  assign y3 = (5'sd5);
  assign y4 = ((p2?p0:p13)?(b1===b2):{4{p8}});
  assign y5 = {(-5'sd11),(^((~&b0)<=(-5'sd7))),((b4^~b0)^(b5-a0))};
  assign y6 = (4'd2 * {b1,a1,p8});
  assign y7 = ((p5?b4:p7)!=(p9>>>p6));
  assign y8 = (^(a1<b2));
  assign y9 = (((p1?b5:p17)?(a4?a1:b2):(p10>>p11))<((5'd10)?(p11?b5:p3):(a0?p11:p5)));
  assign y10 = ((($signed(p6)))>>((p8?p3:p15)));
  assign y11 = ((-({b1,a1}==={a5}))+((6'd2 * b0)-{(p1&&p9)}));
  assign y12 = {4{(a4?b0:a4)}};
  assign y13 = (~|{($unsigned(b2))});
  assign y14 = {(p12?b4:p5),(5'd29),$unsigned($unsigned((4'sd3)))};
  assign y15 = (-4'sd7);
  assign y16 = (2'd0);
  assign y17 = ({a0,b2,b4}!==(^(a1|a1)));
endmodule
