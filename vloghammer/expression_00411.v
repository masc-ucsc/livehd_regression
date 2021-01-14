module expression_00411(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((&{1{((2'd0)>(-5'sd1))}})+{4{(2'd3)}});
  localparam [4:0] p1 = {4{(3'd0)}};
  localparam [5:0] p2 = ((-2'sd0)?(4'd10):(4'd0));
  localparam signed [3:0] p3 = {4{{3{(4'd10)}}}};
  localparam signed [4:0] p4 = ((2'd0)||(2'd3));
  localparam signed [5:0] p5 = ((((3'd4)?(5'sd3):(4'd5))>>>((-3'sd0)<(5'd21)))?{2{{4{(5'sd11)}}}}:((4'sd2)?(-5'sd12):(4'd4)));
  localparam [3:0] p6 = {({{4{(2'd1)}},(+(3'd3))}|({(2'd2)}!=((4'd15)===(5'd13)))),(^{1{(~^(~|{1{(~(!(3'd6)))}}))}})};
  localparam [4:0] p7 = ({{(-3'sd3),(4'd12),(4'd0)},((-(3'd1))<<(~|(2'd3)))}|(((3'sd2)!=(5'd3))?((5'd18)?(4'd12):(5'd2)):((3'd6)?(4'd11):(-3'sd0))));
  localparam [5:0] p8 = ((&((2'd1)?(4'sd0):(-5'sd8)))<<<((&(-4'sd2))<<(~^(2'd3))));
  localparam signed [3:0] p9 = (+(2'sd0));
  localparam signed [4:0] p10 = (5'sd13);
  localparam signed [5:0] p11 = {((-4'sd0)<(5'sd12)),{(5'sd13),(3'd1),(2'd1)}};
  localparam [3:0] p12 = ((3'd7)^~(2'sd1));
  localparam [4:0] p13 = {1{((4'sd6)?((2'sd1)?(-4'sd0):(-3'sd1)):(((5'd29)<(-2'sd1))==((-3'sd2)?(4'd15):(4'd12))))}};
  localparam [5:0] p14 = {2{(^((-4'sd2)<(-3'sd0)))}};
  localparam signed [3:0] p15 = (|((((4'd5)^~(2'd0))>>>((5'sd12)===(2'sd0)))<=(6'd2 * (~&(+(5'd11))))));
  localparam signed [4:0] p16 = {{{{(5'sd10)}},((5'd19)+(4'd3))},({(-4'sd4),(3'd1)}>=((2'sd1)|(3'd2)))};
  localparam signed [5:0] p17 = {2{(-2'sd0)}};

  assign y0 = ({(4'd2 * (4'd12))}?({(5'd2 * a2)}===(a2&&a1)):(~{2{(b2&b1)}}));
  assign y1 = ((4'sd4)*(p9%a1));
  assign y2 = ((~^((3'd2)&(|(b4>>a4))))&(((a4&&b2)%b3)-(~^(~|(b1-b5)))));
  assign y3 = ((|((a2&a4)<<(a1+b4)))|((~^b4)>={2{p7}}));
  assign y4 = (-4'sd5);
  assign y5 = {3{(b3-p12)}};
  assign y6 = ((a1&&b4)^~{3{b0}});
  assign y7 = ({p2,p13,p6}?(p0?p12:p10):(!(a4?b4:p9)));
  assign y8 = (~^(~&(5'd27)));
  assign y9 = {(+(|(&{(-(a2===b0)),(a5^~p12)}))),{((|p6)),(a0==p12),{p8,p3}}};
  assign y10 = $unsigned((!((-$signed($signed($unsigned((3'd2)))))&&((2'sd0)<=(&(5'sd7))))));
  assign y11 = (p5/a3);
  assign y12 = (!((!(~(+{{1{(+p12)}},{2{p10}}})))&&{(^{4{p8}}),(~{4{b4}}),(p12&b3)}));
  assign y13 = (-(~^{4{(a4?a2:a4)}}));
  assign y14 = (5'd2 * {p1,p7,b2});
  assign y15 = ($signed(({3{(^(~&p2))}}))>>$unsigned({1{{2{{3{b1}}}}}}));
  assign y16 = {{(b4||a5),(b5==p2)},({p4}?(p1>>b3):{b3,p15}),(({p1,p0,p1}>>>$unsigned((p11<<p7))))};
  assign y17 = (($unsigned(((5'sd5)<={2{p5}})))^(5'd30));
endmodule
