module expression_00474(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ({(5'd23),{(~&(5'sd7))},(!{(-4'sd5),(2'sd1),(-4'sd5)})}>>>((&{(5'd31),(2'd0),(-2'sd0)})===(+{(3'd4),(5'sd4)})));
  localparam [4:0] p1 = ((2'sd1)>=(5'd11));
  localparam [5:0] p2 = (3'd4);
  localparam signed [3:0] p3 = {3{{2{(-4'sd0)}}}};
  localparam signed [4:0] p4 = ((&((4'd15)&(-5'sd15)))>((5'sd1)<<(2'sd0)));
  localparam signed [5:0] p5 = (!{({(2'sd0)}?(^(-{2{(4'd1)}})):{(3'd1),(-4'sd3),(4'd12)})});
  localparam [3:0] p6 = ((|(((5'd17)?(2'sd0):(2'sd1))>=(&(2'd3))))&(~|(((-5'sd7)?(5'd5):(2'd2))&&(3'sd1))));
  localparam [4:0] p7 = (3'd0);
  localparam [5:0] p8 = {4{(5'd10)}};
  localparam signed [3:0] p9 = (((&(-3'sd0))?((-2'sd1)>(2'd1)):(5'd23))!=({2{(6'd2 * (4'd5))}}-({3{(2'd0)}}-(-(-4'sd4)))));
  localparam signed [4:0] p10 = (5'sd4);
  localparam signed [5:0] p11 = {3{{1{(2'd1)}}}};
  localparam [3:0] p12 = ((4'd2 * ((5'd28)>>>(2'd2)))||((|(4'd0))?((4'sd6)?(-5'sd7):(5'd29)):((2'sd1)+(4'sd6))));
  localparam [4:0] p13 = {1{{3{(5'd14)}}}};
  localparam [5:0] p14 = (2'sd0);
  localparam signed [3:0] p15 = ((-2'sd0)?((5'sd2)>=(4'd0)):((-3'sd3)-(2'd3)));
  localparam signed [4:0] p16 = (((-2'sd1)?(2'd1):(-5'sd13))>={1{(-2'sd1)}});
  localparam signed [5:0] p17 = (-((~^(~(((5'd6)>(5'sd11))>>((4'sd2)!=(2'd2)))))!=({3{(2'd0)}}<(~&((3'd2)^(-4'sd3))))));

  assign y0 = (p3?p14:p10);
  assign y1 = {(~$unsigned((a5|p1))),$unsigned({(b2<b1)}),{1{{a2,a3,a1}}}};
  assign y2 = {3{{1{(3'd7)}}}};
  assign y3 = ((((b1))?{{p2,b4,b3}}:(p12?b5:b1))|((~^(p10+b1))<=(-(p11==p11))));
  assign y4 = ((+(b5?a2:b0))?(a0<<b3):(!(a5?b5:a5)));
  assign y5 = (&(~^(4'd4)));
  assign y6 = $signed(({b4,b4}?((a1===b2)):(b1<<a0)));
  assign y7 = (2'd2);
  assign y8 = (-2'sd1);
  assign y9 = (-5'sd6);
  assign y10 = {1{{{2{{1{(p17>>>p2)}}}},(~^{3{(p15<p2)}})}}};
  assign y11 = (($unsigned((p0==b5))>$signed({a5,a4,a4}))&&(((a0^~a3))&{b0,a1,a0}));
  assign y12 = (((&(^(b3>=b3)))!==(~&((b2))))==(!$unsigned(((((5'd2 * a0)>$signed(a1)))))));
  assign y13 = {({b4}?(a4===a1):{a1}),$unsigned((~(3'd2))),((+a3)<(^b3))};
  assign y14 = (|(((b1>a4)*(~|(a0>>>a3)))>(((-3'sd3)-(3'd5))|((5'd2)^(~|b3)))));
  assign y15 = {(((a4===a4)?(a1!==a3):(+p2))?{{p14},(p8&p6)}:((p1<<<p11)>={p3}))};
  assign y16 = {((a0^~b5)>>(a1===b5)),((a2+b5)<(^{a1,a2}))};
  assign y17 = (~((~&(~|(^((~(!(b4?a4:b0)))!==(a3?a2:b3)))))));
endmodule
