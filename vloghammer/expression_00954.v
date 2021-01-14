module expression_00954(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((6'd2 * (4'd3))/(-2'sd0));
  localparam [4:0] p1 = (((-3'sd1)|(-4'sd7))-(((5'sd0)%(-4'sd2))/(2'd0)));
  localparam [5:0] p2 = (({4{(4'sd0)}}^~((4'sd0)<=(3'd4)))<=(((4'd0)==(4'd7))>>>((2'sd0)!=(5'sd2))));
  localparam signed [3:0] p3 = ({3{((5'd22)&&(2'sd1))}}-{4{(-(5'd9))}});
  localparam signed [4:0] p4 = ((-2'sd1)?(-3'sd1):(-4'sd2));
  localparam signed [5:0] p5 = (2'd2);
  localparam [3:0] p6 = (+((-5'sd14)&((2'sd0)?(2'sd0):(5'd23))));
  localparam [4:0] p7 = (^(!(|{(~|(5'sd4)),{(-5'sd15),(2'sd0)},{(3'd4),(3'd1)}})));
  localparam [5:0] p8 = ((((-2'sd0)===(-2'sd0))*((2'd0)>>>(3'd6)))?((-2'sd0)?(4'd14):(3'sd3)):((4'd3)?(-4'sd0):(3'd6)));
  localparam signed [3:0] p9 = {{(5'd27),(4'd12)},{(3'd2),(4'd12)},{(3'd1),(3'd6),(-5'sd4)}};
  localparam signed [4:0] p10 = {{(+(-5'sd9)),{(3'sd3)},{(-3'sd2),(-3'sd0)}}};
  localparam signed [5:0] p11 = (((|(3'sd0))?(4'd14):(~^(3'sd1)))^((|(3'd4))?{(-5'sd12)}:(~|(-3'sd0))));
  localparam [3:0] p12 = (~{(~^(3'd0)),(~|(5'd0)),((3'd6)^(3'd7))});
  localparam [4:0] p13 = (2'd1);
  localparam [5:0] p14 = (+{1{{3{(2'd1)}}}});
  localparam signed [3:0] p15 = ((~|(^{((-4'sd3)!=(5'd15))}))^(^({(3'd6)}<=(6'd2 * (5'd16)))));
  localparam signed [4:0] p16 = {2{{3{(-3'sd1)}}}};
  localparam signed [5:0] p17 = {{((2'd2)&&(3'd0)),((-2'sd0)>>>(3'd5))}};

  assign y0 = (6'd2 * (a1&&a2));
  assign y1 = (((!a1)|(+p16))?(^(2'd2)):(a1?p0:b3));
  assign y2 = {{1{$signed((~&b2))}},(~{4{a2}}),{1{{b4,a1,a0}}}};
  assign y3 = (+(^a5));
  assign y4 = {{1{p13}},{p9,p13,p6}};
  assign y5 = (!p8);
  assign y6 = (-3'sd0);
  assign y7 = (3'd0);
  assign y8 = (~^((({1{a5}}<<<(&p12))>((p5?p5:p10)-{1{p13}}))<<<(5'd28)));
  assign y9 = (p10?b1:a1);
  assign y10 = (~&(a5|a0));
  assign y11 = ((a1?b5:a0)?(~^(a4?a1:b3)):(-5'sd1));
  assign y12 = {3{({a0,a3,p5})}};
  assign y13 = (-(4'd2 * (~|(a0^~b0))));
  assign y14 = ($signed((&(~(a3||a0))))<(-(~^$signed((^a0)))));
  assign y15 = ((5'sd5)?((-3'sd3)?(~&a1):{4{p12}}):(~|((a5!==b3)===(a0?a2:a2))));
  assign y16 = (-(~&(!(a3!==b1))));
  assign y17 = $unsigned(((-4'sd2)-((-5'sd15)?(b0>=b1):(4'sd5))));
endmodule
