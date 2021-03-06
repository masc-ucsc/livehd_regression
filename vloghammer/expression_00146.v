module expression_00146(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (5'd17);
  localparam [4:0] p1 = (~|(~&{2{(3'd5)}}));
  localparam [5:0] p2 = {((-2'sd1)==(3'd2)),(&(~&(3'd2)))};
  localparam signed [3:0] p3 = (3'd4);
  localparam signed [4:0] p4 = ({(5'd25),(-5'sd4),(-2'sd1)}?((-2'sd1)?(3'd2):(-3'sd0)):{4{(-4'sd6)}});
  localparam signed [5:0] p5 = {2{((2'd3)^~(4'd11))}};
  localparam [3:0] p6 = (-2'sd1);
  localparam [4:0] p7 = (|(-4'sd7));
  localparam [5:0] p8 = (+(+{4{(~|(-4'sd5))}}));
  localparam signed [3:0] p9 = ((((5'd29)^(-5'sd14))>>((-4'sd6)===(-5'sd7)))>>>(((-2'sd0)*(2'd0))||((2'd0)/(5'd19))));
  localparam signed [4:0] p10 = (((-2'sd0)>>>(5'sd6))&((-2'sd0)<=(2'd3)));
  localparam signed [5:0] p11 = ((((2'd0)>(-3'sd2))&&(4'd3))^~(^((4'd7)-(3'd5))));
  localparam [3:0] p12 = ((2'd3)>=(-3'sd2));
  localparam [4:0] p13 = (|(2'd0));
  localparam [5:0] p14 = {1{{4{((4'd5)?(5'sd13):(3'sd1))}}}};
  localparam signed [3:0] p15 = (^{(!{4{(4'd7)}}),{2{(|(3'd5))}},(~&(~(~^(5'd19))))});
  localparam signed [4:0] p16 = (((5'd10)?(5'sd10):(-4'sd5))?(+(+(~&(4'sd5)))):((2'sd0)?(5'sd6):(4'd9)));
  localparam signed [5:0] p17 = ((4'd0)<<(2'sd0));

  assign y0 = ((a1|b5)?(b3<b0):(a2?a5:b3));
  assign y1 = ({a2,p12}==(3'd4));
  assign y2 = {{{(b1&&p12),(b5!==a2)}},((p6<<<p1)?(p6?p4:p10):(p0?b3:p17))};
  assign y3 = {(~&(5'd22)),{{p15,p3},(p11?p0:p12),(p9<=a3)}};
  assign y4 = {(+(^p6))};
  assign y5 = ({(~(2'd2))}<<<((4'sd5)+(a1!=b2)));
  assign y6 = ((|(3'sd3))<<<(4'sd7));
  assign y7 = (p5<<p5);
  assign y8 = {1{(~{2{a2}})}};
  assign y9 = (&((~|$unsigned((&((a4)))))&(~&($unsigned({2{a3}})))));
  assign y10 = $signed((!(-2'sd0)));
  assign y11 = ((b5^~a3)+{b2,p4,a2});
  assign y12 = ({1{((|((p14|p14)^~(5'd18)))-(-(5'sd9)))}});
  assign y13 = $signed((((((~^b1)>>>(+b0)))?((!(a2?p9:p3))>=(^(p17==p0))):((p1?p2:b5)<<<{2{p17}}))));
  assign y14 = (5'd13);
  assign y15 = (|(|({2{(b0?p2:a3)}}-{3{(4'd15)}})));
  assign y16 = (!(+((4'd8)===$unsigned((a0-b3)))));
  assign y17 = (^(((&(p14?p17:b2))>>(5'd23))+((p3?p14:a3)?(~^b5):(|b5))));
endmodule
