module expression_00282(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((((3'd2)>=(3'sd0))!=((-3'sd2)?(5'sd15):(5'd5)))?((4'sd1)?(2'd2):(2'd1)):(((4'd5)?(-3'sd3):(-2'sd0))<=((3'd2)^(5'd13))));
  localparam [4:0] p1 = {{(3'd0),(3'sd1),(2'd1)}};
  localparam [5:0] p2 = ((!((~^(2'sd0))&((4'sd5)>>>(5'd17))))!=({(-3'sd1),(3'sd0)}>{(5'd23)}));
  localparam signed [3:0] p3 = ({(5'd30),(3'd3),(2'sd1)}^(((3'd3)<(5'sd4))==((4'd6)<(3'd3))));
  localparam signed [4:0] p4 = (!(4'd12));
  localparam signed [5:0] p5 = (~|((-5'sd5)<(5'sd11)));
  localparam [3:0] p6 = (((4'd8)>(5'd5))-(-4'sd2));
  localparam [4:0] p7 = (~|(!((-4'sd5)^~(-2'sd0))));
  localparam [5:0] p8 = ((((5'd15)?(4'd0):(2'd0))<(~&(5'd8)))?({(4'sd3),(-3'sd1)}?(6'd2 * (2'd0)):(!(3'sd0))):(((-3'sd3)||(3'sd3))|{(3'd4),(4'sd5)}));
  localparam signed [3:0] p9 = {3{(4'd3)}};
  localparam signed [4:0] p10 = (~^{{(3'd2),(-2'sd0)}});
  localparam signed [5:0] p11 = (~^((4'd2 * ((5'd22)<=(4'd9)))&&((~((2'sd1)>=(4'd7)))<<((-5'sd11)<<(-2'sd1)))));
  localparam [3:0] p12 = {2{{((5'sd0)+(2'd0)),(3'd4)}}};
  localparam [4:0] p13 = (2'sd0);
  localparam [5:0] p14 = (((5'sd2)?(4'd7):(3'd2))>>(~(-2'sd0)));
  localparam signed [3:0] p15 = (+((5'd6)<<<(4'd13)));
  localparam signed [4:0] p16 = (4'd2);
  localparam signed [5:0] p17 = (4'sd4);

  assign y0 = (^((~&($signed((~|$unsigned(((p0%a5)))))-(+$unsigned((|(&(6'd2 * p1)))))))));
  assign y1 = {$signed({{$unsigned({(b2),$signed(a5),$signed(b4)}),$unsigned($unsigned({$unsigned({b5}),{b0,a2,a5}}))}})};
  assign y2 = {{{a2,p15,a5}},((3'sd2)?(p7?b1:p11):(p12?p4:p4)),(^(p13?b4:p9))};
  assign y3 = (-{{{b3,p4,p6},{p2,a1,a3},(~p6)}});
  assign y4 = {(2'sd0),(4'sd6),{(+(-5'sd13)),(b1===a2)}};
  assign y5 = {1{(p8?p3:p4)}};
  assign y6 = {(((a0)+(b5<=b5)))};
  assign y7 = (|$unsigned(b3));
  assign y8 = (((b2>b1)!=(b5+b5))?((a3&&a3)?(a1?a1:p15):(b5?b1:a2)):((p17!=b0)?(b1?a1:a3):(b1||b5)));
  assign y9 = {2{(~a0)}};
  assign y10 = (^(~|(~&{2{({4{a3}}!==((a4^~b5)|(+b1)))}})));
  assign y11 = {((-{3{{3{a3}}}}))};
  assign y12 = $unsigned({1{{(-({(+$unsigned((^{1{p1}})))}<<{$signed({1{p17}}),(~^$signed(p17))}))}}});
  assign y13 = (^((~^(!a5))));
  assign y14 = (~(((5'd2)>>(5'd19))!==(-4'sd3)));
  assign y15 = $signed(({{3{$signed(b0)}},(({a3,p13})<<<(a5?p1:b4))}));
  assign y16 = (((p16+p9)>>>(p7!=p12))>>>((~^p0)<<(b1==p4)));
  assign y17 = {2{(((p8!=p12)^{3{p14}})+({1{p6}}<={3{p5}}))}};
endmodule
