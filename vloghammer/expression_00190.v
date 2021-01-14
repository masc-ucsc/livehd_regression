module expression_00190(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((4'sd6)&(-2'sd0))<=((-2'sd1)?(5'd13):(-4'sd4)));
  localparam [4:0] p1 = ((4'd0)||(5'd26));
  localparam [5:0] p2 = (-5'sd0);
  localparam signed [3:0] p3 = ((((2'sd1)===(2'd3))+((5'd23)>=(-2'sd1)))&&(-4'sd4));
  localparam signed [4:0] p4 = ((^(~{2{(4'sd6)}}))?((3'd6)?(-2'sd1):(4'sd7)):(~^((-3'sd1)<(-4'sd2))));
  localparam signed [5:0] p5 = (!(-5'sd9));
  localparam [3:0] p6 = {(-5'sd11),(4'd3),(2'sd0)};
  localparam [4:0] p7 = (({4{(5'd28)}}>>>{4{(2'sd1)}})^~{3{((5'd15)>>>(4'sd3))}});
  localparam [5:0] p8 = ((((2'd2)-(-2'sd0))!=(^(-4'sd5)))<<<((3'd1)?(-3'sd3):(2'd0)));
  localparam signed [3:0] p9 = (~((-3'sd3)?(5'd10):(-3'sd3)));
  localparam signed [4:0] p10 = {2{(2'd2)}};
  localparam signed [5:0] p11 = (({(5'sd10),(3'sd3),(5'sd3)}^((-4'sd4)<<<(4'sd2)))>=(((2'd0)>>(4'sd0))?((-4'sd4)^(2'd3)):((2'd2)?(-4'sd5):(4'd3))));
  localparam [3:0] p12 = ((((5'sd15)?(4'd10):(4'd7))!==(^(-2'sd0)))?(((4'sd2)==(3'd1))>>((4'd2)?(2'sd0):(-3'sd2))):(((5'd30)<<<(4'd15))<<{4{(-3'sd1)}}));
  localparam [4:0] p13 = {(5'd27),(4'd13)};
  localparam [5:0] p14 = ((4'd2 * (4'd2))/(5'd2)); // FIX: no div 0
  localparam signed [3:0] p15 = ((2'sd1)|(5'sd7));
  localparam signed [4:0] p16 = {4{(~(~((4'd9)<(2'd2))))}};
  localparam signed [5:0] p17 = (~|(~^((~^(2'd2))<<((-2'sd0)?(2'd2):(2'd2)))));

  assign y0 = ((b5?p15:p11)>>>(p14?b3:b5));
  assign y1 = (a1<<b1);
  assign y2 = (p5?p7:a0);
  assign y3 = (!($unsigned({p12,p13,p0})>>>{p1,p3,p5}));
  assign y4 = (((4'sd0)?(5'd23):(p16-p9))^((b5?b3:b4)?(a3<a2):(-2'sd1)));
  assign y5 = ((~|(3'd4))?(b4===b0):(~|(p12||p14)));
  assign y6 = (~|(((-{p1})-(b5^b5))&(~&{({b5,b5}<={a4,b2,a5})})));
  assign y7 = (4'd11);
  assign y8 = (a0===b4);
  assign y9 = (6'd2 * (a2+p2));
  assign y10 = ((~^p14)+(b1-p15));
  assign y11 = (((p10>=p0)?(a2?p15:b2):(b4?b2:a5))>=(|((p4?b1:p4)?(^b3):{1{a3}})));
  assign y12 = (((p5-p17)>>{4{p17}})?((p4&p0)>={1{(p13?p4:b3)}}):(^({a0,p10}?(^p14):(p17?p1:b2))));
  assign y13 = (-((~(&(&(+p6))))|(~^{(p4>>>b0)})));
  assign y14 = ((((p13&p13)-(&p11))<=(&(p17&p5)))<(~&((p8>>p11)>(~^(~p3)))));
  assign y15 = (((p8?a0:p6)!=((^p15)!=(-p14)))!=((p1?p6:p15)?(b1!==a4):{4{p5}}));
  assign y16 = {3{{3{{b2}}}}};
  assign y17 = ((~&((|b1)>>(b3<a0)))-((~^p6)!=(+b3)));
endmodule
