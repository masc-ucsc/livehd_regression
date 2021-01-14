module expression_00672(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (({4{(3'd4)}}+((2'd2)^(-4'sd1)))!={1{(-4'sd7)}});
  localparam [4:0] p1 = (((2'sd0)==(5'sd12))?((2'd1)<<(4'd13)):((-2'sd0)==(-3'sd1)));
  localparam [5:0] p2 = {3{((2'sd0)<<(3'd0))}};
  localparam signed [3:0] p3 = ((((5'd23)?(-5'sd6):(-4'sd0))>=((2'd3)!=(-3'sd0)))?(((5'd0)?(5'd0):(3'd4))%(-4'sd0)):(((3'sd3)===(-4'sd5))+((5'sd0)?(3'd3):(4'sd6))));
  localparam signed [4:0] p4 = {{3{(-5'sd13)}},(~&{(^(2'd0)),{3{(3'sd0)}}})};
  localparam signed [5:0] p5 = ((~{1{((-(3'd1))^~(~^(5'd11)))}})<={{4{(-4'sd0)}}});
  localparam [3:0] p6 = (&(!(~|(^(&(^(-(3'd7))))))));
  localparam [4:0] p7 = (~&({(-5'sd12),(4'd12),(-4'sd5)}&((-2'sd0)<<<(5'sd2))));
  localparam [5:0] p8 = {(~(^({(!{(3'd7),(3'sd0)})}-({(5'd2),(3'd1)}?(^(4'd6)):(~(2'd1))))))};
  localparam signed [3:0] p9 = (5'sd2);
  localparam signed [4:0] p10 = (5'd13);
  localparam signed [5:0] p11 = (~^((-{(-2'sd0),(2'sd0)})>>{(3'sd1),(-5'sd11)}));
  localparam [3:0] p12 = (((3'd7)!==(5'sd9))?(5'sd11):((-2'sd1)>>(3'd5)));
  localparam [4:0] p13 = ((3'd0)-(5'd4));
  localparam [5:0] p14 = ({1{((~&(-5'sd14))!=={(5'd9),(2'sd0)})}}-(((3'd3)===(2'sd0))>>(2'd3)));
  localparam signed [3:0] p15 = (((~(5'sd6))>={1{(5'd1)}})-{4{(-4'sd2)}});
  localparam signed [4:0] p16 = {3{{4{(2'sd0)}}}};
  localparam signed [5:0] p17 = ((!(2'd3))-((2'd2)?(5'd30):(3'd1)));

  assign y0 = (!{$signed({2{((b4-p5)>{1{b5}})}})});
  assign y1 = ({4{{3{p7}}}}>=(({1{p3}}>>>(b0<=p14))!={4{p7}}));
  assign y2 = ((b3?p9:p9)?(a3?a5:p2):(~^(~^p8)));
  assign y3 = (~^(((b4-a5)>=(a2-a0))==={1{((~b2)-(a1?a5:b0))}}));
  assign y4 = (((~^b4)!==(b0<=b2))|((a0<<<p3)));
  assign y5 = ((!(-(p5)))<(~(+$unsigned(p17))));
  assign y6 = {{{b5,b3},(b2<=a1),(b1?b2:a2)},({1{(b4<<<b1)}}^((b2===b3)!=(2'd3)))};
  assign y7 = (((p11-p0)<=(2'd0))<<((-4'sd3)!=(p17>>p8)));
  assign y8 = {3{{2{{3{p3}}}}}};
  assign y9 = (&{2{((4'd11)?(p17?p5:p11):{(4'd5)})}});
  assign y10 = (p9<<p16);
  assign y11 = $signed(p1);
  assign y12 = ((((a4<b3)>>>(b4*b2))===((b5||a4)^(+a3)))<<(|((^(~(p1&b3)))-(&(a2||b5)))));
  assign y13 = (+(((~^($unsigned(p2)/p9))<((p13||b1)<<<(a0<<p13)))>>((((^p7)==$unsigned(p10)))&&$signed(((|p7)>(^p13))))));
  assign y14 = (((2'd3)?(p14?b0:p15):(p5*a0))!=((p15?b0:b3)|(a1?a0:p11)));
  assign y15 = {p14};
  assign y16 = (((p12==p3)?(p3?p4:a0):(~^b1))>>(&((~|p4)?(6'd2 * p14):(p0-b1))));
  assign y17 = (^a1);
endmodule
