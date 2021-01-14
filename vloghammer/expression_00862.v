module expression_00862(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((-2'sd0)||(3'd2));
  localparam [4:0] p1 = (~^(~|{{(3'd5),((5'd6)^~(2'd2))},{4{(5'sd6)}}}));
  localparam [5:0] p2 = (^(|(~^(!(-(|(~^(~^(-(-(~(4'sd4))))))))))));
  localparam signed [3:0] p3 = (-5'sd6);
  localparam signed [4:0] p4 = ({(2'd2)}<(((2'd0)!=(3'd4))&{1{(5'sd6)}}));
  localparam signed [5:0] p5 = ((3'sd3)<(-3'sd1));
  localparam [3:0] p6 = (5'sd4);
  localparam [4:0] p7 = (~(~(-4'sd1)));
  localparam [5:0] p8 = (-3'sd0);
  localparam signed [3:0] p9 = ((((-2'sd1)>>>(-5'sd9))&((2'sd1)&&(5'd9)))||(+{(2'd3),(3'd7),(5'd11)}));
  localparam signed [4:0] p10 = ((5'd10)?(5'sd14):(2'sd1));
  localparam signed [5:0] p11 = {1{(-(~&{3{(|{2{(5'sd4)}})}}))}};
  localparam [3:0] p12 = {({(4'd4),(-4'sd4),(5'sd4)}<=((2'd2)&&(2'sd1))),((6'd2 * (5'd14))==((2'd3)<=(2'd0)))};
  localparam [4:0] p13 = (!(~&(((6'd2 * (3'd7))<((-2'sd1)===(4'd14)))<<(((3'd4)||(2'd2))*((-3'sd3)>=(-5'sd0))))));
  localparam [5:0] p14 = {((5'd9)!=(2'd1)),((-5'sd1)<(-2'sd0))};
  localparam signed [3:0] p15 = (4'd10);
  localparam signed [4:0] p16 = ((((-4'sd1)&&(4'd1))-((2'd0)?(3'sd0):(3'd6)))!=(~|((~^(~|(5'd31)))<<<((3'd1)&(2'sd1)))));
  localparam signed [5:0] p17 = {1{(-2'sd1)}};

  assign y0 = (((b2<=a1)/b0));
  assign y1 = ({4{b0}}-(|(p13?p0:a3)));
  assign y2 = {({p0,p14,p5}?(~(p13?b1:p15)):(~&(p3?p11:p9))),((-$unsigned(p12))?(p4?p12:p10):({p3,p4}))};
  assign y3 = ($signed(((p4<<<p5)>=(p9^~p5)))|(((p12))^(p13-p12)));
  assign y4 = ((&((a1?a5:a1)<(p3?a1:b1)))<<<(~((a0===a0)<=(p8|a5))));
  assign y5 = ((p9&p9)?{3{p1}}:(p4&&p4));
  assign y6 = {2{{3{p13}}}};
  assign y7 = ({1{(p8>p0)}}&&(a4^~b5));
  assign y8 = $signed((a0==a5));
  assign y9 = (-(~^(!(~^(~|(~|{(-(+p7)),(+(~|p15)),(~^(^p9))}))))));
  assign y10 = {3{(p3<<a4)}};
  assign y11 = {{(p10),(p7<<<p2)},(5'd6),((3'd5)&{b4,p8,p9})};
  assign y12 = (((b5>=p17)?(^a4):(p4?p2:p3))?{((p8?p2:p16)<=(p14&p3))}:(|(b1?p8:p16)));
  assign y13 = {3{(~^(~({2{a1}}=={4{b2}})))}};
  assign y14 = {({3{b0}}||(p10<<b4)),{4{b3}}};
  assign y15 = ({{1{((p1+p7)>>>$unsigned((p13||a3)))}},$signed(((b2!==a3)>>{(a5!==b3)}))});
  assign y16 = (({p9,a5,b0}?(^(a4!=b2)):(a2-a3))|(((|b1)&&(a2>b4))&((b3>>>a0)||(a4!==a4))));
  assign y17 = ($signed((6'd2 * {4{b0}}))==(5'd2 * $unsigned((b0<=b4))));
endmodule
