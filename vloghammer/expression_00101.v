module expression_00101(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((!(&((4'd1)?(4'sd5):(4'd9))))<<<({4{(2'd3)}}>((5'd7)|(2'sd1))));
  localparam [4:0] p1 = ((+(~^{4{(-3'sd2)}}))-(((2'd2)||(3'd2))==={3{(5'd6)}}));
  localparam [5:0] p2 = ((~|{{(3'd0),(5'd14),(4'sd5)},{(3'd0),(2'd0),(5'sd5)},((5'd30)!==(-3'sd2))})!=(((5'sd5)<<(5'sd7))?(~&((3'd6)^~(4'd4))):((-4'sd6)?(4'd1):(-5'sd6))));
  localparam signed [3:0] p3 = (((4'd10)?(3'sd1):(2'sd1))?((5'd18)?(-4'sd1):(2'd0)):(5'sd10));
  localparam signed [4:0] p4 = {(5'd30)};
  localparam signed [5:0] p5 = (~&((-5'sd12)?(3'd1):(5'd29)));
  localparam [3:0] p6 = {((3'd0)<=(5'd7)),{(4'd4),(4'sd4)}};
  localparam [4:0] p7 = {3{(4'd12)}};
  localparam [5:0] p8 = ((4'd4)?(5'd29):(3'sd2));
  localparam signed [3:0] p9 = {3{((4'd8)?(5'd23):(3'd0))}};
  localparam signed [4:0] p10 = (~(5'd2 * ((5'd17)==(5'd21))));
  localparam signed [5:0] p11 = (((-2'sd1)<=(-3'sd3))>=((2'sd1)>>>(5'd11)));
  localparam [3:0] p12 = (~&(-(!(-3'sd3))));
  localparam [4:0] p13 = {(5'sd5)};
  localparam [5:0] p14 = (-(~&(~(!(|(&(!(~^(&(-(+(!(-(+(-4'sd2)))))))))))))));
  localparam signed [3:0] p15 = {{2{{1{(3'd6)}}}},{{1{(3'd0)}},{3{(4'd10)}}},{{2{{(5'sd5)}}}}};
  localparam signed [4:0] p16 = {{2{(-3'sd2)}},((4'sd7)>=(2'sd1)),(^(2'sd1))};
  localparam signed [5:0] p17 = {1{(4'd4)}};

  assign y0 = {((^(~&{(!(+(|p5))),((+(p8))),(+{(~&p1)})})))};
  assign y1 = (((&(p14?p4:p1))?(+(p12+p13)):(~&(p13?p13:p7)))<<(((3'd5)?(p11+p9):(p7^p3))>>>(4'd12)));
  assign y2 = {4{((a4?a4:p1)==(p0&&p15))}};
  assign y3 = {(|{4{p16}}),((+(+a3))===(+{b2,a0,b3})),({{b0,b4,b2}}==={2{b2}})};
  assign y4 = $signed({$signed({2{{1{(p6?a0:a1)}}}})});
  assign y5 = ($unsigned((p0))>>$signed((b2?p10:a4)));
  assign y6 = {4{(6'd2 * {2{p13}})}};
  assign y7 = {3{(a1>>a1)}};
  assign y8 = {(b1+p11),(p14+a0)};
  assign y9 = (+(^(^{(!(3'd2)),{(~|(a4?b5:p12))},{(~b0),(|a1),(4'd13)}})));
  assign y10 = (^(2'd3));
  assign y11 = $signed(({{b1,a2,b0},(-(a2^b0))}!==($signed((!b0))<={(b5>>a3)})));
  assign y12 = {3{{3{p14}}}};
  assign y13 = {{(b0||p13),(-3'sd3)}};
  assign y14 = {{p5,a5},(b0?b3:b5)};
  assign y15 = ({p11,b5}>>>(a5&a2));
  assign y16 = ((~|((~&(~^(~a1)))^~(~&(p3&&p5))))<(((~p7)>>>(~^p3))<(!(^(p6%p12)))));
  assign y17 = (-5'sd0);
endmodule
