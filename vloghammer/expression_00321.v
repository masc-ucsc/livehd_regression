module expression_00321(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((2'sd1)!=(2'd2))&(!{2{(3'd6)}}));
  localparam [4:0] p1 = (6'd2 * (4'd14));
  localparam [5:0] p2 = (!(3'd2));
  localparam signed [3:0] p3 = {1{((((-2'sd1)-(5'd2))===((2'd0)==(3'sd2)))+{3{((4'd1)<(4'sd7))}})}};
  localparam signed [4:0] p4 = (+(~|(|{{4{(-2'sd1)}},((4'sd6)?(-4'sd4):(-4'sd3))})));
  localparam signed [5:0] p5 = {{(-4'sd2)}};
  localparam [3:0] p6 = (-2'sd0);
  localparam [4:0] p7 = (4'd0);
  localparam [5:0] p8 = (((((-5'sd9)>(4'd0))&&(|(5'sd7)))&&(-((5'sd8)+(-3'sd1))))!=((((4'sd4)==(4'sd5))*((2'd0)/(-4'sd7)))>(((-5'sd2)>>(-4'sd5))>=(|(2'd3)))));
  localparam signed [3:0] p9 = (5'd2 * (|(3'd3)));
  localparam signed [4:0] p10 = {{((5'd6)?(2'd2):(-4'sd2)),((5'sd2)?(2'sd0):(3'sd2)),{1{((-3'sd3)>=(5'sd11))}}}};
  localparam signed [5:0] p11 = (2'd2);
  localparam [3:0] p12 = (~^({(-(5'sd2)),(4'd13)}^~(5'd2 * ((3'd7)>>(3'd0)))));
  localparam [4:0] p13 = (((3'd3)!==(2'sd0))!==((-5'sd6)?(5'sd15):(-5'sd3)));
  localparam [5:0] p14 = {1{(~^(&(3'sd2)))}};
  localparam signed [3:0] p15 = (-{(|(~&(&(!(5'd31))))),(~(&(~&(~^(3'd5))))),(|{((-3'sd3)^(-2'sd1))})});
  localparam signed [4:0] p16 = ((((-5'sd0)>>>(4'd1))>={{(5'sd3),(-5'sd5),(5'd30)}})!=({{2{(5'sd9)}}}||{2{(4'sd2)}}));
  localparam signed [5:0] p17 = {1{{2{{(-5'sd9),(-4'sd1)}}}}};

  assign y0 = (2'd2);
  assign y1 = (~&((-4'sd1)!==(3'd5)));
  assign y2 = ((a4)||(a4+a3));
  assign y3 = ((b2<=b2)?{a5,b5,a5}:{b0,a4});
  assign y4 = (2'd1);
  assign y5 = (5'sd8);
  assign y6 = ({{p10,p9,a2}}>>((p14||p4)<<(5'd17)));
  assign y7 = ((p7^p9)&&(a0<b4));
  assign y8 = (p5);
  assign y9 = {$signed((a4?b0:b1)),(b1<<b2)};
  assign y10 = {3{b1}};
  assign y11 = (5'd14);
  assign y12 = (4'd2 * (2'd2));
  assign y13 = ({(p9|a0),(-p0)}>=(^(p0<<<b4)));
  assign y14 = ((b4||b4)!=(-(^p2)));
  assign y15 = {{p6,p14},{p12}};
  assign y16 = (-({2{b1}}<<<(b1>=a5)));
  assign y17 = ((a4>=b4)==={(a5?b3:b0)});
endmodule
