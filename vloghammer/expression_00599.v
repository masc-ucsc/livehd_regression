module expression_00599(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((3'd3)+((4'd12)|((3'd4)||(4'd0))));
  localparam [4:0] p1 = ((5'd16)?(+(5'd20)):(-(-4'sd0)));
  localparam [5:0] p2 = (({(4'sd2),(-2'sd1)}<(-5'sd8))>=(-3'sd0));
  localparam signed [3:0] p3 = ((5'd16)>=(5'sd2));
  localparam signed [4:0] p4 = (4'd11);
  localparam signed [5:0] p5 = (-(((5'd22)?(-2'sd1):(-3'sd3))>>>{4{(-5'sd5)}}));
  localparam [3:0] p6 = ((-2'sd1)&&(-4'sd6));
  localparam [4:0] p7 = ((3'd4)>>((!(-5'sd4))<={2{(5'sd9)}}));
  localparam [5:0] p8 = ({2{((4'd15)-(4'd9))}}>=(((2'sd0)&&(5'd17))>>>((-2'sd0)||(3'd2))));
  localparam signed [3:0] p9 = (5'sd0);
  localparam signed [4:0] p10 = (&(+(-((2'd3)<=(2'd3)))));
  localparam signed [5:0] p11 = (+({1{{4{(~^(2'd2))}}}}>>{4{{1{(-2'sd0)}}}}));
  localparam [3:0] p12 = (&(&(-(((5'd2)>=(-5'sd5))*(|((3'd3)>(5'd17)))))));
  localparam [4:0] p13 = ((^{1{{{((4'sd5)>=(-2'sd1)),(~&(3'sd0))}}}})<=((&((4'd6)-(5'sd5)))<<((~|(3'd6))>=((4'sd4)>=(3'd6)))));
  localparam [5:0] p14 = (4'd1);
  localparam signed [3:0] p15 = {3{(-3'sd1)}};
  localparam signed [4:0] p16 = (~^(((4'sd0)?(3'd4):(4'd14))?(~&(&(5'sd14))):(3'd5)));
  localparam signed [5:0] p17 = (~|(~^(&(!(+(~^(&(^(5'sd5)))))))));

  assign y0 = {1{(|(5'd2 * (p6||a2)))}};
  assign y1 = {1{(((a3!==b2)!==(a3!==a5))-(2'd2))}};
  assign y2 = (((p2<p1)>>>($unsigned(p16)))?((p14>=p11)<<(p5<<p9)):$signed(($unsigned(p1)?(a3*p7):(4'd2 * p8))));
  assign y3 = ((&((a2!=a4)?(a3&&b4):(~|a5)))>>(-((b3!==b2)>>>(~|(-b2)))));
  assign y4 = {4{(!{1{p8}})}};
  assign y5 = $signed((2'd0));
  assign y6 = (&((-(|(~(|((-a5)+(~&b0))))))||(((a3&&a0)*(+p3))||((~&b3)>>(p16>>>b3)))));
  assign y7 = (-(^$unsigned((~$unsigned(((~^(+$signed($signed(((&(~|((!$unsigned((-{2{(~^b1)}})))))))))))))))));
  assign y8 = $unsigned($unsigned({($signed(({(~|p10),(~b0)}|(^((a1-p8)))))>>$unsigned(((~|(p12==p12))<((~&(!p15))))))}));
  assign y9 = {({1{(b3?a4:a0)}}|({a0,a5,a4}?{4{b3}}:(a5>a4))),(({a5}?{a4,b5,p4}:(6'd2 * b2))&&{2{{4{a4}}}})};
  assign y10 = (3'sd1);
  assign y11 = (+$signed($unsigned((~&$signed((!$signed((|(|(~&($unsigned((~^$unsigned({$signed(a4),(~b4)}))))))))))))));
  assign y12 = (((&p5)?(a1?a4:p12):(+a5))!=((&{a4,b2})>>>(-(+b0))));
  assign y13 = (^(4'sd6));
  assign y14 = ({4{p10}}?(a3?p0:p11):(a0^p17));
  assign y15 = {({a4,p8}?$signed({1{a3}}):(p14?a4:p17))};
  assign y16 = (^({p15}?{b4,a2,a4}:{p6,p10}));
  assign y17 = (~^(4'sd7));
endmodule
