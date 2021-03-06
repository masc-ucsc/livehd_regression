module expression_00962(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{{1{{1{(((2'sd1)<<(-3'sd0))&&{(3'sd3)})}}}}}};
  localparam [4:0] p1 = {2{{(-4'sd1),(5'd23),(3'd4)}}};
  localparam [5:0] p2 = ((3'd0)===(2'd1));
  localparam signed [3:0] p3 = {(-5'sd15),(5'd4),{(-4'sd0)}};
  localparam signed [4:0] p4 = {{(-2'sd1),(4'd15)},({2{(2'sd1)}}=={(2'd1),(-3'sd2),(4'sd1)})};
  localparam signed [5:0] p5 = ((-5'sd15)!=={(-3'sd2),(-5'sd0),(2'd3)});
  localparam [3:0] p6 = ((+(~((-2'sd1)?(-3'sd3):(-2'sd1))))?(!(!(!(-4'sd7)))):(((4'sd7)?(-2'sd1):(5'd25))==((4'd12)<<(3'd5))));
  localparam [4:0] p7 = {3{((5'd21)==(4'sd6))}};
  localparam [5:0] p8 = {1{{(-4'sd6)}}};
  localparam signed [3:0] p9 = (+(+{2{(&((4'd3)?(5'd15):(3'sd3)))}}));
  localparam signed [4:0] p10 = {({(-5'sd10),(-2'sd1)}>>>((-4'sd6)==(3'd1))),((3'd5)&&(4'd6)),(((2'd0)<<<(4'sd0))>=((2'sd1)<=(3'd5)))};
  localparam signed [5:0] p11 = (&(&{3{(2'sd1)}}));
  localparam [3:0] p12 = ((((4'd2)>>>(3'd0))<<<((2'sd1)^~(5'sd7)))>(4'sd4));
  localparam [4:0] p13 = (|{(~(-3'sd1)),{(-2'sd0),(2'd2),(5'sd4)},{2{(4'sd1)}}});
  localparam [5:0] p14 = ((4'sd4)<<{2{(-3'sd1)}});
  localparam signed [3:0] p15 = {((+(5'd22))?(~^(5'd12)):(|(5'd0)))};
  localparam signed [4:0] p16 = ((4'd5)|(3'sd2));
  localparam signed [5:0] p17 = {4{(&(3'd6))}};

  assign y0 = ((((-2'sd1)===(^b1))!==(4'd8))<<<(!{1{(&((p13|p0)==(p10>=p8)))}}));
  assign y1 = $signed($signed(p4));
  assign y2 = {3{$unsigned({{b1},{b0,a2,b5},$unsigned(b0)})}};
  assign y3 = $unsigned($signed(($unsigned(((p11||p5)>(b2===b0)))>=({4{p17}}||$unsigned((a0===a4))))));
  assign y4 = {((-3'sd3)),((-3'sd3))};
  assign y5 = {4{{4{a1}}}};
  assign y6 = ((({3{a1}}-(~&b0))^~((b3!==b1)?(b0-b2):(b3^~a2)))<<((3'd1)?(|(5'sd15)):(a2^~b4)));
  assign y7 = (-4'sd3);
  assign y8 = {4{b0}};
  assign y9 = (((~&(~|p15))|(p8^p14))||(5'd30));
  assign y10 = (!((+(&(((3'd2)&{p4})&&(~|(5'd29)))))));
  assign y11 = (~^{4{(p6>=p5)}});
  assign y12 = (((b5|b4)<<(b5>>a3))?((b1&&a5)|(a0<<b5)):(p12?a2:b1));
  assign y13 = $signed(({4{p11}}+({3{p13}}?{p8,p12}:(p4-b2))));
  assign y14 = $unsigned({(~a1),(b1),(b2-b2)});
  assign y15 = (-3'sd0);
  assign y16 = $signed((~^(-5'sd15)));
  assign y17 = (5'sd3);
endmodule
