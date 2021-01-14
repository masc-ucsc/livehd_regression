module expression_00378(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~(((-5'sd5)?(|(-5'sd3)):((-2'sd0)^~(-2'sd1)))|((3'sd0)?((4'sd0)-(3'd6)):(~(-5'sd14)))));
  localparam [4:0] p1 = (-5'sd12);
  localparam [5:0] p2 = {1{(4'sd3)}};
  localparam signed [3:0] p3 = (3'sd0);
  localparam signed [4:0] p4 = ((((-5'sd12)^~(5'sd4))<<<((2'sd1)&&(-5'sd9)))^~(((2'd0)!==(5'd9))>>((4'd11)!=(5'd0))));
  localparam signed [5:0] p5 = (({(3'd4),(2'd0),(5'd14)}<<<(-2'sd0))>>(((-4'sd2)>>(5'd7))<<<((4'd5)^~(2'd3))));
  localparam [3:0] p6 = {4{((4'sd6)|(2'd3))}};
  localparam [4:0] p7 = (4'd10);
  localparam [5:0] p8 = ((5'd18)<(((3'd6)<<<(-4'sd0))&&(2'sd0)));
  localparam signed [3:0] p9 = (((4'd11)?(4'sd0):(5'd24))>>(2'd2));
  localparam signed [4:0] p10 = {3{(5'd31)}};
  localparam signed [5:0] p11 = ((~|(4'd2 * (2'd2)))>>>((5'd14)>=(-3'sd3)));
  localparam [3:0] p12 = ((5'd26)||(2'd0));
  localparam [4:0] p13 = ((~^((3'd7)<<<(5'd7)))>>>(-(4'sd5)));
  localparam [5:0] p14 = ({4{((4'd11)!=(3'd1))}}<<((~(~&(2'd0)))+{3{(2'd1)}}));
  localparam signed [3:0] p15 = {4{((3'sd2)||(2'd2))}};
  localparam signed [4:0] p16 = (~|{3{(4'sd5)}});
  localparam signed [5:0] p17 = ((-(+(2'sd1)))?(-((4'd4)?(-3'sd3):(4'd10))):(|(+((4'd4)?(3'd1):(3'd6)))));

  assign y0 = {(&(!p11)),(p10?p14:p3),(p7|p17)};
  assign y1 = (5'd0);
  assign y2 = (b0?b4:a3);
  assign y3 = ((a0>a4)?(b4?b0:a0):{3{b5}});
  assign y4 = (4'sd1);
  assign y5 = {2{p10}};
  assign y6 = ((((b0?a1:a1)<=(b5?a1:b2)))===((a3+b2)?(~&(b2^b3)):(~(a3<<b0))));
  assign y7 = {2{((b5?p11:p6)-{4{p12}})}};
  assign y8 = (-3'sd1);
  assign y9 = {1{{1{(+$unsigned(p12))}}}};
  assign y10 = ((a1*b1)^~(^(b5<a4)));
  assign y11 = (((^a1)?(b2&b4):(a4?a3:b0))>=(~|((~|b2)>=(^a4))));
  assign y12 = ((!((5'd27)<((^p1)&(b1))))||$unsigned((~|(5'd17))));
  assign y13 = (({1{{1{(|a0)}}}}<({a5,b4,b3}^(~^a4)))&{3{{a1,b4}}});
  assign y14 = (~(a4|b3));
  assign y15 = ((p3>=p3)>(a2&&a2));
  assign y16 = (({p12,b0,p12}>>>{p10,p0})||((p16<<<p13)>>{a4}));
  assign y17 = {2{(!((|p9)>>>(p3>a5)))}};
endmodule
