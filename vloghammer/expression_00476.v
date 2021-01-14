module expression_00476(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((!{{(4'sd0),(-4'sd4)},(+(2'd2)),((2'd0)!=(3'd4))})<=(~^{(|({(3'sd3),(-2'sd1),(4'sd0)}^~(+(2'sd1))))}));
  localparam [4:0] p1 = ((~|(4'd2))?(~^(5'sd6)):(3'sd2));
  localparam [5:0] p2 = {(-5'sd3),(2'sd1),(2'd3)};
  localparam signed [3:0] p3 = ((((4'sd2)%(4'd1))+(2'd1))!=((~&((3'sd1)+(5'sd14)))<((2'd3)*(4'd0))));
  localparam signed [4:0] p4 = (((3'd4)%(-3'sd3))?(((4'd5)<(-4'sd2))%(2'd1)):(-4'sd7));
  localparam signed [5:0] p5 = (!(|(|((-3'sd3)?(2'd1):(3'sd0)))));
  localparam [3:0] p6 = ((5'd8)<<(!(((5'd5)+(3'sd0))>>>(4'd2))));
  localparam [4:0] p7 = (~|((((-2'sd0)!=(-5'sd11))!==((5'd19)!==(-2'sd0)))===(~(((-3'sd1)>=(3'sd2))^((5'd19)^~(-4'sd5))))));
  localparam [5:0] p8 = (-(^(~(((3'd4)===((-3'sd0)>=(4'd4)))&((~^(-2'sd1))>(2'sd0))))));
  localparam signed [3:0] p9 = ((((5'd13)-(-3'sd1))?(~&(3'd6)):((4'd15)^(2'd1)))-((3'd7)!=(5'd10)));
  localparam signed [4:0] p10 = (2'd0);
  localparam signed [5:0] p11 = (-5'sd2);
  localparam [3:0] p12 = {4{(-5'sd5)}};
  localparam [4:0] p13 = ((|((5'sd8)>>>(4'sd3)))^~((-4'sd2)<(3'sd2)));
  localparam [5:0] p14 = (5'd3);
  localparam signed [3:0] p15 = (~&{(3'd1),(-5'sd8),(-3'sd1)});
  localparam signed [4:0] p16 = {(^(-5'sd11)),{(2'd1),(2'd3),(-3'sd2)}};
  localparam signed [5:0] p17 = ({(-2'sd1),(-3'sd2),(-3'sd3)}^~((-2'sd0)?(3'sd1):(-5'sd13)));

  assign y0 = (a2>>>a4);
  assign y1 = {4{$signed({1{(3'd5)}})}};
  assign y2 = {((p3&&p15)<{b1,b5}),{(p5-p8),{(a1!==a3)}},({p15,p0}^~(p4>>a5))};
  assign y3 = (+{(p17?a3:a4),(5'd1),(&(-4'sd2))});
  assign y4 = {(a3!==a0),(~|{b0,b4})};
  assign y5 = $unsigned(((^((a1>=b5)?(+p9):{a3}))^~((a0?a2:b1)?(a2?p12:b1):(p3>=p3))));
  assign y6 = (~^(5'd2 * (!(p12-a1))));
  assign y7 = {{b3,b4,p15},{$signed(a3),(-p10)},(&(p7&&p16))};
  assign y8 = ((^($unsigned((~^(p2/a5)))==$unsigned((p4<=a2))))<=((($unsigned(b3)&&(b5^~a3)))<((-p1)>>>(a3<=p7))));
  assign y9 = (((b5===b0)!=(a5|a3))&&((p8>=p6)||{1{(!p1)}}));
  assign y10 = (-3'sd0);
  assign y11 = (~|((~|(4'd10))?({3{p10}}^(~&{1{p5}})):(-5'sd9)));
  assign y12 = ((&(!((b3*a4)!=(a4!==b4))))<=(~((|(^(+a5)))^(|(b1^~b5)))));
  assign y13 = (4'd15);
  assign y14 = (~{$signed(p7),(p13?p5:p9)});
  assign y15 = (+(~&(a1<<a4)));
  assign y16 = (((-5'sd2)-(p8||b2))&{(p15-a4),(a2||p6)});
  assign y17 = {(&(2'd0)),(5'd9),(~|(~&((b3>a1)>>(&a1))))};
endmodule
