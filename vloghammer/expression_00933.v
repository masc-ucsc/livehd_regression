module expression_00933(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (!(((2'sd0)?(-5'sd2):(-5'sd4))?((5'sd5)?(5'd22):(2'd2)):(4'sd6)));
  localparam [4:0] p1 = ((((2'd3)>(-2'sd0))<((5'sd1)>>>(3'd6)))<=(((5'd30)>>>(5'd13))>(-2'sd1)));
  localparam [5:0] p2 = ({2{(+(-4'sd5))}}!==(((5'd2)?(-3'sd1):(-2'sd1))^~(~^(2'sd1))));
  localparam signed [3:0] p3 = (~|(~({3{(4'sd4)}}?((-2'sd1)?(4'd11):(3'sd3)):{2{(4'sd3)}})));
  localparam signed [4:0] p4 = (-{(|({(-2'sd0),(4'd14)}?(&(5'sd15)):(~&(2'd2))))});
  localparam signed [5:0] p5 = (|(-3'sd2));
  localparam [3:0] p6 = (&((&{2{((5'd16)!==(5'd22))}})^(((2'd0)<<<(4'd6))^~((3'sd2)||(2'd3)))));
  localparam [4:0] p7 = {2{(~^(5'd26))}};
  localparam [5:0] p8 = {1{(4'sd0)}};
  localparam signed [3:0] p9 = {2{((5'sd12)-(-4'sd7))}};
  localparam signed [4:0] p10 = {2{(5'sd1)}};
  localparam signed [5:0] p11 = {4{(4'sd2)}};
  localparam [3:0] p12 = (4'd4);
  localparam [4:0] p13 = {(|(-4'sd5)),{(-4'sd1),(2'd1)}};
  localparam [5:0] p14 = (!({3{(&(5'd31))}}!=={4{(3'sd0)}}));
  localparam signed [3:0] p15 = (((~|(3'sd0))<(|(3'd7)))||({(-3'sd2)}==={(-3'sd1),(4'd5),(2'sd0)}));
  localparam signed [4:0] p16 = (~^(~^((~|((6'd2 * (2'd1))|{(5'sd5),(4'd15),(-5'sd7)}))!=={(~^(|(5'sd14))),((5'd31)^(3'sd2))})));
  localparam signed [5:0] p17 = (~|(-(+{((2'd2)|(3'sd3))})));

  assign y0 = ({p4,p15,p15}^~(p1?p6:p11));
  assign y1 = ((p5?b2:a0)?(6'd2 * p1):{2{p1}});
  assign y2 = ((4'sd2)!=(-2'sd0));
  assign y3 = (((a5>>>a2)|(b2<=b0))|((a1+p15)!=(b2>>>a1)));
  assign y4 = {1{(|{{2{p17}},{4{p15}},(p2||p11)})}};
  assign y5 = (({1{(2'd0)}}>{3{b2}})-{1{(5'd7)}});
  assign y6 = (a2);
  assign y7 = ((a3?b0:b0)?{4{p12}}:((a5!=b3)==(a1?p7:a3)));
  assign y8 = $signed(({3{(!a1)}}-((a2?a2:a5)===(a4?a5:a2))));
  assign y9 = ({(^(p17||p2))}-((~p14)^(p13||p9)));
  assign y10 = (3'd3);
  assign y11 = (!(((|({3{a1}}<(~b0)))===({2{a1}}>=(-a2)))>>>(~|(+{1{((b2||a5)|{3{p3}})}}))));
  assign y12 = (~|((p14||b0)?(a3+b4):(b5+p8)));
  assign y13 = {2{((p5==p4)<={2{a1}})}};
  assign y14 = (6'd2 * (~^{b1}));
  assign y15 = $unsigned(((5'd2 * (a2?b0:a0))));
  assign y16 = {((-3'sd1)?(a3?p15:a4):(~^(b4>=b3)))};
  assign y17 = (~^((p11?a0:a3)%p17));
endmodule
