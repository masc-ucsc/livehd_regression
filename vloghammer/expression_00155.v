module expression_00155(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (3'sd2);
  localparam [4:0] p1 = (((~(2'sd0))^(~|(2'd2)))&&(~&{1{(&(3'sd3))}}));
  localparam [5:0] p2 = (2'd3);
  localparam signed [3:0] p3 = (((5'd17)&&(4'd13))<={{(-5'sd14)}});
  localparam signed [4:0] p4 = ((4'd9)<(2'sd1));
  localparam signed [5:0] p5 = {2{{3{(4'd15)}}}};
  localparam [3:0] p6 = (5'sd6);
  localparam [4:0] p7 = (-{2{(3'sd0)}});
  localparam [5:0] p8 = (((-3'sd0)-(-2'sd1))|((4'd6)^~(2'sd0)));
  localparam signed [3:0] p9 = (4'sd7);
  localparam signed [4:0] p10 = {3{((3'sd2)||(4'sd5))}};
  localparam signed [5:0] p11 = {1{{2{((5'd30)?(4'sd6):(5'd29))}}}};
  localparam [3:0] p12 = (2'd3);
  localparam [4:0] p13 = (((3'd7)/(3'd3))+((5'd17)?(2'd0):(5'd19)));
  localparam [5:0] p14 = (4'd2 * (3'd0));
  localparam signed [3:0] p15 = ((((5'd8)>(-2'sd1))&(~((-4'sd1)-(5'd10))))|(~^(+(&((3'd3)|(-2'sd0))))));
  localparam signed [4:0] p16 = (4'd7);
  localparam signed [5:0] p17 = (!((-3'sd2)<<<((-3'sd0)<(4'd5))));

  assign y0 = {4{{3{p11}}}};
  assign y1 = (-(|((+(4'd2 * $unsigned((a5)))))));
  assign y2 = (6'd2 * {a0,b0,p1});
  assign y3 = (3'sd3);
  assign y4 = (((b3<<<b3)?(-p15):(b0>a2))?{(a4?p14:p8),(+a4),{a5,a5}}:((b2!==a0)>>>(a3>b3)));
  assign y5 = (2'd2);
  assign y6 = {2{((b4<a1)?{1{a3}}:(2'd2))}};
  assign y7 = {1{$unsigned({2{(3'sd0)}})}};
  assign y8 = (((3'd1)?(p2>=a3):(b3<a2))?((^(a4<p0))^(3'd0)):(2'd1));
  assign y9 = (4'd9);
  assign y10 = $unsigned($unsigned((((((a0<<p1)>>>(p17&b2))^((b2&p0)-$unsigned(a5)))||({2{{4{b2}}}}^~((p16^~p15)>>>(a4!=p7)))))));
  assign y11 = ((b2-b0)*(a4|b5));
  assign y12 = ((4'd13)<(2'd3));
  assign y13 = (-5'sd4);
  assign y14 = (4'd3);
  assign y15 = (({b1,b4}<<$signed((~^b4)))>{(+(~(b0?p4:b3)))});
  assign y16 = ((~(5'd2 * (-a0)))===(~&((b1|b5)<=(~^b0))));
  assign y17 = ((~&(~|p16))+{4{b2}});
endmodule
