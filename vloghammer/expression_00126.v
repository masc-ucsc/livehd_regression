module expression_00126(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((5'd23)!=(4'd10));
  localparam [4:0] p1 = (~((|(6'd2 * (3'd6)))?{1{(~(&(-5'sd8)))}}:((4'd10)?(5'd8):(4'sd6))));
  localparam [5:0] p2 = ((4'd4)-{(-3'sd0),(4'sd0),(4'sd1)});
  localparam signed [3:0] p3 = (-4'sd6);
  localparam signed [4:0] p4 = {((~|(2'd2))==(-5'sd10)),(~|{(5'sd9),(-2'sd1)}),(~|(2'd1))};
  localparam signed [5:0] p5 = (&{1{(5'd6)}});
  localparam [3:0] p6 = {{(-3'sd3),{(-4'sd5),(3'sd3),(2'sd0)},(3'sd1)},{(+(5'd7)),(~&(3'sd3)),(+(4'sd7))},(-5'sd14)};
  localparam [4:0] p7 = (5'd21);
  localparam [5:0] p8 = {(~|(-4'sd1))};
  localparam signed [3:0] p9 = ((5'sd5)|(-3'sd0));
  localparam signed [4:0] p10 = {1{((((2'sd1)!=(-3'sd3))===((-4'sd3)?(-3'sd0):(3'd3)))&&(((-4'sd6)?(5'sd6):(-4'sd4))|((-5'sd13)?(-3'sd3):(-5'sd11))))}};
  localparam signed [5:0] p11 = {{{(2'sd1),(5'd10),(3'sd2)}}};
  localparam [3:0] p12 = (((5'sd3)-(-2'sd1))%(5'd0));
  localparam [4:0] p13 = (((3'd6)>=(-5'sd11))/(2'sd0));
  localparam [5:0] p14 = {3{{4{(2'd2)}}}};
  localparam signed [3:0] p15 = ({((-2'sd1)>(-3'sd1))}==(~&((2'sd1)^~(4'd12))));
  localparam signed [4:0] p16 = {4{(3'd0)}};
  localparam signed [5:0] p17 = (((-3'sd0)||(2'd3))&(3'd2));

  assign y0 = (4'd2 * (&(a1<=a0)));
  assign y1 = {4{{1{{{3{a1}}}}}}};
  assign y2 = (~^(&(3'sd0)));
  assign y3 = (5'sd2);
  assign y4 = ((^{4{p16}})+(&(p15&&p12)));
  assign y5 = ((&(5'd10))?((p2>=p15)>>{p6,p0}):((2'd1)>(p9>p17)));
  assign y6 = (((b2==b3)?(b5+a5):{4{b1}})||((a4!=a1)?(b4>=p9):(b2||a2)));
  assign y7 = (((a0|a1)===(b4!=b5))^((b4+b4)*(a1>>p7)));
  assign y8 = ({1{p0}}||(5'd7));
  assign y9 = (~^(~&(&{3{(~&(p3&&p1))}})));
  assign y10 = (((($signed(a1)<(a4<b2))<$signed(((~|b1))))));
  assign y11 = {({(-({a5,a4,b5}^{b4,p16,p16}))}&{{(+b1),{b2,b2,b4}},({p6,b3}^~(~&b0))})};
  assign y12 = {2{{{p12,p17,p5},{4{p6}},{p7}}}};
  assign y13 = ({2{((b1>>>b2)<<<(p16&a4))}}^~(-5'sd12));
  assign y14 = (2'd3);
  assign y15 = (-(~^(((6'd2 * b1)||{3{a2}})?({2{a3}}!==(a0?b0:a2)):((+b1)<(p9?p6:a1)))));
  assign y16 = (~|(~&((p15<b0)>(-5'sd0))));
  assign y17 = (($signed({1{(b4<=b4)}})||((b3!==b1)^~(b1<<a5)))<$unsigned(({1{(b0|b2)}}^{4{a5}})));
endmodule
