module expression_00280(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{(3'd0)}};
  localparam [4:0] p1 = {{(5'd2 * (4'd15)),(5'd2 * (2'd2))}};
  localparam [5:0] p2 = (((2'd0)!=(4'd10))>((2'd0)?(2'sd1):(2'd2)));
  localparam signed [3:0] p3 = (3'sd3);
  localparam signed [4:0] p4 = {3{({3{(3'd2)}}+(-(4'd3)))}};
  localparam signed [5:0] p5 = (!(5'd18));
  localparam [3:0] p6 = (+((~^(!(-(~&{(5'd27),(2'd3),(4'sd1)}))))<<<(!{(^(5'd3)),(!(5'sd2)),(&(-4'sd4))})));
  localparam [4:0] p7 = (^(-{(+(|((4'sd7)>>>(4'd13)))),(+(&{(+(4'd0))})),(|(!(&{(3'sd3),(4'd9)})))}));
  localparam [5:0] p8 = {1{(((5'd15)|(-2'sd1))?(5'd3):((5'sd12)?(2'sd1):(3'd5)))}};
  localparam signed [3:0] p9 = (~(5'd14));
  localparam signed [4:0] p10 = ((4'd0)?(3'd4):(-5'sd12));
  localparam signed [5:0] p11 = (({((5'd14)==(3'd7))}||((3'd5)===(3'd4)))!=((^((5'd22)|(-2'sd1)))!==(~^(~|(2'd2)))));
  localparam [3:0] p12 = (~^(|((((4'd13)!=(2'sd0))!={2{(4'd13)}})?((+(2'sd1))==(~^(2'sd1))):{1{(|((-5'sd14)>=(5'd0)))}})));
  localparam [4:0] p13 = ((~((3'd6)^(-4'sd0)))!=={(4'd10),(-3'sd2)});
  localparam [5:0] p14 = ((4'd11)?(3'd0):(3'd6));
  localparam signed [3:0] p15 = ((((5'sd2)|(-2'sd0))|(^(-4'sd3)))>>((4'd4)*(-4'sd6)));
  localparam signed [4:0] p16 = {{2{((5'sd12)+(4'd9))}},{(2'sd1),(5'd27),(2'sd0)}};
  localparam signed [5:0] p17 = ((5'd22)>=(5'd26));

  assign y0 = ((&(5'd15))?(!(-5'sd2)):(!(|((a3?b1:b1)>=(&p13)))));
  assign y1 = ((a0!==b3));
  assign y2 = {(-b3),(b3||p1),(p14&&p7)};
  assign y3 = ((^((a0^p3)?(~p14):(b5&&a5)))?((p14&p4)?(~|p6):(p8>>>b2)):((b4?a3:b5)!==(~&(-b2))));
  assign y4 = {(~^{2{(^(-3'sd3))}})};
  assign y5 = (-(!({3{(5'd2 * p7)}}^{3{(+p17)}})));
  assign y6 = (({1{{4{p11}}}}<<{3{p4}})+{3{{2{b3}}}});
  assign y7 = ((a5<=b0)?(p9?b4:a4):(p17?p11:p0));
  assign y8 = ((2'sd1)||({(~{2{a1}})}));
  assign y9 = (~&(((p6&&a0)>>(|p13))+((b4!=p13)<(p11==a0))));
  assign y10 = (^({(b0),{a4,a1},(^p0)}<<{$unsigned({(~b2)})}));
  assign y11 = (3'sd1);
  assign y12 = (4'd2 * (b1>a1));
  assign y13 = (|(((-(b0<=a0))&({3{p17}}||(~|a1)))>>>((~&{1{(~b2)}})>>((p10>a1)<=(b2===a1)))));
  assign y14 = $signed({p17,a4});
  assign y15 = (|(^p0));
  assign y16 = (|(&(+{(~&((b3>>a4)!=(b0?a1:a5))),(|({b3,a4}?(~|b5):(a5>>b1)))})));
  assign y17 = {3{({b0,a3,a4}=={2{p4}})}};
endmodule
