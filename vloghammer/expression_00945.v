module expression_00945(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{(-3'sd3)}};
  localparam [4:0] p1 = (^({((5'sd6)>>>(-5'sd8)),(~&(-2'sd1))}!==({2{(2'd3)}}<{(3'd0),(3'd4)})));
  localparam [5:0] p2 = {3{(-3'sd3)}};
  localparam signed [3:0] p3 = (5'd2 * ((2'd1)<(3'd5)));
  localparam signed [4:0] p4 = ((5'sd7)^~(5'd13));
  localparam signed [5:0] p5 = ((((5'sd13)+(-5'sd8))^(|((2'd3)!==(4'd12))))|(~|(((2'd3)>=(4'd10))!=((4'd5)>>(2'sd0)))));
  localparam [3:0] p6 = {3{(-2'sd1)}};
  localparam [4:0] p7 = (+({1{(-2'sd1)}}<<<(&(-5'sd10))));
  localparam [5:0] p8 = (((4'd7)>>(4'd14))===(!{(2'd2)}));
  localparam signed [3:0] p9 = ((2'd3)?((2'd3)?(5'd15):(3'd5)):(5'd8));
  localparam signed [4:0] p10 = {(~|((2'd1)<<(4'd7)))};
  localparam signed [5:0] p11 = (~|(5'd27));
  localparam [3:0] p12 = {(({(-4'sd7),(3'sd1),(4'd8)}&&(6'd2 * (4'd7)))?(((4'sd0)==(-4'sd7))<((4'd2)?(4'd15):(3'd0))):(((2'd3)&&(5'd14))<=((2'sd0)-(2'd2))))};
  localparam [4:0] p13 = ((|(-2'sd1))||((~^((-4'sd2)*(-5'sd1)))<<(((5'd27)>>(3'd0))>=((-5'sd3)+(-2'sd1)))));
  localparam [5:0] p14 = {2{(3'd2)}};
  localparam signed [3:0] p15 = ((2'd0)<<<(3'sd3));
  localparam signed [4:0] p16 = (-4'sd6);
  localparam signed [5:0] p17 = (~|(+(|((|{4{(2'd0)}})||{1{(!{(4'sd2),(5'd31)})}}))));

  assign y0 = (((p7|p6)^(p6-a1))>>(b4?p3:b5));
  assign y1 = (2'd1);
  assign y2 = {3{{1{((p8)-(p7?p6:p3))}}}};
  assign y3 = (!(((^a1)<(+b0))|(+(&(~(b1!==b2))))));
  assign y4 = ((b1>>a3)?(a0!==a4):(a3?a0:b5));
  assign y5 = ({p5,p1,a5}?{p12,p11}:(^p14));
  assign y6 = ((4'd3));
  assign y7 = {4{b4}};
  assign y8 = (^(^(~^(~&(-3'sd0)))));
  assign y9 = (4'd2 * {p12,p13});
  assign y10 = (~^{(|{(+a0),(-p12),(~&p6)}),(~(&{((a1?p14:b0)?{a0}:(p15?b0:p16))}))});
  assign y11 = (-5'sd5);
  assign y12 = ((((p10||a5))<<<(b0<p9))<({3{p4}}?{2{p6}}:(p12&&p3)));
  assign y13 = (~|$unsigned($unsigned({(b5>>a5),{a1,b3,a3},{b5,a0}})));
  assign y14 = (|((4'd2 * (-$unsigned(p2)))));
  assign y15 = ((-3'sd0)<(2'sd0));
  assign y16 = $signed({2{(b5?p9:b2)}});
  assign y17 = (b5>>p11);
endmodule
