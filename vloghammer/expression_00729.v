module expression_00729(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{((5'd2)^~{3{(2'd1)}})}};
  localparam [4:0] p1 = ((&((5'd11)?(-3'sd2):(2'd0)))&((+(-5'sd0))!==(~&(4'sd1))));
  localparam [5:0] p2 = {1{({1{{{(5'sd8),(3'sd3),(2'd0)},(4'sd2),(~(3'sd2))}}}<<<{{3{{(2'sd0),(2'sd0),(5'd9)}}}})}};
  localparam signed [3:0] p3 = ((-2'sd1)^(-4'sd7));
  localparam signed [4:0] p4 = (4'sd1);
  localparam signed [5:0] p5 = (!(^{4{{3{(5'd19)}}}}));
  localparam [3:0] p6 = (-3'sd3);
  localparam [4:0] p7 = ((~^(3'd2))!=(|(5'd2)));
  localparam [5:0] p8 = {(~(|{(~^(!{(-3'sd2),(3'd7)})),{{(5'd29),(2'sd0),(5'd19)},(~|(3'd6))}}))};
  localparam signed [3:0] p9 = {(-2'sd0),(-3'sd2),(-5'sd13)};
  localparam signed [4:0] p10 = (~{(-{(4'd15),(2'd1),(4'sd5)}),({(4'sd3),(4'sd5),(4'd5)}!==((2'd2)==(4'd10)))});
  localparam signed [5:0] p11 = ((((2'sd0)&&(5'sd4))<=((2'd1)?(2'd2):(2'd1)))?(((2'd0)?(3'd2):(4'd12))>>>((3'sd3)?(5'd12):(-3'sd0))):(5'd19));
  localparam [3:0] p12 = {{((4'sd3)?(5'sd0):(4'sd3)),{(2'd0),(2'sd0)},{((5'd23)?(4'sd2):(4'd0))}}};
  localparam [4:0] p13 = ((4'sd2)<<(5'sd6));
  localparam [5:0] p14 = ((~{2{{3{(5'sd14)}}}})>>{4{(!(5'sd12))}});
  localparam signed [3:0] p15 = {2{(-4'sd4)}};
  localparam signed [4:0] p16 = (4'd2 * (^{1{(2'd0)}}));
  localparam signed [5:0] p17 = (+(!(((4'd10)|((-4'sd5)!==(4'd2)))||({4{(4'sd2)}}?(-(3'd6)):(4'd12)))));

  assign y0 = $signed(($unsigned($signed(b2))===$unsigned($unsigned(b0))));
  assign y1 = $signed($signed(({{1{{({2{a5}}-{a3,b0})}}},(((b5>=b0))<$signed((a0>>>b5)))})));
  assign y2 = (((a3?b3:a5)?{b5,b3,a3}:(~&a1))?{(b1|b5),{a2,a4}}:{(b4?b5:b3),(b1?b3:a5)});
  assign y3 = ((4'd13)>(4'sd7));
  assign y4 = ($signed(($unsigned((a5))===((a5))))||(&{1{(-(!$unsigned({4{b5}})))}}));
  assign y5 = ((+a1)!==(3'd6));
  assign y6 = {4{{3{(~^p4)}}}};
  assign y7 = (((a5<a1)+(a1==a1))?((&(a3?b2:a5))>(a3?b1:a4)):((^(b0?a3:a4))!==(b1>>b4)));
  assign y8 = (|(3'd4));
  assign y9 = {((((2'd2)&(&a5))<<<((3'd7)<<(&p7)))|(+(((~b5)<<{a2,p7})!=(!(p4|b1)))))};
  assign y10 = (&{1{{1{(~^(^(|(p9!=a0))))}}}});
  assign y11 = (2'sd0);
  assign y12 = ((~^(5'd13))+((-4'sd1)>>>(p5+a5)));
  assign y13 = $signed((((4'd6)<<<(b5+b0))>>>(a1?p11:a4)));
  assign y14 = (~((~&((+b4)?(a4?a3:p13):(~|b5)))?(~&((a1?b3:p7)?(p9?p4:a2):(&p14))):(!((a5?a2:b0)?(-p9):(+a3)))));
  assign y15 = (+(~(+{1{((-{2{(b0&p13)}})>>((p11>b2)>>>(b4&&b2)))}})));
  assign y16 = (((p10>a1)/p11)>>>(-3'sd1));
  assign y17 = {{{{a1,b3},{b4,a0,p15},{p16,p10,a2}},{{a2,p2,b0},{{p9}}},{{b3,p17,p0},{p13},{p10}}}};
endmodule
