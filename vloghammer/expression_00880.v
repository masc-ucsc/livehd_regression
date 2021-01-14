module expression_00880(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((~^(~&((5'd4)<(3'sd2))))!=((-(-3'sd1))&(~|(2'd0))));
  localparam [4:0] p1 = (((3'd2)?(-(5'd16)):((4'sd2)?(4'd7):(3'sd2)))+((5'd23)!=((5'sd6)||(2'sd1))));
  localparam [5:0] p2 = {1{(({(-2'sd1),(2'd1),(-3'sd2)}^((-5'sd7)>(4'd10)))<<<{2{{4{(5'sd9)}}}})}};
  localparam signed [3:0] p3 = (2'd2);
  localparam signed [4:0] p4 = (-4'sd1);
  localparam signed [5:0] p5 = (|(~&(~&(+(|{1{(~|{3{(^(-2'sd0))}})}})))));
  localparam [3:0] p6 = {3{(~{4{(5'd14)}})}};
  localparam [4:0] p7 = ((^((4'sd5)<<(5'sd5)))^~(((2'sd0)^~(3'd0))&&((3'sd0)>>>(3'd1))));
  localparam [5:0] p8 = {4{(3'd3)}};
  localparam signed [3:0] p9 = (&(-(((2'd2)-(2'd2))?((5'd17)^~(-2'sd1)):(~{(-5'sd14),(-4'sd4)}))));
  localparam signed [4:0] p10 = {1{((5'sd3)^~(4'd11))}};
  localparam signed [5:0] p11 = (&(~&(~|(!(~&(~^(!(&(~&(5'd9))))))))));
  localparam [3:0] p12 = ((((2'd2)<(3'd7))<<<{(3'sd3)})<={3{(2'd3)}});
  localparam [4:0] p13 = ((((2'sd0)?(3'd2):(5'd31))>>>((4'd6)?(-2'sd0):(4'd14)))!=(((2'sd0)*(-4'sd6))?((2'd2)?(-5'sd1):(-4'sd7)):(!(2'd0))));
  localparam [5:0] p14 = ((2'd1)^~((~(~((5'sd12)&(3'd7))))>(~{2{(-4'sd7)}})));
  localparam signed [3:0] p15 = {(4'sd0),((-3'sd0)?(4'd0):(-5'sd9))};
  localparam signed [4:0] p16 = ({((-3'sd0)==(3'd3)),((-4'sd3)<<<(2'd2)),(-5'sd3)}<<<{1{(+((-5'sd15)!==((2'd0)<<(-4'sd5))))}});
  localparam signed [5:0] p17 = ({2{(~^{4{(2'd2)}})}}<({{(5'sd3)}}<<{1{{3{(5'sd11)}}}}));

  assign y0 = (~&(({2{p12}}>(a4?p8:p7))>>>((p11>p14)>>(p2>>>a5))));
  assign y1 = (2'd1);
  assign y2 = ((b1?b1:p5)?(!(a5?a0:a4)):{(&p4),(b0<p17)});
  assign y3 = ((((b0!=b4)^(~|p13))^~($signed(a2)===(5'd6)))|(&{((2'd3)|(5'd2 * $unsigned(p4)))}));
  assign y4 = ((~(b5<=a0))>=(+(a5<=p0)));
  assign y5 = ((p11?a5:a5)?{(p11+a0)}:{{b3,p8}});
  assign y6 = ((~|((5'd5)<=(-5'sd3)))^((5'd8)%p2));
  assign y7 = (2'sd1);
  assign y8 = (&{{p12,p10},{p16,p8},(p2<p16)});
  assign y9 = {(({4{a5}}^~(a5!==b2))>((-a0)|(!a3))),{((~|{2{b2}})>=({3{b2}}>(-b4)))}};
  assign y10 = (((b5?a5:b0)<<(a5?b4:p2))?(6'd2 * (~|(b0|a1))):(^(b1?b3:b0)));
  assign y11 = (-((((b0===b4)&&(-5'sd15)))));
  assign y12 = $unsigned({{(4'd11)},(+($signed((p15&&b3))^~$unsigned((4'sd2))))});
  assign y13 = {1{({3{(p4<a5)}}<{1{{4{(-5'sd2)}}}})}};
  assign y14 = (!((p14<<p5)&&{p15,p8}));
  assign y15 = (a3?b1:a0);
  assign y16 = (b1?b0:a4);
  assign y17 = (((4'd2 * (~&p1))>((a0?p12:p13)^~(4'd2 * p1)))&&(&((&b1)?(~p14):{1{p16}})));
endmodule
