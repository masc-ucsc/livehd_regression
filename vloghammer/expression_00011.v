module expression_00011(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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
  localparam [4:0] p1 = (!((((3'd3)?(-3'sd1):(3'sd3))<((3'sd3)>(5'd20)))?{1{((-4'sd6)>>>(-5'sd9))}}:(|((-3'sd3)>=(2'd2)))));
  localparam [5:0] p2 = (~&(2'd3));
  localparam signed [3:0] p3 = ((4'd3)<<<((((-2'sd1)|(5'sd12))>(5'd10))<<(4'd1)));
  localparam signed [4:0] p4 = {2{({1{((3'd0)?(3'sd3):(4'd7))}}>={(3'd4),(4'd3)})}};
  localparam signed [5:0] p5 = (3'sd1);
  localparam [3:0] p6 = (((3'd2)?(2'd1):(4'd2))*((-5'sd8)?(5'd24):(5'd9)));
  localparam [4:0] p7 = (~^(((4'd7)>>((5'd19)?(4'd10):(5'd5)))?(2'd0):(((3'd3)?(4'd6):(3'd1))?(|(3'sd0)):(&(2'd0)))));
  localparam [5:0] p8 = ((4'd2 * ((2'd3)>>>(2'd3)))===(((-3'sd2)&(3'd6))>((3'd7)+(5'd4))));
  localparam signed [3:0] p9 = ({{(3'd5),(-5'sd14)}}-((4'sd3)>>(3'sd3)));
  localparam signed [4:0] p10 = (&(~(((4'sd3)+(3'd5))&&(~^((4'd7)>>(2'd2))))));
  localparam signed [5:0] p11 = (|((&{3{(4'sd2)}})^((!(5'sd3))<<<(^(5'd21)))));
  localparam [3:0] p12 = (3'sd1);
  localparam [4:0] p13 = (+(^(+{(3'd4),{(5'd11),(-2'sd1)}})));
  localparam [5:0] p14 = ({1{(((4'sd4)>>>(-3'sd1))+((5'sd9)<<(5'd2)))}}&({2{(-2'sd1)}}||((2'd2)>=(2'sd1))));
  localparam signed [3:0] p15 = (2'sd1);
  localparam signed [4:0] p16 = (|(((4'd6)?(-3'sd2):(5'd27))&(3'd3)));
  localparam signed [5:0] p17 = ((((-5'sd3)&(3'd4))^((-2'sd1)<=(5'd15)))|(((3'sd1)<(3'd2))^((-5'sd6)&(2'd1))));

  assign y0 = (p8?b2:p8);
  assign y1 = {(a3?a0:a0)};
  assign y2 = (3'sd3);
  assign y3 = (+($unsigned($unsigned(a3))^{1{{3{p4}}}}));
  assign y4 = (2'sd0);
  assign y5 = ((4'd14)%p7);
  assign y6 = {3{((p16?p3:b5)<<<(~^b3))}};
  assign y7 = (5'd2 * (!$unsigned(b3)));
  assign y8 = (b5/b1);
  assign y9 = (~(^((~|((a1?b1:b2)!==(a2+b2)))?(~((a4?a0:p6)-(p13<<<p16))):(~^(~(p5?p1:p6))))));
  assign y10 = {3{((p13>=a4)>>>(3'd3))}};
  assign y11 = $signed((((+(p12&a2))<(2'd1))&((~(a2>b3))>{4{p5}})));
  assign y12 = (((p13||a3)^~(p11!=b4))<=((-p13)!=(~|p17)));
  assign y13 = {{({a1,b3,a2}),(p12>>>p1),(-3'sd2)},(5'sd2)};
  assign y14 = ((-(~^(~^(^{1{(+(|(a4!=a0)))}}))))>>>({4{b5}}!={1{(b5^~a5)}}));
  assign y15 = ((a1&&p17)?(~|(5'd19)):(p1?a3:b2));
  assign y16 = (|((((a2&&a0))!==(b2>a5))&(|({4{a0}}^~(&p4)))));
  assign y17 = ((p8||b2)>(p17>>>b5));
endmodule
