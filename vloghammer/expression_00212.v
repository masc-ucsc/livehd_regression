module expression_00212(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {4{{4{(-3'sd1)}}}};
  localparam [4:0] p1 = (((-4'sd0)?(5'sd8):(2'sd1))?((5'd20)?(3'd2):(5'd26)):((2'sd0)?(3'd4):(5'd19)));
  localparam [5:0] p2 = (~{{(5'd10),(4'd2)},(^(~|(3'd2))),(~^{2{(4'd4)}})});
  localparam signed [3:0] p3 = {(((4'd9)>=(5'd3))!=((-3'sd2)?(3'sd3):(2'd0)))};
  localparam signed [4:0] p4 = ({(-2'sd1),(2'd1),(4'd8)}&&(+(4'sd4)));
  localparam signed [5:0] p5 = ({{((5'd12)!==(4'd4))}}&&{1{{3{(2'sd0)}}}});
  localparam [3:0] p6 = ((2'sd1)!=={4{(3'sd1)}});
  localparam [4:0] p7 = (5'sd8);
  localparam [5:0] p8 = {(~^{(!(4'd4)),(~(-2'sd1))}),{((-5'sd6)>>>(-5'sd9)),(~(-4'sd6)),(~|(4'd4))},((-(2'sd0))>>>((4'sd4)&&(3'sd3)))};
  localparam signed [3:0] p9 = {(((4'sd6)?(2'd3):(5'sd15))^~((-4'sd0)?(5'sd11):(3'd1))),(((2'd1)?(-4'sd7):(5'd1))<<((3'd4)?(2'sd1):(4'd0)))};
  localparam signed [4:0] p10 = ((&(+(~^{1{{4{(-4'sd6)}}}})))+{2{{1{(~|(2'sd1))}}}});
  localparam signed [5:0] p11 = ({4{(2'd2)}}==={1{{2{(2'sd1)}}}});
  localparam [3:0] p12 = ((3'd3)!=(4'sd2));
  localparam [4:0] p13 = (((5'sd1)?(3'd6):(2'd0))>(|(-4'sd2)));
  localparam [5:0] p14 = {3{((~|(-2'sd1))^{(5'd29)})}};
  localparam signed [3:0] p15 = (&{(-(-2'sd1)),{(-4'sd1),(5'd6),(3'd7)}});
  localparam signed [4:0] p16 = (-({2{(~&(4'd10))}}>={3{(2'd2)}}));
  localparam signed [5:0] p17 = {1{{4{(2'd2)}}}};

  assign y0 = {4{(b5^~p8)}};
  assign y1 = ((~^({{{a1}}}<<<{1{(a3+b3)}}))!=((+(!(a4!==a4)))&({a2}>>>(4'sd0))));
  assign y2 = (&(&((-2'sd1)^~(3'd6))));
  assign y3 = {1{(({1{b3}}^(a1?p12:p13))?$signed((~|(p5))):(^(b5||p17)))}};
  assign y4 = ((((a1!==b1)+(~|p12))^((2'd1)<<(b1-b2)))>>(((p5&&p14)||{1{a4}})>((&p7)||(+a1))));
  assign y5 = (|a4);
  assign y6 = ({3{a2}}!==$signed((b3>=b3)));
  assign y7 = $unsigned(((p5<=p17)>(p3+b0)));
  assign y8 = {(5'sd6),{2{{{1{a4}}}}},{(3'sd2)}};
  assign y9 = (^{(-((b3?a2:a3)?(~a5):{a4,a2,b5})),(!({a2}?(&b2):(b5?b4:b4)))});
  assign y10 = ((^({p11}>>{a1,p4,a2}))?({a0,a2,a2}):{{p16,a3,b3},(a0?a1:b3)});
  assign y11 = {{((6'd2 * (b0!==a2))>>(((p14&&p12))))}};
  assign y12 = {{(-(((4'd2)<<<(b3<<<b1))=={(5'd2 * b1),{b5,a4,b4},(3'd0)}))}};
  assign y13 = (a2==p0);
  assign y14 = (p8?p9:p0);
  assign y15 = {(+(((~^p4)&&$signed(b3))>(~{p7,p8})))};
  assign y16 = {{(($signed((b4?a2:a2)))?{((a3)||{b4,a4})}:$unsigned((a2?b0:b3)))}};
  assign y17 = ((-3'sd2)^~((5'd26)-(a0&a2)));
endmodule
