module expression_00544(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (({4{(3'd4)}}?((3'd3)<=(-3'sd0)):((2'd1)>=(-2'sd1)))+(5'd2 * {3{(4'd0)}}));
  localparam [4:0] p1 = (~|{(5'd12),(3'd0)});
  localparam [5:0] p2 = ((^(4'd2 * (5'd28)))?(~|((4'd7)?(5'd28):(4'd4))):({2{(-2'sd1)}}>=(+(2'sd1))));
  localparam signed [3:0] p3 = (~^(~|(5'd6)));
  localparam signed [4:0] p4 = {1{(~(~^((5'sd6)!=(5'd22))))}};
  localparam signed [5:0] p5 = ((|(((-5'sd11)<=(-3'sd2))===((3'd6)?(-4'sd7):(5'sd3))))^~(~|(((4'sd5)<<<(-4'sd3))>=((-2'sd1)>>>(2'd0)))));
  localparam [3:0] p6 = (|(3'd5));
  localparam [4:0] p7 = ({((-3'sd1)===(4'sd6)),((-5'sd0)+(-5'sd10)),((-2'sd0)?(4'd5):(4'sd1))}?({(2'd0),(3'd4)}-((-3'sd0)<=(5'd9))):((~(-3'sd2))>={1{(2'sd1)}}));
  localparam [5:0] p8 = ({1{(4'sd4)}}>=(3'd5));
  localparam signed [3:0] p9 = (5'sd11);
  localparam signed [4:0] p10 = (~&(~|(3'sd2)));
  localparam signed [5:0] p11 = (({4{(-3'sd0)}}^~(2'd0))>>{4{(4'd7)}});
  localparam [3:0] p12 = (((5'd28)?(4'd5):(2'sd1))==={((-2'sd0)^~(3'd0))});
  localparam [4:0] p13 = ((3'd2)!=(2'd0));
  localparam [5:0] p14 = {(-3'sd1),{((4'sd6)>>(-2'sd0)),((2'd2)!=(4'sd5)),{1{(-4'sd1)}}}};
  localparam signed [3:0] p15 = ({(4'd8),(3'd4),(2'd1)}||({3{(3'd6)}}>>{2{(2'd1)}}));
  localparam signed [4:0] p16 = {1{{1{(|({3{(-5'sd13)}}||{{(-5'sd13)},{2{(-4'sd7)}}}))}}}};
  localparam signed [5:0] p17 = {(5'sd8),(5'd13)};

  assign y0 = $signed((((b1&a3)===$unsigned((3'sd0)))-$unsigned({2{$signed(p15)}})));
  assign y1 = (({1{(|a1)}}>={2{a5}})<<{(~b0),{p2,b0},{b0,a1}});
  assign y2 = (-5'sd8);
  assign y3 = (((b3<<<a3)^~(p5?b4:a0))?(5'd29):((a2<=b4)?{1{a4}}:(-5'sd14)));
  assign y4 = {4{b3}};
  assign y5 = (4'sd6);
  assign y6 = ((p9<p7)?(p12*p4):(p3));
  assign y7 = {2{p2}};
  assign y8 = {4{$signed($signed($signed($unsigned(p10))))}};
  assign y9 = ((6'd2 * p13)|(p15/a2));
  assign y10 = ((a4|p10)%a2);
  assign y11 = (p7?p3:b1);
  assign y12 = (~|(((p6/p13)?(p0>p17):(p6%p15))<<((a3!==a5)<<(~|(~a5)))));
  assign y13 = {{(!((4'd2 * p7)=={4{a1}})),{(4'sd1),(b3|p9)}}};
  assign y14 = ((~|((|(b2!=a3))?{4{p16}}:(p9>>p15)))^({3{(a4?b3:p13)}}>>>((~^p9)^(p0?b1:p17))));
  assign y15 = (~&(+(|(((~^b1)!==(a5!=b2))|((p0&&p0)^~(p14&p4))))));
  assign y16 = (((4'd2 * p14)||(p2>>p8))|((3'd0)?(p6?p9:b4):(a5/p10)));
  assign y17 = {2{(2'd1)}};
endmodule
