module expression_00784(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((3'd5)<=(4'sd7))?(2'd1):(&(3'sd3)));
  localparam [4:0] p1 = (~^({1{((5'd21)?(2'sd1):(-4'sd1))}}!==((3'd2)?(-3'sd1):(-4'sd6))));
  localparam [5:0] p2 = {2{(~&(2'd0))}};
  localparam signed [3:0] p3 = (((5'd18)<(2'd0))?((-5'sd6)&(2'sd0)):(4'd2 * (5'd25)));
  localparam signed [4:0] p4 = ((((5'd8)%(-4'sd0))|((3'd0)%(5'd29)))&&(((-4'sd5)?(-4'sd7):(4'd5))-((2'sd0)/(4'd8))));
  localparam signed [5:0] p5 = ((((5'd24)<=(3'd1))===((3'd5)<<(-4'sd5)))<<(((2'd1)|(5'd25))>>(4'd2 * (3'd6))));
  localparam [3:0] p6 = (((^(2'sd1))?(5'd16):((2'd1)!=(5'sd12)))<((3'sd2)?(2'd1):(^(-2'sd1))));
  localparam [4:0] p7 = ({4{(2'd1)}}?((-3'sd0)?(4'sd6):(3'd5)):{(-(3'd7))});
  localparam [5:0] p8 = {4{{(5'd2 * (5'd6))}}};
  localparam signed [3:0] p9 = ({(-2'sd1),(5'd6),(2'd3)}?((3'sd2)>>>(-4'sd4)):((3'd2)?(4'd10):(-2'sd0)));
  localparam signed [4:0] p10 = {{3{(-5'sd3)}},((5'sd9)<=(-5'sd8))};
  localparam signed [5:0] p11 = ((2'd2)?(4'd8):(-((-2'sd1)*(4'sd4))));
  localparam [3:0] p12 = {((&((-5'sd13)?(-3'sd2):(-4'sd6)))?(^((3'sd1)?(5'd0):(3'd2))):{{(-5'sd6),(4'd6)},(-(3'd4))})};
  localparam [4:0] p13 = ((3'd0)+(-5'sd8));
  localparam [5:0] p14 = ((-2'sd0)|(4'd4));
  localparam signed [3:0] p15 = (((4'd6)+(5'd26))+((2'd2)>>>(3'd3)));
  localparam signed [4:0] p16 = (5'd7);
  localparam signed [5:0] p17 = (-(|(~&(((5'd25)?(-3'sd2):(3'd4))?((-3'sd1)^~(-2'sd0)):(|((2'd2)!=(2'd1)))))));

  assign y0 = (3'd6);
  assign y1 = (((2'd2)?{p16,p9}:(p10?p17:p0))?$unsigned($signed({(a5|p1),(p15?p2:p1)})):{(-5'sd10),(p3?p3:p8)});
  assign y2 = (((p14?b1:a3)^(-a1))?((+a5)||(a5>>a4)):(-((a5===a4)+(a1^a2))));
  assign y3 = ((5'd13));
  assign y4 = ({{1{(2'd0)}}}|(4'd5));
  assign y5 = (-(2'd0));
  assign y6 = {(p6?a5:p12),(b2?a1:b4)};
  assign y7 = ((2'sd0)%b4);
  assign y8 = ($unsigned($unsigned((|$unsigned((((p12)^~(6'd2 * a2)))))))<<<((^((+p4)||(a3*a1)))<=($unsigned(a0)+$unsigned(b1))));
  assign y9 = (~^$signed((3'd5)));
  assign y10 = (4'd4);
  assign y11 = ({(p5?b0:p13),(p9?b4:p11)}?{{a0,p17},(-5'sd3)}:{{1{a4}},(3'sd1),(4'd2 * p2)});
  assign y12 = {3{b3}};
  assign y13 = {4{(p15^a1)}};
  assign y14 = (^p5);
  assign y15 = ((((4'd1)^~(p16))<<<(4'd2 * $unsigned(p11)))^{({(p15|p0)}^~(4'sd6))});
  assign y16 = {({(&b0),(p10>a3)}&(!(+(~a0)))),(~|(+{(5'd2 * (+(b2^~b2)))}))};
  assign y17 = (&(|{((+a1)!=(~&p2)),(!((|b2)|{p17}))}));
endmodule
