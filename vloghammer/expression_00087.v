module expression_00087(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((2'd2)>(-5'sd7))?((-4'sd1)<=(-4'sd2)):(3'd7));
  localparam [4:0] p1 = {(&((5'sd6)?(4'sd3):(5'd21))),(~|(|(5'sd9)))};
  localparam [5:0] p2 = (5'd2 * ((3'd3)==(5'd14)));
  localparam signed [3:0] p3 = ((-5'sd1)===(4'd14));
  localparam signed [4:0] p4 = (4'd12);
  localparam signed [5:0] p5 = {4{((5'd14)?(3'd7):(5'd1))}};
  localparam [3:0] p6 = ({4{(5'd22)}}?{(4'sd1)}:((+(2'sd0))?{(3'd6),(4'd4)}:(~^(5'sd8))));
  localparam [4:0] p7 = (5'd21);
  localparam [5:0] p8 = ((5'sd6)||(((5'd27)/(4'd15))/(3'd1)));
  localparam signed [3:0] p9 = {2{((5'sd14)-(-2'sd1))}};
  localparam signed [4:0] p10 = {{3{(-4'sd7)}}};
  localparam signed [5:0] p11 = (-{(|(3'd4)),((~&(4'sd4))?((5'sd8)?(3'd7):(5'd9)):{(-5'sd1)}),(~|((-5'sd4)^~{(-5'sd10),(4'd13),(2'd0)}))});
  localparam [3:0] p12 = (3'd4);
  localparam [4:0] p13 = {(2'd1),(4'd13),(5'd19)};
  localparam [5:0] p14 = (((^(-3'sd0))^((4'sd4)>>>(3'd4)))?(((3'd1)&(3'd4))<<<(-2'sd1)):(-(-5'sd15)));
  localparam signed [3:0] p15 = (2'd0);
  localparam signed [4:0] p16 = (~^((&{1{(~^((5'd23)^~(5'd9)))}})?{((3'd4)?(2'sd0):(2'sd1)),(~^(3'sd0)),{2{(5'd5)}}}:{(-4'sd4),{(2'd3)}}));
  localparam signed [5:0] p17 = (&(|{(^(4'd9)),{(-4'sd7),(-5'sd1)},(+(4'd12))}));

  assign y0 = ((~|(~&$unsigned(p0)))<(|(p0<<p14)));
  assign y1 = (((p13>>>p11)^~(a2&&a5))<{(6'd2 * b1),(b3>b2)});
  assign y2 = ({1{($signed((a1?b1:b0))?(~&((p6<<<a0)<<<(a2))):((a5&&a4)?(p0?p14:b2):(p7?b4:b2)))}});
  assign y3 = (5'd5);
  assign y4 = $signed((p5&p7));
  assign y5 = (2'sd1);
  assign y6 = (|(~&(((~^(p13?p8:p2)))?$unsigned((p2?p14:a5)):(p10?p12:p8))));
  assign y7 = (^{4{a1}});
  assign y8 = (((b0<b1)!==(2'd1))>>>(4'sd7));
  assign y9 = ({1{((a0?a0:b0)^~(~|b5))}}===((-{4{a5}})+{2{b4}}));
  assign y10 = (((5'sd3)&&(&(b1===a5)))+(2'sd0));
  assign y11 = (((4'd9)|{b5,a4})?(+(~&{p6,p5,b5})):((p11?a0:a3)<<(~p1)));
  assign y12 = (((a3?p15:p4)?{b1,a4}:(3'd1))<=((6'd2 * p7)+{b3,a5,a2}));
  assign y13 = (({2{p14}}-{a4,p4})+((b5>=p7)>(p14>>>b3)));
  assign y14 = {{3{{4{a1}}}},(&{2{{{p5,b1,p2}}}})};
  assign y15 = $unsigned((a2?p12:p2));
  assign y16 = ((a2<p13)!=(!(p16|a3)));
  assign y17 = {((b0>>a1)&(&(a5>a3))),((a4>b1)>={2{p15}})};
endmodule
