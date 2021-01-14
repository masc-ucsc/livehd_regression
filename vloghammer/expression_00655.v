module expression_00655(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((|({4{(3'sd0)}}<{4{(3'd2)}}))>={2{((2'sd1)?(2'd3):(3'd0))}});
  localparam [4:0] p1 = (!(-2'sd1));
  localparam [5:0] p2 = ((((4'd8)?(3'd6):(5'd0))!=(4'sd3))?(3'd4):((5'd27)==((5'sd1)!=(3'sd2))));
  localparam signed [3:0] p3 = (&(&(~&(-(&(~|(&{4{(-5'sd11)}})))))));
  localparam signed [4:0] p4 = (2'sd1);
  localparam signed [5:0] p5 = ((3'd7)&&(2'd3));
  localparam [3:0] p6 = (-3'sd2);
  localparam [4:0] p7 = (-4'sd2);
  localparam [5:0] p8 = ((3'd2)?{(2'd3)}:((2'd1)?{(-3'sd3),(3'sd0),(2'd2)}:(2'd1)));
  localparam signed [3:0] p9 = {1{(((+{4{(3'sd2)}})>{1{{3{(3'd2)}}}})===(((3'd0)||(4'd7))>=((-2'sd1)<(4'd9))))}};
  localparam signed [4:0] p10 = {(5'sd11)};
  localparam signed [5:0] p11 = ({4{(2'sd1)}}<<{(-3'sd3),(5'd24),(3'd6)});
  localparam [3:0] p12 = ((((-3'sd3)==(2'sd0))&((5'd31)<=(2'sd0)))<<<{(5'd12),(2'd0),(2'sd1)});
  localparam [4:0] p13 = (4'sd0);
  localparam [5:0] p14 = {2{(~|(~^(-3'sd0)))}};
  localparam signed [3:0] p15 = (&{4{(5'd4)}});
  localparam signed [4:0] p16 = {((-4'sd5)>=(-5'sd13)),((2'd0)&(5'sd10))};
  localparam signed [5:0] p17 = {(!(3'sd0)),{{(4'sd6),((3'sd2)|(-2'sd1))}}};

  assign y0 = $signed((6'd2 * (p6/p2)));
  assign y1 = ((-p17)?(p9/p16):(p12>=a3));
  assign y2 = ($unsigned((((|p4)>>(-p0))))||((2'd0)<<<{p2,p13,b3}));
  assign y3 = (~{1{(!(((^a2)===(a3!=b3))+({4{p1}}<<(~&b5))))}});
  assign y4 = (-(^{{4{p10}},{{b2,b2,a5},(!a0)},(+{3{p15}})}));
  assign y5 = (~^$signed(p13));
  assign y6 = (((~|p3)>>>(~b0))?(a2?a3:p7):((a4===a5)||(b4===b2)));
  assign y7 = {3{$unsigned((~^(a1<<a5)))}};
  assign y8 = ({3{p6}}!=(p15||b5));
  assign y9 = ({b3,p17}>>>(-2'sd1));
  assign y10 = {(a1>b1),(+a3)};
  assign y11 = (^(((a5*a2)?(p15+a0):(5'd22))<=((b5?p4:p7)==(-3'sd2))));
  assign y12 = ((-2'sd1)^~(-2'sd1));
  assign y13 = {((p13<<a0)?(a0==b2):{p13}),((b4<p5)>(&(p7?p5:p12)))};
  assign y14 = ((((|p3)==(&b3))<({b4}<{a2,a0,a5}))==(({b1,b1,p17}!={b3,p4})<<(~|{(b2|a1)})));
  assign y15 = $unsigned(a1);
  assign y16 = (~&(-4'sd1));
  assign y17 = (4'd5);
endmodule
