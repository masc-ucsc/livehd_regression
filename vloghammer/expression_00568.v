module expression_00568(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{(((2'd3)==(2'd1))&((5'd14)^~(3'd2)))}};
  localparam [4:0] p1 = (~^(3'd6));
  localparam [5:0] p2 = (^((5'sd8)?(4'sd4):(4'd6)));
  localparam signed [3:0] p3 = (((4'd2)|(-2'sd1))!=(5'd2 * (2'd2)));
  localparam signed [4:0] p4 = {((5'd2 * (5'd30))<<<((2'd3)?(5'd3):(3'd1))),(~{(~(3'sd3)),(~(3'sd3))}),(((2'd1)+(-5'sd0))?{(3'd4)}:{(4'd4),(3'd6),(3'sd0)})};
  localparam signed [5:0] p5 = (~&(^((&((4'd5)||(-3'sd3)))!=((3'sd1)>>(5'd10)))));
  localparam [3:0] p6 = {(~&{2{(((3'sd0)^~(2'd0))>=(!(5'd28)))}})};
  localparam [4:0] p7 = {((2'd0)>>>(5'sd5)),(4'd2 * (4'd11)),(+((-4'sd7)|(-5'sd13)))};
  localparam [5:0] p8 = (~&(~^{1{{3{(3'd6)}}}}));
  localparam signed [3:0] p9 = {((3'd4)?(-2'sd0):(5'd23)),((-3'sd2)<<<(3'd1)),(~&(2'd3))};
  localparam signed [4:0] p10 = ((2'd3)?(5'd11):(-5'sd4));
  localparam signed [5:0] p11 = (((-4'sd3)>(3'd0))^~((4'd12)?(-5'sd10):(4'd7)));
  localparam [3:0] p12 = {((5'd25)?(3'sd3):(2'd1)),((-2'sd0)&&(4'd8))};
  localparam [4:0] p13 = (4'd12);
  localparam [5:0] p14 = {3{(3'sd1)}};
  localparam signed [3:0] p15 = ((((-5'sd15)?(5'd18):(5'd22))?((2'd1)|(-4'sd0)):(3'd2))<<(((2'sd0)>(-5'sd4))&(-2'sd0)));
  localparam signed [4:0] p16 = {{(5'sd5),(4'd4),(|(5'sd2))},(4'sd6)};
  localparam signed [5:0] p17 = (~((~^((3'd5)>>>(2'd1)))<<((6'd2 * (3'd1))-((4'sd6)&(2'sd0)))));

  assign y0 = ($unsigned(((-p1)||$unsigned(a4))));
  assign y1 = ((b4?p14:a1)?{1{a0}}:(p3?a0:b0));
  assign y2 = {3{$unsigned(a4)}};
  assign y3 = (|{((p11?p7:p16)&(p0&p4)),(~&({b4,b2}!==(b4!==a5))),((p14?p10:p13))});
  assign y4 = ($unsigned($unsigned(b0))|(a0||a2));
  assign y5 = ((~|a1)||(^b4));
  assign y6 = ((((b5&b5)+(-a2))^{(b4?b1:p7),(b2&&p17)})+(&(~&(2'sd0))));
  assign y7 = (~b3);
  assign y8 = (~((4'd2 * (p12!=a2))?(p17?p3:b1):(b5?a4:p14)));
  assign y9 = (&p10);
  assign y10 = {3{((a4<=p1)<<<(p2&&b1))}};
  assign y11 = ((b3?p9:b0)?(b3?p3:a5):(p3?p2:p17));
  assign y12 = (+(3'd5));
  assign y13 = {1{(-(((b2<<<b0)+(a3&b1))-(~^(b0?a0:b4))))}};
  assign y14 = (~|{4{a2}});
  assign y15 = (3'd4);
  assign y16 = (^{1{((a0?p6:b4)?(a4?b0:a5):(~&(|(&a0))))}});
  assign y17 = ((p5&&a2)<(a0<p7));
endmodule
