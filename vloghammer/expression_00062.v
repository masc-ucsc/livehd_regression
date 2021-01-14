module expression_00062(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (2'sd0);
  localparam [4:0] p1 = {2{{{(4'd10),(3'sd0)}}}};
  localparam [5:0] p2 = (^{(2'd2),(4'd7),(4'd13)});
  localparam signed [3:0] p3 = ((((-5'sd1)?(-4'sd0):(2'sd0))||(-(3'sd3)))^(((-3'sd1)^~(4'd4))>>>(~&(-5'sd13))));
  localparam signed [4:0] p4 = (-3'sd1);
  localparam signed [5:0] p5 = ({{2{((3'd4)<<(2'sd0))}}}=={3{((5'sd13)<<<(2'sd1))}});
  localparam [3:0] p6 = ((2'd3)?(2'd0):(3'd5));
  localparam [4:0] p7 = ((~|{1{(~&(3'd6))}})+(5'd4));
  localparam [5:0] p8 = ({4{(3'd2)}}>>>{2{(|(5'd11))}});
  localparam signed [3:0] p9 = ((4'd2 * ((3'd6)-(5'd5)))>(3'd6));
  localparam signed [4:0] p10 = ((2'd0)<<(2'd0));
  localparam signed [5:0] p11 = ({(2'd0)}!==((2'sd1)?(4'sd1):(-3'sd0)));
  localparam [3:0] p12 = ((((3'd7)==(5'd22))>((4'd9)&&(4'd2)))^~(-{((5'd23)&(-2'sd1))}));
  localparam [4:0] p13 = (!(&(&((^(&((2'sd1)!==(-4'sd5))))=={(~(~{(3'd0),(4'd11)}))}))));
  localparam [5:0] p14 = ((2'sd1)!==(-2'sd1));
  localparam signed [3:0] p15 = {3{(-(-(~|((5'sd6)+(4'd2)))))}};
  localparam signed [4:0] p16 = ((((3'd1)?(2'sd1):(2'd2))&&((5'd25)|(4'sd4)))<<((-(-4'sd1))?(|(2'd1)):((5'd8)?(5'd29):(-3'sd2))));
  localparam signed [5:0] p17 = (^((5'd15)?(2'd0):(-4'sd2)));

  assign y0 = (~|(2'd0));
  assign y1 = (4'd2 * (a1!==b2));
  assign y2 = (p8?p16:p9);
  assign y3 = (a5&b0);
  assign y4 = (&{1{(((4'd2 * b1)^(b4?b2:p13))<={1{{4{b1}}}})}});
  assign y5 = (($signed((~^p4))|(a4<<<p12))?((b4?p9:p3)?(b3<b5):(p7>>>p3)):{(+(+p7)),(b4^~b0)});
  assign y6 = (!(-(((b4<<<p12)<<(p2>p8))?(~^((a4<=a5)<=(|a4))):((p6<<p14)+(p11-p8)))));
  assign y7 = (((4'sd3)&&(a0+p7))>>>{(p5+p6),(|b5),(b1?a4:b5)});
  assign y8 = (p4>=b0);
  assign y9 = {1{(6'd2 * (p6>>p6))}};
  assign y10 = (4'd11);
  assign y11 = ((~^{1{((p11<<p4)-{4{p2}})}})&&{(2'd3),{p10,a3,p3},(4'd11)});
  assign y12 = $signed(((p3-p13)?{p8,p2}:(6'd2 * p0)));
  assign y13 = (^(|(p9+p15)));
  assign y14 = ((4'd15)<=(-3'sd3));
  assign y15 = {3{{4{$unsigned(p10)}}}};
  assign y16 = (+(((5'sd4)!==(~^(b1|b3)))!=((p9-b1)!=(p0-a2))));
  assign y17 = ((&((a3&a1)&((~|p11))))||((b4!==a5)>$unsigned((&a0))));
endmodule
