module expression_00846(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ({4{(2'sd0)}}?(4'd2 * {4{(4'd4)}}):({1{(4'd7)}}>>>{4{(2'd1)}}));
  localparam [4:0] p1 = ((~|(&(3'sd0)))<=((2'sd1)==(-5'sd0)));
  localparam [5:0] p2 = (((2'd2)?(5'd13):(4'd7))?(((4'sd5)^(-3'sd0))^~((5'sd0)!=(5'sd13))):((5'sd4)?(-3'sd3):(3'd5)));
  localparam signed [3:0] p3 = (&((~|(^(-4'sd3)))>>(^{1{(2'sd1)}})));
  localparam signed [4:0] p4 = {4{(4'd10)}};
  localparam signed [5:0] p5 = ((((2'sd1)?(4'sd1):(3'd7))===((-2'sd1)>>(2'd3)))|{(3'sd1)});
  localparam [3:0] p6 = (5'd2 * (+((3'd7)==(5'd13))));
  localparam [4:0] p7 = {1{{(3'd0),(-4'sd7),(-4'sd3)}}};
  localparam [5:0] p8 = ({1{{3{{2{(4'd8)}}}}}}||((^(~|(2'sd1)))^~((2'sd0)|(4'd3))));
  localparam signed [3:0] p9 = (~&{((!(5'd5))?(4'sd0):(2'd1))});
  localparam signed [4:0] p10 = (~&((~((4'd9)?(3'd2):(5'sd3)))!==((-4'sd1)?(4'd2):(3'sd0))));
  localparam signed [5:0] p11 = (5'd4);
  localparam [3:0] p12 = (&((~|((2'd1)|(3'd2)))^~(((3'd1)!=(3'd0))^~((-2'sd0)+(5'sd13)))));
  localparam [4:0] p13 = ({1{(((3'd0)|(5'd6))=={2{(5'd2)}})}}>=(((3'd4)&&(2'd0))>((2'sd0)||(5'd12))));
  localparam [5:0] p14 = (^{({(+((&(-3'sd2))&&{(2'd1),(3'd3)}))}<=(~(&{(^((-2'sd1)&(-3'sd2)))})))});
  localparam signed [3:0] p15 = ((2'd1)?(5'sd0):(4'd11));
  localparam signed [4:0] p16 = (&(5'd2 * (5'd27)));
  localparam signed [5:0] p17 = {2{(2'd3)}};

  assign y0 = (({((p14>>>b2)<=(p15<p15)),{{b2,p13,p2},{a2}}}-(((b3+p10)-{p6})>>((a3>b5)^~(p14<<p8)))));
  assign y1 = {2{(~{p7,p4,p17})}};
  assign y2 = ((+(^((b2?a3:b0)?(-2'sd1):(b5&a1))))+((5'sd14)^~(4'd2)));
  assign y3 = (+{1{{3{(~^(!{4{p13}}))}}}});
  assign y4 = $unsigned((^(5'sd15)));
  assign y5 = (((p13<b1)?(p10?p15:p7):(a5?p5:a1))^~(((a0?b1:p17)<=(p8>>p0))&&((p11?p15:b1)*(p16%b0))));
  assign y6 = {(((b2!==a2)<<(p11+p17))<<<{({1{a5}}==={a2,b4,a5})})};
  assign y7 = {4{(b2<=b4)}};
  assign y8 = $signed(a3);
  assign y9 = {(|(~&(-((a2&a0)<<(~&a4))))),((a2+b5)==={b5,b5,a3})};
  assign y10 = (((2'd1)<<(4'd5))||(!({a3,b1}>={b1,a1})));
  assign y11 = (!({(~^(4'd14))}&&{(|({p13,a4,p8}!={b0,p2,p0}))}));
  assign y12 = (({1{(a3!==b0)}}!==({4{b0}}!=(a4&a2)))+{2{((p13!=p8)==(p2==p17))}});
  assign y13 = (+(~|(~{((+{4{b3}})!==({b5,b4,b1}&&(~a3))),{(5'd2 * (p12>>p13)),(3'sd1)}})));
  assign y14 = (^(4'd11));
  assign y15 = ((^(a0?a3:a2))!=={2{(~|b3)}});
  assign y16 = (-3'sd2);
  assign y17 = (+$unsigned((-({(p14||p0),(^{p10,p3,p7}),$unsigned($unsigned(p16))}^($signed((p7>>>p14))||((~|p17)!=(!p10)))))));
endmodule
