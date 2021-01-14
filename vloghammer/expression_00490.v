module expression_00490(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((((3'd1)|(-2'sd1))||((2'd3)!==(4'd14)))>={2{{3{(-4'sd0)}}}});
  localparam [4:0] p1 = ({4{{(3'd0),(-4'sd5)}}}|({(-2'sd1),(-4'sd7)}<<{2{(-5'sd11)}}));
  localparam [5:0] p2 = (~&(~|(4'sd5)));
  localparam signed [3:0] p3 = (2'd0);
  localparam signed [4:0] p4 = {(-5'sd13),(5'sd9),(2'd3)};
  localparam signed [5:0] p5 = {{{1{(4'sd7)}}},({2{(5'd17)}}<<<{2{(4'sd7)}})};
  localparam [3:0] p6 = (^(-2'sd0));
  localparam [4:0] p7 = {{((4'd7)&(2'd3)),(~|(3'd6)),{(-2'sd1)}},(+(+(|{((3'd2)?(2'd1):(4'd3)),((-2'sd0)?(3'd4):(5'd0))})))};
  localparam [5:0] p8 = (4'd1);
  localparam signed [3:0] p9 = (6'd2 * (3'd5));
  localparam signed [4:0] p10 = (~&{2{(~&(((4'd1)|(2'd2))>>((-4'sd1)?(-3'sd0):(3'sd0))))}});
  localparam signed [5:0] p11 = (~|(4'd2 * ((3'd1)&(3'd4))));
  localparam [3:0] p12 = (~((|(&(4'd15)))>>((2'sd1)|(-3'sd2))));
  localparam [4:0] p13 = (({(3'd6),(5'd9)}>>(&(2'd0)))|(-5'sd11));
  localparam [5:0] p14 = (~^(|((4'd5)?(5'd7):(-4'sd4))));
  localparam signed [3:0] p15 = (5'd2 * (~(+(4'd8))));
  localparam signed [4:0] p16 = (|(!{1{(-(4'd14))}}));
  localparam signed [5:0] p17 = (&(((5'sd0)<=(4'sd4))?{3{(-5'sd9)}}:((-4'sd1)>>(-2'sd0))));

  assign y0 = ((~({4{a4}}|(5'sd13)))===(!{1{{3{(-3'sd2)}}}}));
  assign y1 = (3'sd3);
  assign y2 = {4{((p9?p7:p9)>>(a0===b0))}};
  assign y3 = (3'sd2);
  assign y4 = (|(~&(~|(-(~&(|(~|(-(~^(^(+(-a5))))))))))));
  assign y5 = {4{(5'd2 * (p13?b1:p0))}};
  assign y6 = ((!(({b2}-(b0!=p1))<<(~^(p17+a5))))+((+(4'sd4))===((b2===b1)>>>{2{b2}})));
  assign y7 = (^(2'd1));
  assign y8 = ((b5?p10:p1)<<<(p10?p5:b1));
  assign y9 = (((a1^~b5)>>>(p4?a5:b5))?((b5&b3)<<<(-(p9?a0:b3))):((a1!=p5)?(p8?a0:a4):(!p11)));
  assign y10 = (5'sd2);
  assign y11 = (2'd0);
  assign y12 = (~&(~|((b2===b4)<<(b4/p3))));
  assign y13 = (~(~&(-2'sd0)));
  assign y14 = ($unsigned($signed(p15))*$unsigned((a3?p17:p14)));
  assign y15 = {4{(b0?p7:p16)}};
  assign y16 = (~(|{3{(~b3)}}));
  assign y17 = (^(~^(|(!(~&(+(~(((a3%a5)>(a4+a3))>>(~&(|(~^((~a4)!==(^b5)))))))))))));
endmodule
