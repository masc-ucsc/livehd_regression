module expression_00651(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {3{(((-5'sd9)>=(4'sd3))^((4'd1)<<<(2'd2)))}};
  localparam [4:0] p1 = (~^(5'd21));
  localparam [5:0] p2 = (2'd1);
  localparam signed [3:0] p3 = ((6'd2 * {(5'd12),(5'd10),(4'd1)})?((-5'sd13)?(-5'sd1):(5'd10)):((5'd25)?(4'sd3):(3'd2)));
  localparam signed [4:0] p4 = (-((-((5'd2 * (4'd7))<=((-3'sd3)?(2'd3):(4'd8))))<<{((5'd26)+(3'd1)),{(4'd5),(2'd3)}}));
  localparam signed [5:0] p5 = ((((-4'sd5)&&(2'sd1))?(^(4'sd3)):(-2'sd0))<(-2'sd1));
  localparam [3:0] p6 = ((4'd6)>>(4'd2 * (4'd10)));
  localparam [4:0] p7 = ((2'd0)<<(-2'sd1));
  localparam [5:0] p8 = {2{(((5'sd3)^(2'sd0))>=((2'd0)>>(-5'sd2)))}};
  localparam signed [3:0] p9 = ((2'd3)+(3'd5));
  localparam signed [4:0] p10 = ((~^((|((2'sd0)&(5'd22)))>=((-5'sd6)?(3'd3):(-2'sd1))))||(4'd2 * ((2'd2)?(3'd1):(5'd13))));
  localparam signed [5:0] p11 = (|((((4'sd7)!==(3'sd3))-{3{(5'd12)}})>=(|(2'sd1))));
  localparam [3:0] p12 = (((-4'sd4)>(5'd31))!==((4'd15)===(5'sd12)));
  localparam [4:0] p13 = {((-3'sd0)!=(5'd2))};
  localparam [5:0] p14 = (5'd12);
  localparam signed [3:0] p15 = ({4{(-2'sd1)}}-((4'd15)&(3'sd0)));
  localparam signed [4:0] p16 = {(-2'sd1),(4'd8)};
  localparam signed [5:0] p17 = ((((4'sd6)>(5'd15))^~((5'sd14)%(2'sd1)))<<<(((-4'sd0)<<<(3'd1))&&((-5'sd7)%(5'sd9))));

  assign y0 = ((b3<b2)?{p14,a5,b1}:{a2,a3,b0});
  assign y1 = $signed(($unsigned({a0,b3,a3})-(4'd2 * {a0,b2,p2})));
  assign y2 = {1{{4{{4{p6}}}}}};
  assign y3 = (2'd0);
  assign y4 = ((4'sd1)<<<(((-2'sd0)&&(p16>p14))&&(3'd0)));
  assign y5 = (~&(|((~|((~(!(($signed((~&$signed((&(!$unsigned((~^$unsigned(p13)))))))))))))))));
  assign y6 = ((|(!b0))?(b3?p6:a5):(b0?a5:p0));
  assign y7 = {(|b0),(b3?b2:b2)};
  assign y8 = ((((~p16)*(~|p1))!=((a0>>a0)!==(5'd2 * b1)))<(3'd4));
  assign y9 = {3{a0}};
  assign y10 = ({3{p16}}>>{p0,a1,b1});
  assign y11 = (((2'd1)<<(4'd5))+((-4'sd2)?(-3'sd0):(a4)));
  assign y12 = ((6'd2 * {{p1,p12}})>=(((p1!=p8)^(-2'sd1))-{p11,p16,p11}));
  assign y13 = {{(b2>=p8),(4'd12),(~^(p2==p16))}};
  assign y14 = (2'sd1);
  assign y15 = (|(($signed((b3<<b3))!=$signed((b5!=a5)))==$signed(((-2'sd0)))));
  assign y16 = ((!a1)>>{3{b1}});
  assign y17 = (3'sd0);
endmodule
