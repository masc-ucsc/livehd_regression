module expression_00815(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((-2'sd1)===(3'd5));
  localparam [4:0] p1 = (((4'd4)?(3'sd3):(2'd1))?((4'd2)<<(5'd9)):(4'sd5));
  localparam [5:0] p2 = {{((2'sd1)?(2'sd1):(5'sd8))}};
  localparam signed [3:0] p3 = ({{1{{3{(5'sd8)}}}}}>({4{(4'd13)}}!=(~|(4'd2))));
  localparam signed [4:0] p4 = {1{{3{(-3'sd2)}}}};
  localparam signed [5:0] p5 = ({{(-4'sd4),(3'd3),(5'd23)}}?{(-5'sd12),(4'sd7)}:(~(~(5'd19))));
  localparam [3:0] p6 = ((5'sd13)===(4'd3));
  localparam [4:0] p7 = (({1{(5'd11)}}>>((-2'sd0)!==(-4'sd1)))>>(((-2'sd0)<<<(2'd1))^~{3{(3'd6)}}));
  localparam [5:0] p8 = (((5'sd7)|(-5'sd5))!=((5'sd8)||(4'd2)));
  localparam signed [3:0] p9 = (((3'd5)<(5'd30))?(!(5'sd2)):(2'd2));
  localparam signed [4:0] p10 = ((5'sd8)?(-3'sd3):(5'sd11));
  localparam signed [5:0] p11 = ((!(2'd1))>={(3'd7),(-4'sd3)});
  localparam [3:0] p12 = (((3'sd0)-(5'sd11))&&((2'd1)^~(3'd0)));
  localparam [4:0] p13 = ((((-4'sd0)?(-5'sd8):(5'd4))?((-2'sd1)!=(3'd2)):((3'sd1)?(3'd2):(4'd10)))?(((2'sd0)-(5'sd2))|((4'd4)-(2'd0))):(5'd0));
  localparam [5:0] p14 = (-(-(^(((2'sd1)>=(-3'sd1))/(3'd6)))));
  localparam signed [3:0] p15 = (|(((-4'sd1)>>>(4'd11))&(-4'sd5)));
  localparam signed [4:0] p16 = (({1{(3'd6)}}|((2'd3)?(2'd0):(4'd12)))?((-5'sd10)?(-5'sd13):(4'sd4)):{3{(3'd4)}});
  localparam signed [5:0] p17 = (((2'd0)<<<{3{(5'd2)}})>>>({2{(4'd7)}}!={4{(4'd10)}}));

  assign y0 = {((+(b4|a1))||{1{(-b3)}}),({1{(a3+b3)}}<<<(b3>>>a3)),({a4,a5}+(b3!==a0))};
  assign y1 = (3'd1);
  assign y2 = (^(~^{((~(p0?a3:p5))?{(-4'sd6)}:{(~&p13),(4'd2)})}));
  assign y3 = (!((~^b5)^~(p11&&p2)));
  assign y4 = (({1{{4{a5}}}}?(+(a2?b5:b1)):{b4,p2})&(|{1{{{b1,p2,a0},((b5?p9:a3)>=(^b4))}}}));
  assign y5 = (|b5);
  assign y6 = (((^a4)*(b1&&b0))<<<((a1!==b2)!==(~|a3)));
  assign y7 = ((~|(-(~{2{(~(-{1{((b3>>>p16)<(a4<<<p0))}}))}}))));
  assign y8 = (^{3{(((p6))>>>(p8^~p11))}});
  assign y9 = ({2{{a4,b5,a4}}});
  assign y10 = (5'd20);
  assign y11 = $unsigned(((p1?p17:b3)?(p14&b4):(p15?p2:p3)));
  assign y12 = (({b1}+{p10,a1,a2})||{4{a3}});
  assign y13 = {3{(b4?b1:a4)}};
  assign y14 = (|(&{({p5,b5}>>(5'd31)),((~&p2)?(p5<=b3):(p17>>>b5))}));
  assign y15 = ((-(&{{4{a2}}})));
  assign y16 = ((((~p2)!=(b5!==b5))<<(p12?p5:p7))<<((~&(!p17))?(p6?p10:p2):(p11?p0:p13)));
  assign y17 = (&(|(4'd2)));
endmodule
