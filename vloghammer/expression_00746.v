module expression_00746(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((4'd12)<(2'd3))<{1{((2'sd0)|(4'd9))}});
  localparam [4:0] p1 = (|(+((^(~^(-3'sd1)))/(4'sd3))));
  localparam [5:0] p2 = (((3'sd3)||(3'sd0))!=((5'sd11)^(5'd9)));
  localparam signed [3:0] p3 = (^{{(2'd2),(~&(3'd6))},(|(5'd26)),(2'd0)});
  localparam signed [4:0] p4 = ((4'd2 * (2'd1))^({(-5'sd4)}!==((-2'sd1)>>(4'd12))));
  localparam signed [5:0] p5 = (((3'd2)^(3'd3))>>>((2'd0)>(2'sd0)));
  localparam [3:0] p6 = {1{{4{(4'sd1)}}}};
  localparam [4:0] p7 = (^(2'sd0));
  localparam [5:0] p8 = (^(((2'd2)?(-2'sd0):(4'sd1))?(-(2'sd0)):((-5'sd7)?(4'd13):(3'd4))));
  localparam signed [3:0] p9 = ({3{(3'd1)}}>((3'd5)==(2'sd1)));
  localparam signed [4:0] p10 = (^(^(&(~(&(~^(^(!(+(((5'd10)%(5'd31))>>((2'd0)>>(3'd1))))))))))));
  localparam signed [5:0] p11 = ((3'd6)&&((3'd2)+(5'd3)));
  localparam [3:0] p12 = (((|(4'sd2))?(~&(5'sd5)):((3'd2)^~(4'sd4)))-((~(-5'sd11))&&(~^(4'd3))));
  localparam [4:0] p13 = ((-5'sd3)?(-4'sd5):(5'd9));
  localparam [5:0] p14 = (((4'd9)!=(3'd5))<((4'd8)?(-3'sd2):(4'd7)));
  localparam signed [3:0] p15 = (^{3{(~&{2{((4'sd2)<=(5'sd10))}})}});
  localparam signed [4:0] p16 = {((-2'sd0)==(^((-2'sd0)<=((-2'sd0)!==(2'd1)))))};
  localparam signed [5:0] p17 = (-3'sd0);

  assign y0 = (~b4);
  assign y1 = (2'd1);
  assign y2 = ((5'd2 * (+(b1===b2)))|((-(&p9))%b2));
  assign y3 = (|(&(~^($unsigned(((3'd2)&&(4'd12)))<<<((p0)>=(p6))))));
  assign y4 = {{b2,p16,p8}};
  assign y5 = $unsigned((p14>>>p2));
  assign y6 = {({p16,p4,p3}?{(p6<=b5)}:(p12?p11:a1))};
  assign y7 = ((~&(3'd6))!=(2'sd0));
  assign y8 = ((+($signed(p4)<<<(b3>=p8)))<=(+(~&(&(a3<<b5)))));
  assign y9 = (~|((~^(+({p8,p14,p15}>>(~{p9,p5,p3}))))&{(-(p15?p5:p9)),{p16,p6,p4},(p7&&p8)}));
  assign y10 = ({(p1+p3),(p17>>>p5),{p17}}!=(-(^(!{3{p14}}))));
  assign y11 = {{a0,a0},(a0^p1),(p9?a0:p11)};
  assign y12 = $unsigned({2{(~&(~&((b2>=a2)===(a0>a4))))}});
  assign y13 = (6'd2 * {a2,a2});
  assign y14 = ({{3{(4'd9)}}}?(-5'sd12):({4{b0}}?(a2?b0:a4):{1{a3}}));
  assign y15 = (((a1%b3)>(a2===b0))^~((b0>>a2)>(4'sd2)));
  assign y16 = ((3'd3)^~((b2?b0:p4)?(3'd0):(a3?p1:a5)));
  assign y17 = (~{{(|(~&(^($signed(p0)>>{p11,p10}))))},{(&(~|p10)),(p4>>>p17),{(~&p8)}}});
endmodule
