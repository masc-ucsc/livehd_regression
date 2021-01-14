module expression_00118(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~^(^(!(|(+(^(((5'sd10)!=(4'd7))%(3'd6))))))));
  localparam [4:0] p1 = (+(((4'd8)>>(5'd19))-(!((4'd11)===(-3'sd3)))));
  localparam [5:0] p2 = (^(+(&((4'sd3)/(4'd10)))));
  localparam signed [3:0] p3 = (5'sd3);
  localparam signed [4:0] p4 = (5'sd3);
  localparam signed [5:0] p5 = ((-(~|(4'd2 * {(3'd3),(4'd11),(2'd1)})))>({(2'd0),(5'sd2)}!=((2'd3)^~(4'sd5))));
  localparam [3:0] p6 = (2'd3);
  localparam [4:0] p7 = ((|((2'd0)?(4'd10):(5'sd3)))?(3'd5):((5'd22)/(4'sd0)));
  localparam [5:0] p8 = ((((5'sd0)===(-4'sd7))^((3'd2)<=(2'd0)))!=({2{(3'd0)}}<<<((3'sd2)^(4'sd5))));
  localparam signed [3:0] p9 = {(-(2'd3)),((4'd11)<=(4'd9))};
  localparam signed [4:0] p10 = ({3{((-4'sd0)<<(5'd3))}}==(((3'sd1)<=(2'd2))<<<((2'd1)===(-2'sd1))));
  localparam signed [5:0] p11 = ({2{((2'd2)<(-4'sd1))}}&({4{(3'd4)}}<((2'sd0)&(3'd6))));
  localparam [3:0] p12 = (~{(~{3{(5'd10)}})});
  localparam [4:0] p13 = {3{({4{(4'd12)}}&((-2'sd0)+(-5'sd4)))}};
  localparam [5:0] p14 = ({2{{4{(5'sd2)}}}}<<{2{{(3'd0),(3'd1)}}});
  localparam signed [3:0] p15 = ((4'd5)?((5'd2)!=(2'sd0)):(4'd2 * (4'd0)));
  localparam signed [4:0] p16 = ((^{{(3'sd1),(2'd2),(-5'sd0)},((-3'sd3)>(2'd1))})<<<(-(^(((4'd9)?(-3'sd1):(5'd8))|((5'd27)&&(-4'sd1))))));
  localparam signed [5:0] p17 = {(&((3'sd3)>>(4'd2)))};

  assign y0 = ({3{(p2?p12:b2)}});
  assign y1 = {4{p12}};
  assign y2 = ($signed(((5'd8)?(a0!==a4):(2'd1)))&(~&($signed((3'sd0))<=(~|(a4?b5:p4)))));
  assign y3 = ((!p6)>=(^p1));
  assign y4 = ({$signed({b1,b0}),$unsigned({3{a5}}),(b1>a5)}|{{3{(b5^a1)}}});
  assign y5 = (^(&((~{p6})?(-4'sd5):{3{p16}})));
  assign y6 = {2{(((&a1)>>(b2&a0))===((&a1)?{3{b3}}:{2{a1}}))}};
  assign y7 = {{(p16>=a3),(5'd2 * p1)}};
  assign y8 = {{p14},(b1?b5:b4)};
  assign y9 = (!(2'd1));
  assign y10 = (3'sd0);
  assign y11 = ((a2===b2)==(p6<<p1));
  assign y12 = (4'd15);
  assign y13 = {p15,a3};
  assign y14 = {(|(((p9|p8)^{p2,p10})>=(~^(4'd3))))};
  assign y15 = (+{3{(b3?b5:b2)}});
  assign y16 = (2'd1);
  assign y17 = (&{3{{2{a1}}}});
endmodule
