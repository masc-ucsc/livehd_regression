module expression_00990(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {1{{3{(2'd2)}}}};
  localparam [4:0] p1 = (3'd1);
  localparam [5:0] p2 = ((~&((-2'sd0)%(3'd2)))|((^(-2'sd1))^((-2'sd1)<(3'd5))));
  localparam signed [3:0] p3 = ((~(~^(-5'sd13)))%(3'd5));
  localparam signed [4:0] p4 = (2'sd0);
  localparam signed [5:0] p5 = {((~{(-3'sd1),(3'd3)})===(|{(4'd1),(4'd2),(4'd3)}))};
  localparam [3:0] p6 = (-((2'sd0)==(5'sd3)));
  localparam [4:0] p7 = ((-(3'd5))?{4{(4'd3)}}:{{(4'sd5),(4'd10),(2'sd1)},{(-3'sd2)},(~^(3'd3))});
  localparam [5:0] p8 = (-4'sd1);
  localparam signed [3:0] p9 = ((5'd28)?(5'd9):(2'sd1));
  localparam signed [4:0] p10 = (-4'sd3);
  localparam signed [5:0] p11 = (~|((5'd31)+(4'd8)));
  localparam [3:0] p12 = (&((3'd6)?(3'sd2):(4'd12)));
  localparam [4:0] p13 = (&(!((4'd15)!==(2'd0))));
  localparam [5:0] p14 = (|((!((5'd22)!==(4'd13)))*((5'd9)>>(4'd8))));
  localparam signed [3:0] p15 = ((((3'sd1)&(3'sd0))?((-3'sd3)?(-4'sd7):(2'sd1)):((2'sd0)<<(3'd4)))&&({(-3'sd0),(4'd3)}?((3'd0)?(2'sd1):(4'd9)):((2'd2)>=(-2'sd0))));
  localparam signed [4:0] p16 = ({4{(-4'sd2)}}?(|(2'd2)):((3'd4)<<<(2'd3)));
  localparam signed [5:0] p17 = ((6'd2 * (4'd9))|((2'd2)!==(4'd7)));

  assign y0 = (3'd6);
  assign y1 = (-4'sd0);
  assign y2 = ((a4&&a4)-(a2!=a4));
  assign y3 = ((~^{4{(a1!==a1)}})>=(({1{a2}}^~{3{a0}})!==({2{b1}}&&(b4<=b0))));
  assign y4 = {3{((p12?p4:p4)+(p2?p5:p10))}};
  assign y5 = (-2'sd1);
  assign y6 = (((p10&&p5)?(a5!==a3):(p14?b3:p14))?((p11?p11:p13)?(a2+p16):(p13?p0:a3)):((p7?p15:p14)<<(b4||b2)));
  assign y7 = ({3{{2{p1}}}});
  assign y8 = {1{{{2{a5}},{a4,b5},(-5'sd14)}}};
  assign y9 = ((a1===b2)<(-p8));
  assign y10 = {{1{{3{{1{p10}}}}}},(!{(|a2),(p15?p16:b2)}),{((p6<b2)?(p0&p10):(p6!=p11))}};
  assign y11 = (5'd23);
  assign y12 = (b1===b0);
  assign y13 = (a0^~a1);
  assign y14 = (((p10>>>b1)+(!(a1===b0)))==(&((a3/b2)+(a5<<a1))));
  assign y15 = ({(p1&&b1),{p9,b5,p10},(-b0)}?{(p11&&a2),(|p0)}:(~&{(p15^~p3)}));
  assign y16 = {p16,a3,b3};
  assign y17 = (+{4{(-{(~|(a5<=b1))})}});
endmodule
