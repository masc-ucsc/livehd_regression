module expression_00470(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (&{3{((3'd7)<<(3'd0))}});
  localparam [4:0] p1 = (-3'sd2);
  localparam [5:0] p2 = ({((3'd6)|(5'd29)),((2'sd1)<<(5'd16))}!==(((2'sd1)<(3'sd2))?((3'sd0)^~(-4'sd6)):((-4'sd4)?(3'd4):(2'sd0))));
  localparam signed [3:0] p3 = (((~|((2'sd1)<(3'd7)))===((2'sd1)&&(4'sd3)))>>>(~|((~^(^(-2'sd0)))%(5'sd5))));
  localparam signed [4:0] p4 = {3{(5'sd3)}};
  localparam signed [5:0] p5 = ({2{((5'sd12)||(3'sd2))}}<{(4'd15),(3'd7),(2'd1)});
  localparam [3:0] p6 = ((-5'sd3)^{4{((5'sd6)<=(2'sd1))}});
  localparam [4:0] p7 = {1{(((5'sd12)+(3'd6))>((4'd5)>>(-5'sd0)))}};
  localparam [5:0] p8 = ((2'sd1)===(-3'sd1));
  localparam signed [3:0] p9 = (({(5'sd10),(5'd12)}>((2'd2)>>>(4'sd0)))+(((4'sd6)&&(3'd6))>{(2'd1)}));
  localparam signed [4:0] p10 = {2{((-3'sd2)^~(-2'sd0))}};
  localparam signed [5:0] p11 = (2'd0);
  localparam [3:0] p12 = {2{(!((~&(2'sd0))?((3'sd2)===(2'd3)):(!(3'd2))))}};
  localparam [4:0] p13 = (((-2'sd1)?(2'sd1):(-5'sd14))?{4{(-4'sd3)}}:((4'd15)?(2'd3):(-3'sd0)));
  localparam [5:0] p14 = (((3'd0)*(4'sd3))^~((-3'sd0)*(3'd3)));
  localparam signed [3:0] p15 = ({3{{(-2'sd1)}}}===((3'd0)?((-4'sd3)===(-3'sd3)):{2{(2'sd0)}}));
  localparam signed [4:0] p16 = (((((2'sd1)<<<(4'sd1))+(+(3'sd0)))!==(((2'd1)+(2'd2))<<(~|(3'd3))))!==((~|((-3'sd2)==(2'd0)))<<<(^((-2'sd0)<=(5'd30)))));
  localparam signed [5:0] p17 = (~|((-4'sd0)?(-3'sd2):(5'd1)));

  assign y0 = (3'd4);
  assign y1 = {3{$unsigned($unsigned($unsigned($unsigned((~|$unsigned(p16))))))}};
  assign y2 = ((4'sd4)=={{a1,a1},(-2'sd0),(2'd1)});
  assign y3 = ((($signed((p6?a2:a3))))^~((p16)<<(~|b0)));
  assign y4 = $signed((-2'sd0));
  assign y5 = $unsigned($signed(((((p15))?(p3^~p7):(p12?p17:p6))-(((p6&p4)<<(p8<=p0))>>$signed((a4%a2))))));
  assign y6 = (((-2'sd0))%p3);
  assign y7 = ((b0?p6:a1)-(p0?a3:p14));
  assign y8 = (+{{2{{3{{4{b1}}}}}}});
  assign y9 = ((5'd2 * p13)^{p12,p1,p9});
  assign y10 = $unsigned(($unsigned((~((p4<p10)&&(p10-p3))))|{1{$signed($signed((~{1{($unsigned(b1)!=={1{a4}})}})))}}));
  assign y11 = (|(~^(|(+(~{1{(!{2{(&b2)}})}})))));
  assign y12 = (-3'sd0);
  assign y13 = {3{$unsigned($unsigned((~(~&(~&(~&a2))))))}};
  assign y14 = (4'd5);
  assign y15 = ((~|(&(~&(~(p14<p16)))))&((p14&p5)*(&(-p0))));
  assign y16 = (((p4?b5:p10)<<<{(p12<<<p3),(b3?p7:p4)})^~{1{((p2&&a1)^(p9?p14:a3))}});
  assign y17 = (p9>>p10);
endmodule
