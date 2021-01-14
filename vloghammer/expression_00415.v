module expression_00415(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((2'd0)?(4'd2):(5'd28));
  localparam [4:0] p1 = (|(3'd6));
  localparam [5:0] p2 = (({4{(3'd7)}}>(+(-(-2'sd1))))<<(5'sd7));
  localparam signed [3:0] p3 = (-3'sd3);
  localparam signed [4:0] p4 = {1{(3'd5)}};
  localparam signed [5:0] p5 = ({(-2'sd1)}<={(4'sd4),(5'sd11)});
  localparam [3:0] p6 = (((2'd2)<<(2'd0))?((4'd5)?(4'd8):(2'd0)):((5'sd8)?(-4'sd2):(2'd3)));
  localparam [4:0] p7 = (-(((-2'sd0)>>(2'sd1))<=(-4'sd2)));
  localparam [5:0] p8 = ({(6'd2 * (5'd1)),((-4'sd3)||(3'd0))}?({(3'd6),(5'd28)}?((-3'sd3)?(5'd25):(-4'sd1)):((2'sd0)^~(5'd26))):{((-4'sd2)==(-5'sd11)),((-4'sd0)<<<(5'd3))});
  localparam signed [3:0] p9 = ((3'd7)^(-2'sd0));
  localparam signed [4:0] p10 = (2'sd1);
  localparam signed [5:0] p11 = {{(5'd2 * {(2'd3),(5'd30)}),(((-3'sd1)&&(4'd2))?(-3'sd1):{(-3'sd3),(5'd24),(3'sd3)})}};
  localparam [3:0] p12 = (^((-5'sd13)<(-3'sd1)));
  localparam [4:0] p13 = ((~|(~^(3'd4)))?(((-4'sd7)&(4'sd0))-((3'd3)>>(5'd11))):(3'd3));
  localparam [5:0] p14 = ((~^((3'sd0)>=(3'sd3)))%(5'd12));
  localparam signed [3:0] p15 = ((-({2{(2'd0)}}-(~|(5'd6))))<<(+(|{2{((5'd5)!==(3'd3))}})));
  localparam signed [4:0] p16 = (4'sd5);
  localparam signed [5:0] p17 = (4'sd5);

  assign y0 = $unsigned((2'd1));
  assign y1 = ({1{({4{a5}}>>>{a0,b2})}}===$signed({$unsigned({a2}),(b5^b2)}));
  assign y2 = {{(~|b2),(~b4)}};
  assign y3 = ((((&b3))?(b5?b1:a1):(3'd3))&&((b1==a2)?(~(a0>>b2)):(5'd1)));
  assign y4 = ((~^{3{(~b2)}})>{1{({1{b2}}===(b4?a0:b3))}});
  assign y5 = $unsigned(((b1*a2)*(p12/b2)));
  assign y6 = (4'd11);
  assign y7 = {$unsigned($signed(($signed((6'd2 * p1))))),$unsigned({$unsigned(p17),$signed(p11),{p14}}),{(a5<=p15),(p4<<p8)}};
  assign y8 = (((p13?a4:a1)>>(p12?p14:p8))?({p17,b4,p6}&(a0===b1)):(~{(a2==p2),(p3<<p5)}));
  assign y9 = (2'd0);
  assign y10 = (5'd15);
  assign y11 = (^((+(a2?b4:a3))|(!(a2?b0:a0))));
  assign y12 = $unsigned($unsigned(((p1?p11:p7)?$signed(p3):(a2))));
  assign y13 = (($unsigned(p1))<=(p13>>b3));
  assign y14 = ((p5^p12)-(b4|p15));
  assign y15 = (~|((4'd2)===(3'sd0)));
  assign y16 = ({(((p11^a5)-(a3||b4))&&{p15,b2,p10})}>{{{p14,p10},(b0^p1),(p17<p6)},{((p0+p9)>>>(b5-b2))}});
  assign y17 = (~&(|(6'd2 * (b2%b0))));
endmodule
