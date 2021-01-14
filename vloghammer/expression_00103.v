module expression_00103(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ({3{(^((4'sd6)&(4'sd6)))}}<<(((3'd2)>(3'd2))?{(2'd0),(5'd20),(-5'sd5)}:(~^((4'd3)-(2'd0)))));
  localparam [4:0] p1 = {4{{(-5'sd14),(2'd1),(2'sd0)}}};
  localparam [5:0] p2 = (((5'sd9)+(5'd17))||((4'd7)+(3'sd3)));
  localparam signed [3:0] p3 = (~{2{(~^{1{((3'd3)>>>(4'd2))}})}});
  localparam signed [4:0] p4 = (-3'sd3);
  localparam signed [5:0] p5 = ((2'sd0)?(4'sd1):(5'sd3));
  localparam [3:0] p6 = (!(!(+(^(5'd29)))));
  localparam [4:0] p7 = (-3'sd2);
  localparam [5:0] p8 = (~^(~|{(!((-2'sd0)?(4'sd1):(3'd2))),({(3'd4),(5'sd10)}?((-2'sd0)||(3'sd2)):(+(-2'sd1))),(~^((-(-4'sd1))-(~(-2'sd0))))}));
  localparam signed [3:0] p9 = {{{((3'd0)-(2'sd0)),((-3'sd1)?(3'd3):(3'd5))}},{((-4'sd4)<<<(5'd3)),(2'd2)},{{(4'd5),(4'd2)},((-5'sd5)<<<(4'd4))}};
  localparam signed [4:0] p10 = ((~&((4'd2 * (4'd5))&(~^((-2'sd0)&(-4'sd5)))))<<(~({4{(3'd6)}}=={2{(-4'sd5)}})));
  localparam signed [5:0] p11 = {{{3{(3'd0)}}},({(-5'sd5),(-5'sd1)}>(~|(3'd3))),(|({4{(3'd4)}}!=((4'd5)+(5'd13))))};
  localparam [3:0] p12 = ((5'd2 * ((4'd4)!==(4'd14)))>=((2'd3)==((-3'sd3)^(3'sd3))));
  localparam [4:0] p13 = (((5'sd7)?(3'd6):(5'd13))|((2'sd0)?(4'sd6):(-4'sd3)));
  localparam [5:0] p14 = {(!{3{(5'd13)}})};
  localparam signed [3:0] p15 = (({(5'd26)}^~((3'd1)!=(4'd11)))!=({(4'd11),(2'd1),(-3'sd2)}+((-2'sd1)!==(2'd2))));
  localparam signed [4:0] p16 = ((4'd7)!=(3'd5));
  localparam signed [5:0] p17 = ((3'sd1)&({1{{4{(3'd1)}}}}===(3'd0)));

  assign y0 = {1{({4{(a3==b2)}}>={(a1<b1),(+(p1<b1)),(b0>>>b0)})}};
  assign y1 = (((p1?b4:p12)<<(p17?p4:p5))?(~({b2,a0}!=={b3,b4,b2})):({p14,p15,b4}^(~|(+b4))));
  assign y2 = (2'sd1);
  assign y3 = {4{(a2>a2)}};
  assign y4 = {({(p7?b5:p0),(a3?a4:a4)}?(b2?a5:a0):(a3?b5:p12))};
  assign y5 = ((5'd2 * b1)?(a1<a5):(a5?p17:a4));
  assign y6 = (~(({1{b3}}?(5'd23):(-3'sd3))?((p6?a4:p16)?{1{p14}}:(-5'sd10)):((~p6)<{b1})));
  assign y7 = (~&((~|((a4?a0:a2)?(^a0):(b0^~a0)))?(~((!a4)?(p5?b5:b3):(~^p9))):((+b4)?(a5?b3:p9):(p0?a3:a2))));
  assign y8 = (^(|(+(-(~^p17)))));
  assign y9 = {2{({3{(a0===b0)}}&&(-(~|(p7>=p2))))}};
  assign y10 = $unsigned((({a0,a4,a3}==$unsigned((|p12)))<=(!$signed(((a2^~p7)<<(p5^a3))))));
  assign y11 = {((b5<<a5)|{p0}),(+(!(a5<<p15)))};
  assign y12 = ({3{(p8>>>p0)}}<<<({3{b2}}+((p2&a1)<(p4<<b2))));
  assign y13 = (p11?a3:b5);
  assign y14 = (b2?a2:b4);
  assign y15 = (p9|p14);
  assign y16 = (((b5&&b2)&&(b5?b5:a3))===(!(!(6'd2 * (a2?b1:a2)))));
  assign y17 = ((a1===a0)!=(p5<=b0));
endmodule
