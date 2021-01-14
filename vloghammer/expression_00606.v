module expression_00606(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (-{(&(-5'sd0)),((2'd2)?(-3'sd1):(-2'sd1)),((2'd0)&&(2'sd1))});
  localparam [4:0] p1 = ((~^(((2'd1)?(-4'sd0):(4'sd4))?(~&(3'sd1)):((2'd0)?(-2'sd1):(4'd5))))^~((~|((-4'sd3)?(5'd7):(-4'sd0)))=={(5'sd2),(2'sd1),(-5'sd7)}));
  localparam [5:0] p2 = (^(!(~|(((+(2'sd1))-((2'sd0)||(-2'sd1)))||(5'd26)))));
  localparam signed [3:0] p3 = (+(~&(&(~^{{(~&{(-3'sd0),(2'd3),(-4'sd5)}),{{(2'sd0),(3'd3),(-5'sd7)}}}}))));
  localparam signed [4:0] p4 = (~(((~&((3'd5)?(5'd7):(2'd1)))%(-5'sd9))?((^(4'd1))?((-3'sd2)?(5'd7):(-5'sd8)):((2'd0)?(-5'sd13):(-5'sd7))):((^(3'd6))?(|(4'd8)):((4'd9)|(4'd2)))));
  localparam signed [5:0] p5 = (((-3'sd0)-(3'd1))<{(-5'sd1),(-5'sd3),(-2'sd0)});
  localparam [3:0] p6 = (-2'sd0);
  localparam [4:0] p7 = {4{{(4'sd1),(4'd0),(-2'sd1)}}};
  localparam [5:0] p8 = (~&({1{(&((3'd4)^~(5'd7)))}}?(|(^{2{(4'd2)}})):((5'd30)?(5'd30):(5'd24))));
  localparam signed [3:0] p9 = ((3'd3)|(3'd6));
  localparam signed [4:0] p10 = (3'd3);
  localparam signed [5:0] p11 = (~(~(-((-(+(~(4'd13))))^~(|{(-2'sd1),(-4'sd7)})))));
  localparam [3:0] p12 = {2{(-2'sd1)}};
  localparam [4:0] p13 = {(((4'd5)?(5'sd1):(-2'sd0))?((4'sd3)?(2'sd0):(4'd2)):((-4'sd1)?(-2'sd1):(-3'sd1)))};
  localparam [5:0] p14 = ({((-4'sd2)?(3'd5):(5'd17)),{(2'd1)},(-4'sd0)}?(2'd3):({(2'sd0),(2'd1),(3'sd0)}?(2'd2):((3'sd1)?(4'd0):(-2'sd1))));
  localparam signed [3:0] p15 = ((((5'd8)<=(4'sd2))==(~^(4'd2)))|(((2'd1)<(2'd3))!==((-5'sd6)&&(4'sd5))));
  localparam signed [4:0] p16 = {(+{(3'sd3),(2'd2),(2'd3)}),{(-5'sd9),(4'd5),(-5'sd12)}};
  localparam signed [5:0] p17 = (-((4'd10)<<{4{(~(-5'sd12))}}));

  assign y0 = (&{4{{2{(b5+p12)}}}});
  assign y1 = ((^{(&(a5&&a5)),(b2||a5)})!==(((b5)<{a5,b0,b3})^((b5>=a5)>(b1&a2))));
  assign y2 = (4'd8);
  assign y3 = (~^{((+a2)!==(a1^b1)),((+p13)<(5'd2 * a2)),{p14,p8,p8}});
  assign y4 = $signed(p6);
  assign y5 = (2'sd0);
  assign y6 = (-p3);
  assign y7 = $signed((((p1?p9:a4)%p2)?((p12?p11:p16)?(b3>>>b0):(4'd2 * p13)):((p14<<<a5)?(b1==p5):(p11%a0))));
  assign y8 = (~{(+$signed(({p6}<=(~|b4)))),(^$unsigned((($unsigned(b5)<=(a1!==b4)))))});
  assign y9 = (+b2);
  assign y10 = ({4{{4{p11}}}}||{3{(p0==a2)}});
  assign y11 = ({2{a3}}==(~b0));
  assign y12 = (p10?b5:p11);
  assign y13 = ((&(~^(-4'sd2)))||(3'sd3));
  assign y14 = {4{(!{4{b4}})}};
  assign y15 = (^(4'd6));
  assign y16 = (5'd5);
  assign y17 = ({1{$unsigned({b1,p2,p4})}}?{{1{{1{p12}}}},$unsigned((a0))}:{{2{b0}},{4{b4}},{1{a4}}});
endmodule
