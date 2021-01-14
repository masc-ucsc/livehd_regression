module expression_00027(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((!(~^((2'sd0)==(5'd2))))?(6'd2 * ((5'd31)>>>(4'd5))):(-(^(&(-3'sd1)))));
  localparam [4:0] p1 = ({(5'd16),(3'd1)}?(-3'sd3):((2'd0)>=(-3'sd0)));
  localparam [5:0] p2 = ((-2'sd1)!=(5'sd0));
  localparam signed [3:0] p3 = (-4'sd7);
  localparam signed [4:0] p4 = {1{((~^((3'd4)!=(3'd3)))<(&(~&(3'd5))))}};
  localparam signed [5:0] p5 = (((2'd3)<=(4'd10))^~{(2'd3)});
  localparam [3:0] p6 = ((2'sd0)!==(5'sd14));
  localparam [4:0] p7 = {4{(-3'sd3)}};
  localparam [5:0] p8 = (^(|({(~^(-3'sd1)),(~(5'd31))}?((5'sd1)?(4'd1):(2'sd0)):{{3{(-3'sd0)}},((4'sd3)?(-3'sd2):(5'sd8))})));
  localparam signed [3:0] p9 = {3{(-4'sd7)}};
  localparam signed [4:0] p10 = ((((2'd3)>=(-2'sd1))-(~|(-4'sd0)))>>>((2'd3)?(5'd12):(2'sd1)));
  localparam signed [5:0] p11 = {({((4'sd4)>>>(5'd8)),{4{(4'd15)}}}<<<{1{(((4'sd7)<<(5'sd13))+((2'sd0)>=(-3'sd1)))}})};
  localparam [3:0] p12 = ({{2{{{2{(3'd4)}}}}}}<{3{{1{(2'd3)}}}});
  localparam [4:0] p13 = ((((3'd6)||(5'd16))>>>(~|(4'sd3)))<<<{3{((5'sd5)>=(4'd8))}});
  localparam [5:0] p14 = {{1{(2'sd1)}},((2'sd0)^(2'sd1)),{1{(2'd1)}}};
  localparam signed [3:0] p15 = {1{((2'd2)?(2'd0):(3'd5))}};
  localparam signed [4:0] p16 = (5'd0);
  localparam signed [5:0] p17 = (2'sd0);

  assign y0 = (5'sd10);
  assign y1 = ((~&(4'sd7))<(~((2'd1))));
  assign y2 = (!{4{a0}});
  assign y3 = (!{1{({3{p14}}?{4{a0}}:{3{p13}})}});
  assign y4 = (-3'sd3);
  assign y5 = ($signed(((((a1<a4)||$unsigned(a2))^((a3<<<b3)>>(a2>=b0)))))<={({b5,b0,b4}),{(b0>>>b3),(b0||a5),{p1,p11,a4}}});
  assign y6 = (p15<<p4);
  assign y7 = ((^a3)===(~a0));
  assign y8 = ({(p11^p9),{p5,b0}}!={{a0},(p8>b2),(p11>>>p6)});
  assign y9 = ({2{(&{p8,a2,a0})}}+((~^(^p1))?(p0?p6:p4):(p5?a1:p11)));
  assign y10 = (($unsigned((~^a2))>>(b4&a5))|(~((b1?b3:a3)?(~^b2):$unsigned(a4))));
  assign y11 = {(-4'sd7),{(3'd1),(-4'sd1),(2'd3)},(5'd11)};
  assign y12 = (~&(~|((~&(p3?p5:a5))?(~(a4?p1:p4)):(p16?b5:a5))));
  assign y13 = {(4'sd0)};
  assign y14 = (+(((b3?b3:a2)?(b5?b4:b1):(4'sd1))?((p8^~p5)&(~a3)):((~|a4)?(3'd4):(2'd2))));
  assign y15 = {3{(^{a0,a3,a4})}};
  assign y16 = ((2'sd0)<<({3{b3}}?(a0?p10:a5):(4'd14)));
  assign y17 = (3'd6);
endmodule
