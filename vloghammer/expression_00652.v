module expression_00652(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~&(-5'sd0));
  localparam [4:0] p1 = {(((4'd1)?(4'd8):(-3'sd3))>>>((4'sd0)^~(5'd28))),(~^((-3'sd1)!==(4'sd2))),{(-3'sd2),(3'd5),(5'sd9)}};
  localparam [5:0] p2 = (~^((^((~(!(3'd5)))<(|((5'd6)>(5'sd0)))))>>>(&(~^(&(~&((4'sd7)>=(5'sd0))))))));
  localparam signed [3:0] p3 = (!(~^(&(~|(-(~^(|(-(2'sd0)))))))));
  localparam signed [4:0] p4 = ((3'd2)?(-5'sd0):(-4'sd0));
  localparam signed [5:0] p5 = ((+((5'd11)?(4'd10):(4'd14)))?(3'd3):(2'd0));
  localparam [3:0] p6 = ((4'sd0)?(5'd6):(-4'sd3));
  localparam [4:0] p7 = {3{(~^((-2'sd1)>>(5'd23)))}};
  localparam [5:0] p8 = (4'sd6);
  localparam signed [3:0] p9 = {2{(&{2{((4'd2)?(2'd3):(2'd0))}})}};
  localparam signed [4:0] p10 = ((2'd1)<=(2'sd1));
  localparam signed [5:0] p11 = (((4'sd7)-(3'd7))?(~^{3{(2'd1)}}):(~|(~|(5'd9))));
  localparam [3:0] p12 = (((2'sd1)>>(3'sd1))>>>{3{(5'd25)}});
  localparam [4:0] p13 = (~|(^(~(((&(-5'sd7))*((5'd29)|(5'd13)))^~(~&(~&(^(|(-5'sd0)))))))));
  localparam [5:0] p14 = (({3{(-5'sd11)}}&&((-3'sd3)<=(3'd2)))>>>({4{(3'd2)}}?(~(4'd9)):((3'd7)>(4'd6))));
  localparam signed [3:0] p15 = (~|{2{(~^((3'sd0)?(3'd0):(2'sd0)))}});
  localparam signed [4:0] p16 = {4{{2{((2'd3)?(2'd1):(5'd10))}}}};
  localparam signed [5:0] p17 = {(4'sd6)};

  assign y0 = (p6?a2:a3);
  assign y1 = (~(5'd25));
  assign y2 = (($unsigned((p1))<=(p6>=p4))||((5'sd7)<<<((4'd9))));
  assign y3 = {2{{a4,b3}}};
  assign y4 = ((($unsigned((a5)))!==$signed((5'd2 * a2)))&($unsigned((a2!=b3))^~$signed($signed($signed(p4)))));
  assign y5 = ((p3?b5:a5)==$unsigned(b2));
  assign y6 = ((({p5,p7}<{p9,p16})<<({p15,p7}>=(p5&&p1)))|(~&{(b5!==b2),(p12==p17),(~|(^p5))}));
  assign y7 = (~^(+(~&(-(-(~|(~|((+((b4<<<a3)+(b2||a2)))===(-((a3&a3)&(a5-a4)))))))))));
  assign y8 = ((({$signed(b3)})|($unsigned(a4)<={b5}))<<{((a0<<<b4)),((a1)-{a5})});
  assign y9 = (~|(-3'sd1));
  assign y10 = (((~^(-2'sd1))&$unsigned((p5+p17)))<(5'd2 * (p8>>>a1)));
  assign y11 = ((~|(|(((b0<=b5)))))+($signed({$signed(p16),(a3?p4:b1),$unsigned(b5)})));
  assign y12 = (b2==a0);
  assign y13 = (-(a1!=a3));
  assign y14 = (|(-b2));
  assign y15 = ((+(+(~((p14<=b4)|(+a5)))))<<(((p6>>p5))<((!p14)&(-b0))));
  assign y16 = (3'd2);
  assign y17 = (({2{p3}}^~(p8&a3))|((a0===b1)>(+p2)));
endmodule
