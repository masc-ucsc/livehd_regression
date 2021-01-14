module expression_00524(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'd11)>>(~^(&(5'd21))))>(5'd2));
  localparam [4:0] p1 = (4'sd6);
  localparam [5:0] p2 = (+(!(5'sd4)));
  localparam signed [3:0] p3 = {1{(!((~|({4{(5'd20)}}>>>((-4'sd5)===(5'sd2))))&{2{(~(&(5'sd11)))}}))}};
  localparam signed [4:0] p4 = (((2'sd1)^(4'd5))<=((5'd13)&&(-2'sd1)));
  localparam signed [5:0] p5 = (~(~^(3'd2)));
  localparam [3:0] p6 = {(-(2'd3)),(5'd3)};
  localparam [4:0] p7 = ((((-3'sd1)^(5'd2))?((-2'sd0)-(3'sd1)):{4{(3'sd2)}})==={4{(4'd12)}});
  localparam [5:0] p8 = (((5'd17)-(-3'sd2))>=((-3'sd0)!=(-5'sd14)));
  localparam signed [3:0] p9 = (~(~^{3{(&((-5'sd7)+(2'sd1)))}}));
  localparam signed [4:0] p10 = {4{{4{(2'sd1)}}}};
  localparam signed [5:0] p11 = (((2'd2)>(5'sd4))||((4'd2)&(5'd21)));
  localparam [3:0] p12 = (({(5'd0),(3'sd3)}!==((4'sd1)!==(3'd3)))>{{1{(-2'sd0)}},{(2'd0),(-2'sd0),(-4'sd2)}});
  localparam [4:0] p13 = {(!(!(|({4{((-5'sd6)?(5'sd9):(3'sd1))}}!={3{(~^(3'd6))}}))))};
  localparam [5:0] p14 = (|{((2'd2)!=(2'sd0)),{(4'd2)}});
  localparam signed [3:0] p15 = ((~|(|(~^((~|(3'd5))<<<(~(3'sd2))))))||(~|((!(-(4'd0)))!==(^(^(4'd5))))));
  localparam signed [4:0] p16 = (!(|(-({(4'd5),(3'sd3),(3'd7)}!=(~^(~^(|(2'sd1))))))));
  localparam signed [5:0] p17 = {1{{(~{2{{4{{1{(5'd0)}}}}}})}}};

  assign y0 = {({$unsigned(((a2<<<b1)<={p12}))}),({p13,a5}<=(b5^b4))};
  assign y1 = (~({4{b4}}==($unsigned(a3)?(|a0):(a1||b5))));
  assign y2 = ((p15?p8:p15)?(a3>>>p9):(p7&p14));
  assign y3 = (p7+p15);
  assign y4 = (({3{p15}}|(4'd2 * a2))<((a5==a1)<<(b4>>>a4)));
  assign y5 = ((-(($unsigned((3'd1)))-$unsigned((2'd3))))||$unsigned((|(((4'd12)/b3)))));
  assign y6 = (2'sd0);
  assign y7 = $unsigned(({{4{p13}},(3'd0)}));
  assign y8 = ({(b3||a1),(b4<a5)}===((a2===b5)!==(4'd2 * a1)));
  assign y9 = {({a0,a2}?(a2?b4:a1):{a3,b2,b3}),{(b3?p10:b5),(b5?a1:b2),(b5<=a0)}};
  assign y10 = (~|{3{(-3'sd3)}});
  assign y11 = {{1{{3{p7}}}}};
  assign y12 = ((((a2^~p9)==(p3|b5))<<{b1,b3,b3})^(4'd2 * (p8&&a1)));
  assign y13 = (5'd0);
  assign y14 = (((~^(!(p2<<p1)))-(~(a3?p2:p12)))<=(!(4'd2 * (|(+p1)))));
  assign y15 = ({{{p9,p13,p16},(p12>>b5)},{p12,a5,p11}}=={(b3>>>p10),(a4|p3),(p5<p11)});
  assign y16 = (((~&(~|p9))!=(p5>>b4))?((p12?p0:p9)?(p6):(a3!==a0)):{3{(p6+p7)}});
  assign y17 = {2{(p9^~p9)}};
endmodule
