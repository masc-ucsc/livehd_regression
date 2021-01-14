module expression_00761(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (+((4'sd0)<<((|{(4'd7)})<((2'sd1)>>(-5'sd7)))));
  localparam [4:0] p1 = ({{(2'sd0),(2'd2),(3'd6)}}?((2'd1)>>>(3'd3)):((-4'sd7)|(-5'sd14)));
  localparam [5:0] p2 = (-((((4'sd6)/(2'd3))||(!(2'd3)))&(~&(((2'sd1)>=(4'sd1))|((4'sd0)>=(-4'sd1))))));
  localparam signed [3:0] p3 = ((((5'd19)^(-5'sd3))&((5'd31)&&(-4'sd6)))!==(((5'd1)>(-2'sd1))<<<((-5'sd13)||(5'sd13))));
  localparam signed [4:0] p4 = {{2{{2{(5'd1)}}}}};
  localparam signed [5:0] p5 = (2'd2);
  localparam [3:0] p6 = {{((-4'sd0)<(2'd3))},{((-4'sd0)^(5'sd15)),{(2'd2),(5'sd0),(-5'sd2)}},(((-5'sd15)>(-4'sd6))<<{(-2'sd1)})};
  localparam [4:0] p7 = ({1{(~|(4'd13))}}?((5'sd0)^~(3'sd0)):((4'd9)||(3'd1)));
  localparam [5:0] p8 = ((^((4'd5)?(4'd13):(-5'sd10)))||{4{(5'sd6)}});
  localparam signed [3:0] p9 = {3{{4{(2'sd1)}}}};
  localparam signed [4:0] p10 = ((((-4'sd0)^(-3'sd0))-((-2'sd0)^~(3'd1)))+(((3'd1)>>>(3'd2))|((3'd6)?(2'd0):(3'd2))));
  localparam signed [5:0] p11 = ((3'sd1)>>>(4'd9));
  localparam [3:0] p12 = ((((2'sd0)>>>(5'd4))>>>((5'd10)>>>(2'd1)))?((5'd24)?(5'sd5):(-4'sd7)):((3'sd2)?(3'sd2):(4'd8)));
  localparam [4:0] p13 = ({2{(5'd14)}}&&{2{(2'd2)}});
  localparam [5:0] p14 = {(5'sd11)};
  localparam signed [3:0] p15 = {((2'd1)?(5'd5):(5'd8)),{3{(3'd6)}},(6'd2 * (4'd0))};
  localparam signed [4:0] p16 = ((((3'd2)>>(2'sd1))?((-5'sd10)/(2'sd0)):((-2'sd0)?(4'd8):(5'd23)))!=((!((2'sd0)?(2'd3):(3'd1)))<<((-3'sd2)|(-4'sd4))));
  localparam signed [5:0] p17 = (4'sd4);

  assign y0 = ({4{p15}}<={3{a4}});
  assign y1 = (~(((~^b3)?{4{b2}}:(b3?b4:b4))?$unsigned((((a4-a4)<$signed(b3)))):((a0<<<a3)!==(b0?a0:b1))));
  assign y2 = {({((p16+p3)>{p10})}!={(b4!==b1),{p3,p17}}),(((b2<a4)!==(a3!==b2))<={(6'd2 * (a1!==b0))})};
  assign y3 = (2'd0);
  assign y4 = (~^{4{(~|{3{a5}})}});
  assign y5 = {4{(5'd2 * (a0?p12:p7))}};
  assign y6 = ((4'd2 * (-(~|a2)))===((a1-b4)>>>(&{3{a4}})));
  assign y7 = ({2{(^(a0<<b1))}}^((p15?a4:a5)>=(~&(&(a3==b4)))));
  assign y8 = (b5-a4);
  assign y9 = ((&((p4?p4:a0)&(p1==p2)))-((|p0)!=(p7?p16:a3)));
  assign y10 = {4{p10}};
  assign y11 = (&{((~^a5)<<<(5'd2 * a0))});
  assign y12 = ((~((~&(b4==b1))%a5))-(((&a2)>>>(~^a3))&&((-a1)<<<(a2!==a5))));
  assign y13 = $signed($signed((|(|({(&((|(b5))!==(b5>=b2)))}&$unsigned((-((b0|b2)!==(~&(-a4))))))))));
  assign y14 = (4'sd4);
  assign y15 = (~{$signed({{b2},$signed(a4)}),(+(4'd5))});
  assign y16 = (~^p11);
  assign y17 = ((p13<<p15)>>(p8?p9:p10));
endmodule
