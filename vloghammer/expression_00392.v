module expression_00392(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'sd8)?((-3'sd1)<(3'd3)):((3'sd0)^~(3'd0)))=={(3'sd0),(3'sd2),((3'sd0)?(2'sd0):(5'sd15))});
  localparam [4:0] p1 = (~&(~^({2{(3'sd1)}}?((3'd0)?(5'd31):(2'd3)):(3'd4))));
  localparam [5:0] p2 = ((2'd1)>>>(-(|(3'sd2))));
  localparam signed [3:0] p3 = (2'sd0);
  localparam signed [4:0] p4 = ((((-3'sd3)<<(-4'sd4))!==(~^(-2'sd1)))^{(~(2'd2)),{(3'd7),(2'sd1),(4'd5)}});
  localparam signed [5:0] p5 = ((5'sd13)>>>(5'sd0));
  localparam [3:0] p6 = (((3'sd1)===(5'sd13))<(5'd18));
  localparam [4:0] p7 = {(~(~&(&((2'd0)+(3'd4))))),(!(5'sd6))};
  localparam [5:0] p8 = ((~|(5'sd15))&((4'sd3)==(2'd3)));
  localparam signed [3:0] p9 = ((5'd26)|(((5'd21)?(3'sd3):(5'sd10))!=((-(2'd0))-((4'sd0)?(2'd1):(5'sd8)))));
  localparam signed [4:0] p10 = (~^(4'd9));
  localparam signed [5:0] p11 = ((-(~(((4'sd5)>=(-3'sd0))<<(~&(4'd2)))))-{1{(~^(((5'sd14)>(5'd23))===(+(2'sd1))))}});
  localparam [3:0] p12 = ((-5'sd15)%(2'sd0));
  localparam [4:0] p13 = ((4'd12)?(3'd2):(4'sd4));
  localparam [5:0] p14 = (({{(3'sd0),(4'd10)}}>=(!(4'd7)))<<<(|((-((-4'sd7)!=(3'sd2)))>>>{(5'd15),(4'd3)})));
  localparam signed [3:0] p15 = (~{3{({2{(3'd6)}}?(^(2'd3)):(^(5'd13)))}});
  localparam signed [4:0] p16 = ((+(5'd15))?((3'd7)?((5'd27)?(3'sd0):(3'sd2)):((5'd20)!==(3'd5))):((3'd6)|((-2'sd1)%(5'sd9))));
  localparam signed [5:0] p17 = (((2'd2)?(4'd0):(2'sd1))?((-3'sd0)?(4'sd4):(-5'sd9)):(((-3'sd3)+(2'd0))&((2'd2)?(3'sd3):(-4'sd4))));

  assign y0 = ({({4{a0}}>>>{b3,b3,b3}),(~&({1{p8}}^~(p8<<b1)))}+((^{p2,p2,a3})&(~(2'sd1))));
  assign y1 = ({{3{{a4}}},{4{a1}}}>>((|(2'sd1))+(~(~|{(~&b2)}))));
  assign y2 = (~^(~&(p11|p0)));
  assign y3 = ((5'sd7)<(2'sd0));
  assign y4 = {4{(b1||a2)}};
  assign y5 = {((p16^p5)^~(p1?b0:p13)),(4'd10),((p11?p5:a2)?{a0,p12,p2}:(a5-p5))};
  assign y6 = {3{{4{p1}}}};
  assign y7 = {2{a4}};
  assign y8 = ((p17?p7:b5)>>(^p14));
  assign y9 = (-4'sd0);
  assign y10 = (((~^(p3?p7:p10))*(p14?p3:p3))!=((p10?p6:p8)|(p11?p11:p1)));
  assign y11 = (!{((p0?p0:a5)?(p10||p9):{(p15?p15:b5)})});
  assign y12 = (~((2'd3)?{a0}:$signed(a3)));
  assign y13 = (4'sd2);
  assign y14 = {{a3,b2}};
  assign y15 = (5'sd15);
  assign y16 = ((4'd2 * (+(~&p6)))?(~(^(|(b3?p5:p0)))):((b3?b4:b2)===(-b3)));
  assign y17 = ((((p14>>>a4)<<<(b3||p14))!=((b0^~a1)!==(b1||b5)))!=(((a5>>>a0)&&(b3&p4))^((p10>a1)&&(p6>>p6))));
endmodule
