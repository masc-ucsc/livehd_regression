module expression_00515(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {1{{1{(((3'd1)>=(4'd7))?((3'd4)!==(5'd16)):{1{{1{(2'd1)}}}})}}}};
  localparam [4:0] p1 = (2'sd1);
  localparam [5:0] p2 = ((5'd15)?(~|(~|(+(5'sd13)))):(~(2'd0)));
  localparam signed [3:0] p3 = (((4'd3)===(3'sd3))!==(-3'sd1));
  localparam signed [4:0] p4 = (-(+(-5'sd6)));
  localparam signed [5:0] p5 = {3{((4'sd4)<=(2'sd0))}};
  localparam [3:0] p6 = (~&({(+({(3'd4),(2'd0),(5'sd0)}^~{(5'd21),(-4'sd1),(-3'sd2)}))}!=((~^((5'sd3)==(4'sd7)))!=(-(|(5'sd8))))));
  localparam [4:0] p7 = (-4'sd6);
  localparam [5:0] p8 = ((5'd2 * ((2'd2)==(5'd8)))<<{4{((2'd2)<<<(3'd7))}});
  localparam signed [3:0] p9 = ((^{(-2'sd0),(5'sd3),{(4'sd5),(2'd2),(3'd2)}})>=(2'sd0));
  localparam signed [4:0] p10 = ((((5'd18)&&(5'd29))>>>{(4'd12),(2'd3),(5'd3)})|({(5'd12)}^((-4'sd3)|(3'd0))));
  localparam signed [5:0] p11 = ((-(5'sd11))?((4'sd3)?(-5'sd11):(5'sd3)):((3'd7)?(-4'sd4):(3'd7)));
  localparam [3:0] p12 = {({(2'd2)}+(-2'sd0)),(3'd5)};
  localparam [4:0] p13 = {4{{1{(5'sd1)}}}};
  localparam [5:0] p14 = (4'sd0);
  localparam signed [3:0] p15 = (((-2'sd1)?(5'd8):(3'sd2))?(~&((-3'sd1)&&(5'd16))):((3'd6)?(2'd1):(4'sd1)));
  localparam signed [4:0] p16 = {2{((5'd21)^(2'd2))}};
  localparam signed [5:0] p17 = ((-2'sd0)?((3'd5)?(4'd13):(5'sd5)):((3'd5)^~(5'd23)));

  assign y0 = ((((p5&a2)^(p5?b4:p8))>>>((p2<p4)&&{p1}))<<<(4'sd4));
  assign y1 = (({1{{3{b5}}}}+{1{(a5===a4)}}));
  assign y2 = (2'd1);
  assign y3 = (((p10?p8:p15)?(p6==b3):(p17?p1:p16))<=(((p3?p0:p6)^(p5^~p8))^~((p17)/p3)));
  assign y4 = ((!(2'sd0))^~{(2'd1),(b3||p12),(a1>>>b0)});
  assign y5 = (((a2^p11)||{3{b2}})^({3{b2}}<<<{3{b1}}));
  assign y6 = {2{(~&(((b4!=a5)-(!b5))&&{4{a5}}))}};
  assign y7 = {{p17,a4,a2},(4'd13),(b5?p16:p12)};
  assign y8 = ({(((~p9)!=(4'd2 * p8))),$signed($signed((p10>=p7)))}>(-({2{{4{p9}}}}>>(~(5'd2 * p1)))));
  assign y9 = (2'd3);
  assign y10 = ({{a3,p14},(5'd2 * p0)}!={{(a4>>p17),(p14+p12)}});
  assign y11 = ((p5>>>p0)/a3);
  assign y12 = (^((~^(-(~|({2{a0}}>(+(b2^b1))))))===(~&(({1{b5}}!=(b4&a5))>=((!a1)>>(a4>>>a4))))));
  assign y13 = (~|((5'sd5)=={((p13?p1:p0)<={p11,p5}),{(|p0),(4'sd6)}}));
  assign y14 = {2{(3'sd2)}};
  assign y15 = $unsigned((({p4,p4,p2}+$signed((~(p2))))>((!{p17,p10,p16})|((~|a1)>>$signed(p8)))));
  assign y16 = (+((2'sd1)?(2'sd1):(p2+p8)));
  assign y17 = {((b3+b2)?(a1|a4):(!p17)),(~^(|{p14,b1,p15})),((~^(b2>>>p2))>=(a1?a2:b2))};
endmodule
