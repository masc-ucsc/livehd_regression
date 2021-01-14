module expression_00676(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (!(~|(&(~^{(^(3'd0))}))));
  localparam [4:0] p1 = (~^(-(-{(5'd15)})));
  localparam [5:0] p2 = (((4'd4)<<(-3'sd1))?((2'd3)?(2'd2):((5'sd9)^~(3'sd3))):(((4'd15)+(4'd2))!==(+(2'd0))));
  localparam signed [3:0] p3 = ((|(2'd1))>>>(2'd1));
  localparam signed [4:0] p4 = ((3'd4)?(2'd3):(2'sd0));
  localparam signed [5:0] p5 = ({(4'sd5),(5'd0)}!=={(2'd0),(-3'sd2)});
  localparam [3:0] p6 = ({1{(^{3{(~(-5'sd6))}})}}^~{2{((-2'sd1)<(2'd3))}});
  localparam [4:0] p7 = ((2'sd1)?(5'sd2):(-4'sd2));
  localparam [5:0] p8 = ((((-4'sd7)?(-3'sd2):(5'd18))<{(2'sd0),(2'd0)})?((5'd2 * (3'd5))?((-3'sd2)?(2'd1):(3'd4)):((2'sd0)^(3'd4))):({(-4'sd4),(4'sd7),(2'sd0)}>=((5'd26)?(4'd5):(4'd3))));
  localparam signed [3:0] p9 = {{1{(2'd1)}},((4'd8)<(2'sd1))};
  localparam signed [4:0] p10 = ({(4'd14),(-3'sd2)}+(6'd2 * (3'd3)));
  localparam signed [5:0] p11 = {(2'sd0)};
  localparam [3:0] p12 = {((5'd26)<(-4'sd6)),(&(5'sd11)),(|(4'd1))};
  localparam [4:0] p13 = (2'sd0);
  localparam [5:0] p14 = (((~((-5'sd6)>(5'd13)))>>>(^((5'd27)<=(-2'sd0))))-(((3'sd0)>(3'd7))>>((3'd4)>>(3'd0))));
  localparam signed [3:0] p15 = (-5'sd3);
  localparam signed [4:0] p16 = ((|((3'd7)?(-4'sd0):(2'd1)))<<(+(~&(3'd5))));
  localparam signed [5:0] p17 = ((3'd1)||(-4'sd2));

  assign y0 = (-4'sd0);
  assign y1 = (((a1>>>b3)&&$signed(b2))!==((~&a2)^~(~&a5)));
  assign y2 = (-{(p7||p5),(~&b5),(~^p10)});
  assign y3 = {1{(2'd1)}};
  assign y4 = (5'sd11);
  assign y5 = (-4'sd1);
  assign y6 = ((a3&a1)>={1{a1}});
  assign y7 = (6'd2 * (2'd3));
  assign y8 = ((+$signed(((~^p9)!={3{p15}})))>=(~|(-5'sd0)));
  assign y9 = (($signed({p2,a0,b4})));
  assign y10 = ((p3&&b5)/p3);
  assign y11 = ((~&((b2&&b2)&&(b3+a4)))!==(&{2{(a4<=b5)}}));
  assign y12 = ((b2?a2:b4)&{b5,b3});
  assign y13 = {b1,b5};
  assign y14 = {(2'd1),(4'sd3),((~|b2)>>(!b3))};
  assign y15 = (((~|$signed((+b3)))<<<{2{(&a5)}})|(+$unsigned({2{(a3-b2)}})));
  assign y16 = {((4'sd1))};
  assign y17 = ({2{p3}}=={a0,a2});
endmodule
