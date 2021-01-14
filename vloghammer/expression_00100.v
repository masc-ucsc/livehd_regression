module expression_00100(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~((2'd1)<<({2{(2'sd1)}}&((4'd1)-(5'd31)))));
  localparam [4:0] p1 = (&(+((~^(4'sd1))<(~^(4'sd4)))));
  localparam [5:0] p2 = ({1{(5'd2 * (+{4{(2'd0)}}))}}||(((3'sd3)<<(-4'sd3))<<((4'd7)>(4'sd5))));
  localparam signed [3:0] p3 = (((-2'sd0)>=(-2'sd0))>>>((-3'sd1)|(2'd3)));
  localparam signed [4:0] p4 = ((!{2{((3'd7)<<<(-3'sd1))}})>>>((~^(+(3'd6)))>((-5'sd9)^~(4'sd3))));
  localparam signed [5:0] p5 = (+{1{{3{(+(2'sd1))}}}});
  localparam [3:0] p6 = ((((-4'sd4)&(4'd1))!=((4'sd0)|(2'd2)))-((~^(2'd3))||((5'd17)?(-3'sd2):(5'sd10))));
  localparam [4:0] p7 = {(3'd4)};
  localparam [5:0] p8 = (((-5'sd2)?(3'sd1):(2'd0))?(&((5'd14)|(-5'sd13))):(&((5'd14)^(-4'sd2))));
  localparam signed [3:0] p9 = ((4'd8)<<<(3'sd0));
  localparam signed [4:0] p10 = {(~&({2{(5'd9)}}<<<(|((3'sd3)&&(2'd0)))))};
  localparam signed [5:0] p11 = (+{2{(~|{1{(5'd2)}})}});
  localparam [3:0] p12 = (({((3'sd3)==(3'sd3))}&&{(3'd6),(5'd22)})+{((-4'sd5)>>>(2'd0)),((5'd1)==(5'd31)),{(-5'sd8)}});
  localparam [4:0] p13 = (+{{(4'sd3),(-4'sd5)},(~^(3'sd3)),((2'sd0)?(3'd2):(4'sd4))});
  localparam [5:0] p14 = (3'sd1);
  localparam signed [3:0] p15 = ((5'd2 * (4'd12))==((4'd11)?(-4'sd1):(4'sd4)));
  localparam signed [4:0] p16 = ((2'd1)?((3'sd2)?(2'd0):(2'sd1)):(3'd4));
  localparam signed [5:0] p17 = {1{{1{(-4'sd2)}}}};

  assign y0 = (~&p14);
  assign y1 = {3{b4}};
  assign y2 = (&(&(~|(~|(~|(-(~|(~(+(~(|$signed((-$signed((&(-(~|(-(-(b2))))))))))))))))))));
  assign y3 = (((p4&&a0)<<<(b5!==a5))>>>{(p10),(a1)});
  assign y4 = (-$unsigned(((~|$signed($unsigned((+{p5})))))));
  assign y5 = ((((p5-b1)>=(p8<=b1))&((b0?p11:p7)<<<(p14==a2)))>=((a0-p5)%a0));
  assign y6 = ({3{(p4||p5)}}==(((2'd0)>>>(~&p14))==((-3'sd3)>>{p0,p17,p11})));
  assign y7 = (~^(~^(((|(|(-3'sd3)))<(~|(b3<<a1)))>=($unsigned((|(5'd24)))===((|b3)<(^b2))))));
  assign y8 = {b1,p9};
  assign y9 = (-$unsigned(((p12<<<b0)<=(p11))));
  assign y10 = (~^(4'd2 * {2{a0}}));
  assign y11 = $unsigned((~|{$unsigned(b4),$unsigned(p10)}));
  assign y12 = {3{(b0?a1:a3)}};
  assign y13 = ((5'd15));
  assign y14 = (b4>>>p11);
  assign y15 = {1{{3{(4'd15)}}}};
  assign y16 = $signed(({3{{4{{4{p0}}}}}}));
  assign y17 = $signed($unsigned(((2'd1)?((a3?a2:a5)?$signed(b3):(b4?a3:a5)):(4'sd6))));
endmodule
