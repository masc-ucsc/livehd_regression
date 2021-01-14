module expression_00076(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~|(4'd14));
  localparam [4:0] p1 = ((-3'sd1)?(3'd3):(5'd11));
  localparam [5:0] p2 = (~(~&(|(+(|(!(!(+(~&(~&(~&(+(^(~&(~|(-4'sd2))))))))))))))));
  localparam signed [3:0] p3 = ((4'd2 * (5'd16))/(3'sd0));
  localparam signed [4:0] p4 = (({(5'sd6),(2'd3),(2'sd1)}>>>{(3'd2),(4'd3)})^~(((5'd17)>>>(5'd22))&((4'sd6)>>(4'd4))));
  localparam signed [5:0] p5 = (((+(-(2'sd0)))^((-2'sd0)&&(3'sd2)))^(|(+(~|{((2'd0)!=(5'd20)),(~|(5'd28))}))));
  localparam [3:0] p6 = ((((-4'sd3)&(2'd3))?(~&(5'd26)):((-3'sd1)==(4'd5)))?{((3'd2)?(2'sd1):(5'sd12))}:((-(5'd9))?(+(3'sd1)):(|(-2'sd0))));
  localparam [4:0] p7 = ({1{(-4'sd3)}}=={(5'sd15),(-3'sd2)});
  localparam [5:0] p8 = (2'd0);
  localparam signed [3:0] p9 = (-4'sd4);
  localparam signed [4:0] p10 = (3'sd2);
  localparam signed [5:0] p11 = (((5'd30)>={4{(5'd16)}})?((-5'sd9)&&{(5'd19),(-3'sd2)}):((5'sd1)>((4'd11)?(5'd18):(3'd7))));
  localparam [3:0] p12 = (((5'd0)?(2'd2):(3'd7))?{2{(4'sd3)}}:((3'd4)?(3'd6):(2'sd0)));
  localparam [4:0] p13 = ((((5'sd7)?(2'd0):(4'd0))!=(~^((5'd27)?(3'd2):(-5'sd14))))||((!((3'd3)?(2'd3):(-2'sd1)))<<<(((4'd5)||(2'd2))>=(~&(4'd2)))));
  localparam [5:0] p14 = (((2'sd0)?(2'sd1):(3'd0))?(~&(~(~(-2'sd0)))):(!((2'sd1)^~(-5'sd2))));
  localparam signed [3:0] p15 = {(3'd4),{(3'd1),(3'd3),(5'sd5)}};
  localparam signed [4:0] p16 = (((-2'sd0)&(4'd3))^(3'sd2));
  localparam signed [5:0] p17 = {{2{{(-3'sd0)}}},{{4{(-3'sd0)}},((-3'sd0)+(5'd15))},{{(5'd16),(-3'sd1)}}};

  assign y0 = (((~a4)?(~p15):(~^p14))?(~&(~^(~(p9?p2:b2)))):((a0?a1:p11)?{3{p15}}:{3{p17}}));
  assign y1 = (5'd2 * (b2?p1:p2));
  assign y2 = ($unsigned(((b1%p14)&(a4>>>p9))));
  assign y3 = ($signed((-(-2'sd0))));
  assign y4 = (!({{(+p13),(p7?p17:p2)}}?{(|p0),(p12<<<p6),(p6>=p1)}:((b5?b1:a2)===(a4?b4:a4))));
  assign y5 = ((~(b5>p6))>>>(b4>>b0));
  assign y6 = (~&(-(~^((~p6)))));
  assign y7 = (+(2'd1));
  assign y8 = $unsigned(((-p4)+(~b2)));
  assign y9 = (p14?p14:p11);
  assign y10 = (((p3^p0)<<<(6'd2 * p2))^~((p1)?{1{p14}}:(a5?p11:p13)));
  assign y11 = (~&{(^(+(~|p12))),(p2?p16:p11)});
  assign y12 = (+$unsigned(($unsigned((~^b4))<<<(^(!a3)))));
  assign y13 = (-4'sd7);
  assign y14 = ((p16)>=(b0?p13:p6));
  assign y15 = (($signed($signed(a0))!=(p6<p17))||$unsigned(((p14?a4:a4))));
  assign y16 = $signed((~(((~{a1,b1,b1})^((b0?a3:a4)^~{b1,b1,a1}))===$unsigned({(!{(!a1)}),(5'd2 * (~&a1))}))));
  assign y17 = ((^(+(3'd1)))^~((+(a2*b1))&(b5>=a4)));
endmodule
