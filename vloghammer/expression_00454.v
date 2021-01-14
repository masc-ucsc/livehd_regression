module expression_00454(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{{1{{2{{2{(5'd20)}}}}}}}};
  localparam [4:0] p1 = ((4'd6)!==(2'sd1));
  localparam [5:0] p2 = (~&({4{(5'd24)}}?{1{(4'd12)}}:{3{(4'sd2)}}));
  localparam signed [3:0] p3 = (~|((!(!((4'sd7)>>(5'd21))))==(!(~&(~&{2{(2'sd1)}})))));
  localparam signed [4:0] p4 = ((~&(&(-4'sd7)))^(~|(^(2'sd0))));
  localparam signed [5:0] p5 = (^(~&((~(~|(!((-3'sd2)>>>(-4'sd0)))))!=={1{{1{{4{(3'sd1)}}}}}})));
  localparam [3:0] p6 = {((3'sd3)>>(5'd10)),{1{(3'd6)}}};
  localparam [4:0] p7 = (5'd2 * ((5'd11)==(4'd5)));
  localparam [5:0] p8 = (((((5'd3)&(-2'sd0))&&((5'd1)/(-4'sd2)))==(4'd2 * ((4'd14)>>(5'd4))))&&((((3'd1)%(-2'sd0))/(-2'sd1))!=(((-4'sd0)<<(2'd0))+((-3'sd0)>(2'd0)))));
  localparam signed [3:0] p9 = {{{((5'd27)>=(4'd13))},(2'd0),((3'd5)^~(5'd2))}};
  localparam signed [4:0] p10 = {1{(((2'sd0)?(-5'sd8):(-5'sd15))&((4'd10)?(2'sd0):(3'd2)))}};
  localparam signed [5:0] p11 = {3{(5'sd6)}};
  localparam [3:0] p12 = ({2{((4'd2)<<(3'd2))}}||({3{(3'sd0)}}==((4'd9)>>(5'sd15))));
  localparam [4:0] p13 = (4'd5);
  localparam [5:0] p14 = {1{(~&{2{((4'sd4)===(3'd3))}})}};
  localparam signed [3:0] p15 = (((|(~&(4'd9)))<(|((2'd2)&(4'sd1))))>>>(((5'd22)|(3'sd3))?((5'd1)?(4'd14):(4'sd6)):(|(5'd27))));
  localparam signed [4:0] p16 = (-5'sd15);
  localparam signed [5:0] p17 = ((((4'sd2)!=(2'd2))||(^(-5'sd0)))?(((-2'sd1)|(5'd7))%(-2'sd1)):((3'd3)?(4'd4):(2'sd0)));

  assign y0 = $signed(($signed((b5>>a1))&((p0<<p12)^~{p17})));
  assign y1 = ((+a1)===(2'd1));
  assign y2 = ((~a3)?{b2,a5}:$unsigned(a2));
  assign y3 = ((-2'sd1)^((3'd7)<(b2<<<p2)));
  assign y4 = (4'd2 * (a1<<<b1));
  assign y5 = (5'd22);
  assign y6 = ((~^((~p10)>(a5?a0:p16)))<<<((~^(~|b3))!==(~|(~a4))));
  assign y7 = ((b5?a0:b5));
  assign y8 = (~|(~^(!(~|{(((b1?p1:b4)+(~&a1))<(~^(a3<=b5)))}))));
  assign y9 = (~(~^(+(b4?a4:p4))));
  assign y10 = {4{(p4?p9:p13)}};
  assign y11 = (^{4{(a3!==b2)}});
  assign y12 = (+(~^(+(-3'sd0))));
  assign y13 = {2{(-2'sd1)}};
  assign y14 = (~$signed((-(5'd2 * (a0?b1:a2)))));
  assign y15 = ({(a0&&a1),(b5^a3),(p8?a4:b4)}?(({b1,b3}&&{a1,a1})):(((p1?a3:a4))<<$unsigned((b1&&p0))));
  assign y16 = ((6'd2 * b2)|(p9^~p0));
  assign y17 = ((3'd2)&&(~&(~|(4'd4))));
endmodule
