module expression_00892(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {4{(5'd15)}};
  localparam [4:0] p1 = (-5'sd1);
  localparam [5:0] p2 = (3'd6);
  localparam signed [3:0] p3 = (3'd5);
  localparam signed [4:0] p4 = (~{(-(5'sd2)),(|(-2'sd1))});
  localparam signed [5:0] p5 = (~|(-5'sd1));
  localparam [3:0] p6 = {4{((5'd11)?(3'd3):(4'd15))}};
  localparam [4:0] p7 = {({(5'sd0),(-5'sd3),(-5'sd5)}&((2'd3)<(4'd5)))};
  localparam [5:0] p8 = (((-2'sd0)>>(3'd7))^((2'sd0)>>>(2'sd0)));
  localparam signed [3:0] p9 = ((~(~|(5'd25)))==={2{(4'd3)}});
  localparam signed [4:0] p10 = {4{((4'd6)?(4'd9):(5'sd9))}};
  localparam signed [5:0] p11 = ((3'sd0)<<<(-2'sd1));
  localparam [3:0] p12 = ((((5'sd14)||(4'd1))===(&(3'd0)))?(((5'd25)?(4'sd1):(5'sd14))%(5'd17)):(5'd2 * ((3'd1)?(5'd15):(5'd10))));
  localparam [4:0] p13 = (((3'd0)>>(3'd2))==((3'd6)>(4'd4)));
  localparam [5:0] p14 = (~|(|(2'sd1)));
  localparam signed [3:0] p15 = ((((2'd0)||(2'sd1))<<{3{(5'd18)}})-((2'd2)?(5'd1):(2'd1)));
  localparam signed [4:0] p16 = ((((3'd2)^(4'd14))>>>((2'sd1)?(3'sd0):(5'sd8)))+(-3'sd3));
  localparam signed [5:0] p17 = {{({3{(2'd0)}}<(-(3'd0)))}};

  assign y0 = ((-4'sd6)<$unsigned((2'sd0)));
  assign y1 = $unsigned(p13);
  assign y2 = (3'd1);
  assign y3 = (({(b3<b2),{a4}}^~((b5&&a2)^~(a1|b5)))|{(p4-a4),(5'd2 * a0),(a1+p17)});
  assign y4 = $unsigned((~|{1{{2{(({p4,p13,a1}))}}}}));
  assign y5 = {1{(p11?b5:p4)}};
  assign y6 = (5'd30);
  assign y7 = (-(~&(-4'sd5)));
  assign y8 = (!{$unsigned($unsigned({p0})),(~^(p9<p12))});
  assign y9 = {(~(+(-{p13,p12,p0}))),(~^{(~^p9),(|p6),(!p8)})};
  assign y10 = ((({3{p5}}-(b1<p14))&&((5'd2 * b1)===(~&a5)))-{2{((p10==a0)||{1{b4}})}});
  assign y11 = ((&$signed((~|b0)))?(p3?b1:a2):(^(&(p14?p0:p9))));
  assign y12 = (+(!(!{3{(~^{2{p17}})}})));
  assign y13 = (-(~|(&(($signed($signed((!a3)))>(&{{p7,b4,b5}}))))));
  assign y14 = ((b5%a5)%b1);
  assign y15 = ($unsigned((~|{2{(|{1{p14}})}})));
  assign y16 = {3{({a5,a1,a2}!=(a3||a0))}};
  assign y17 = {(p11>>>p14),(5'd7),(5'sd7)};
endmodule
