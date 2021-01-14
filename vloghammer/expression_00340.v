module expression_00340(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {1{((3'd5)?(2'd2):(4'd9))}};
  localparam [4:0] p1 = (((2'd1)/(-2'sd0))*(6'd2 * (3'd3)));
  localparam [5:0] p2 = (~({(4'sd3)}==={(5'd11),(5'sd14),(-2'sd0)}));
  localparam signed [3:0] p3 = (5'd2 * {(4'd5),(2'd1)});
  localparam signed [4:0] p4 = ((!((-4'sd6)+(2'd0)))>=(+((3'd7)!==(-2'sd0))));
  localparam signed [5:0] p5 = (((2'sd1)|(4'd13))===((2'd2)+(3'd7)));
  localparam [3:0] p6 = ((!(5'd3))?((5'd11)?(5'd16):(5'd14)):((-5'sd8)||(5'sd4)));
  localparam [4:0] p7 = (((3'd4)==(3'd0))>=((2'sd1)^(2'd3)));
  localparam [5:0] p8 = (-3'sd1);
  localparam signed [3:0] p9 = {2{{2{((4'd0)&&(2'sd1))}}}};
  localparam signed [4:0] p10 = ((-{(&(-5'sd11)),((3'd1)===(2'd1))})>>(4'd15));
  localparam signed [5:0] p11 = {((!((5'd7)!=(-3'sd3)))||(^(6'd2 * (2'd2)))),(((3'sd3)<<<(5'sd4))!=((-2'sd1)&&(-4'sd4)))};
  localparam [3:0] p12 = {4{(4'd0)}};
  localparam [4:0] p13 = (((+(4'sd7))?((5'd9)?(-3'sd3):(2'd3)):((2'd2)?(-5'sd7):(5'd13)))?(^(~(~((4'd10)?(5'sd11):(-2'sd0))))):(&((3'd1)?(2'sd0):(4'd1))));
  localparam [5:0] p14 = {2{{(4'd3),(3'sd1),(-3'sd3)}}};
  localparam signed [3:0] p15 = ({(((3'sd1)==(5'd3))^~((-5'sd4)<=(5'd30)))}=={{(3'd5),(5'd30),(5'd13)},((2'sd1)-(-2'sd1)),((4'sd0)&&(5'd3))});
  localparam signed [4:0] p16 = (~&(-2'sd0));
  localparam signed [5:0] p17 = (((-3'sd3)%(3'sd0))%(4'd10));

  assign y0 = ((b0===b5)^~(p7<<<a5));
  assign y1 = {(p5<<b0)};
  assign y2 = ((((5'd17)^~(2'sd0))|((^p7)&&(~^p6)))^(~&(+{(3'd2)})));
  assign y3 = (!(3'd4));
  assign y4 = {3{((~|p2)?(5'd18):(4'd13))}};
  assign y5 = {{4{(~|({b1,p4}))}}};
  assign y6 = ((^((6'd2 * a1)*(~&a2)))?(^$signed((!$unsigned((a4))))):(+((b1?p9:p0))));
  assign y7 = (6'd2 * (4'd2 * a2));
  assign y8 = {3{{1{({(p4?p5:p17)}<(p15>>>a4))}}}};
  assign y9 = $signed((((b1?b3:a5)?(a2?a1:a4):(b1?a3:p9))?((b3?p8:p9)?(~^b1):(-a5)):((&(~&$signed(b5))))));
  assign y10 = ((p11?p16:p9)?(p7>p10):{4{p7}});
  assign y11 = (^((-({2{{4{(p11>>>p3)}}}}))));
  assign y12 = {(!($signed(p2)?(5'sd15):(p4))),(&(4'd2 * (p0?a1:p14)))};
  assign y13 = $unsigned({2{$signed({1{(b5?p11:a3)}})}});
  assign y14 = $unsigned({$signed((~^$signed(p7)))});
  assign y15 = (4'sd6);
  assign y16 = ((~&a0)&(^p8));
  assign y17 = (a4?a2:b3);
endmodule
