module expression_00453(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~&(&(((4'd8)?(5'd14):(2'd1))?((-5'sd1)?(-5'sd0):(4'd12)):(-(2'd0)))));
  localparam [4:0] p1 = (!(2'sd1));
  localparam [5:0] p2 = {(3'd7),(5'd14)};
  localparam signed [3:0] p3 = (((5'd9)-(4'd9))?((5'sd2)^(2'sd0)):((5'sd8)>(-2'sd0)));
  localparam signed [4:0] p4 = ({4{(5'sd2)}}>(5'd11));
  localparam signed [5:0] p5 = {4{(5'd29)}};
  localparam [3:0] p6 = (+(~|((|{((2'd1)|(5'd3)),(&(4'd7)),((2'd1)===(5'd7))})<<<(&((|(~&(3'd6)))&((2'd0)<=(-3'sd3)))))));
  localparam [4:0] p7 = (((3'sd0)?(2'd3):(3'sd2))?{(2'sd1),(4'sd6),(-5'sd1)}:(4'd10));
  localparam [5:0] p8 = ((|(4'd7))!==((4'sd7)>(4'd2)));
  localparam signed [3:0] p9 = (3'd4);
  localparam signed [4:0] p10 = ({2{((2'd2)<=(5'd22))}}|({1{(-5'sd14)}}!=((-3'sd0)>>(4'd2))));
  localparam signed [5:0] p11 = ({1{((-5'sd6)!==(-4'sd4))}}&{2{(5'd18)}});
  localparam [3:0] p12 = {1{((3'd0)?{3{(-5'sd11)}}:((3'd0)?(-3'sd2):(3'd3)))}};
  localparam [4:0] p13 = (~{4{(((5'sd10)?(5'd5):(4'd1))+(^(5'd15)))}});
  localparam [5:0] p14 = ((^{(&(4'd7)),((4'sd3)!==(5'd16))})?{(~^((3'd2)+(4'd0)))}:{{((5'sd14)!==(3'd1))}});
  localparam signed [3:0] p15 = {1{({2{(4'sd5)}}=={3{(-2'sd0)}})}};
  localparam signed [4:0] p16 = ((^(5'd11))===((3'sd3)&&(3'sd1)));
  localparam signed [5:0] p17 = ((~(3'd0))?((5'sd8)?(3'd7):(-2'sd1)):(+(2'd2)));

  assign y0 = ({p7,p12}?(!(b0>p12)):(p4>=p3));
  assign y1 = $unsigned((+((a4&&a4)?(p8&&a1):(b2==b5))));
  assign y2 = (b4?p4:p7);
  assign y3 = ((a2>>b5)>=(a5?b1:b0));
  assign y4 = {(a4<<<a3),{2{a5}},{1{b1}}};
  assign y5 = $unsigned($signed(((a1!==a2)?$unsigned(a2):(b2&p5))));
  assign y6 = (~|(~|{{4{(!{{4{a0}}})}}}));
  assign y7 = $unsigned($unsigned({1{(|((4'd12)))}}));
  assign y8 = (5'd24);
  assign y9 = (({p8,p6,p14}?(!{4{p11}}):$signed((p4<=p0)))-($signed({(p15&a4)})^~({p13,p12,p10}|{p16})));
  assign y10 = {3{{(+(p5>=p0)),{3{a0}}}}};
  assign y11 = (^$signed((((((p12||p16)))==(~^(p9<<p9)))>>>$unsigned($signed(((~|(p9|p11))-($unsigned(p10))))))));
  assign y12 = ((~^((&(a1===b2))-(5'd6)))>(-(2'd2)));
  assign y13 = (~|((-(p16||p11))>>>(2'd3)));
  assign y14 = {3{{2{(^(~^p9))}}}};
  assign y15 = ({2{{p6,p0}}}<<<{{1{b5}},(p5?b1:p14)});
  assign y16 = (+(!(!(&(~|(&(~^(!p9))))))));
  assign y17 = (~&$unsigned((((p15*a3)==(p6)))));
endmodule
