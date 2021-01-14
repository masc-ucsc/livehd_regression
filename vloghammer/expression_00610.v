module expression_00610(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ({3{((5'd26)?(2'sd1):(-5'sd3))}}>>{4{(~^(4'sd2))}});
  localparam [4:0] p1 = (~^(4'sd3));
  localparam [5:0] p2 = ((5'sd7)||(((-3'sd1)!=(2'd2))>{1{(2'd3)}}));
  localparam signed [3:0] p3 = (+((~(-2'sd0))^{2{(5'd5)}}));
  localparam signed [4:0] p4 = (~^((3'sd3)||(-4'sd6)));
  localparam signed [5:0] p5 = (((-3'sd3)>(-3'sd1))^(4'sd4));
  localparam [3:0] p6 = (^(^(^(|(&(|(~(~^(~|(2'd0))))))))));
  localparam [4:0] p7 = {{(5'sd15),(+(+{(2'd2),(~&(-2'sd1)),(-5'sd12)}))}};
  localparam [5:0] p8 = ((6'd2 * ((2'd1)<(3'd6)))|((5'd2 * (2'd3))>=((5'sd1)==(-4'sd6))));
  localparam signed [3:0] p9 = (((5'd26)<=(2'sd0))-((-4'sd0)>>(5'd5)));
  localparam signed [4:0] p10 = (~(+(3'sd2)));
  localparam signed [5:0] p11 = ((((2'd2)+(4'sd3))>((4'd5)>=(-5'sd7)))&(((3'd2)&(4'sd1))<=((3'sd1)?(-2'sd0):(4'd12))));
  localparam [3:0] p12 = {3{(4'sd2)}};
  localparam [4:0] p13 = (-2'sd1);
  localparam [5:0] p14 = ((2'd3)?(-2'sd1):(-2'sd1));
  localparam signed [3:0] p15 = (({(-2'sd1),(-5'sd14),(3'd0)}<=((5'd7)&&(5'd31)))!=(!(~|((-3'sd1)>>>(!(-3'sd2))))));
  localparam signed [4:0] p16 = (4'd2 * {1{((5'd5)&&(4'd4))}});
  localparam signed [5:0] p17 = (~|(2'd2));

  assign y0 = $unsigned(($signed((^b3))%b3));
  assign y1 = {2{{4{p7}}}};
  assign y2 = (5'd21);
  assign y3 = (3'd4);
  assign y4 = (({1{(p14>>p17)}}==((p7<=p12)&&(p9<p17)))+({3{p5}}<={2{(p16&b3)}}));
  assign y5 = {($signed(({p11,a4}==(b2?p16:a1)))^{$unsigned((a1|a0)),{b4,a0}})};
  assign y6 = (({2{a3}}&&(-2'sd0))?(-2'sd0):(b0?p15:b1));
  assign y7 = (((3'sd3)<=(b1?p0:a0))>={2{(-3'sd1)}});
  assign y8 = ((^(&({1{(4'd2 * a2)}}||$signed((~|p8)))))>>(((b4>>>b3)===(a3===b0))<<(-(p16^p12))));
  assign y9 = (4'd7);
  assign y10 = ((~^b4)>=(-5'sd4));
  assign y11 = {4{{2{a5}}}};
  assign y12 = (-(!(|(2'sd1))));
  assign y13 = ((p11>p14)||(a0!==b4));
  assign y14 = ((({a0,p6,p4}&{p17})<<<{(p5?a5:p9)})<=(((p6+p1)?(a3===b4):{p14,p11,p11})>>>((p16+p12)>=(p17^~p17))));
  assign y15 = (((-3'sd3)-(2'sd0))!==((b3|a0)||(b1<<<b5)));
  assign y16 = {(3'd7)};
  assign y17 = (&(&(4'd4)));
endmodule
