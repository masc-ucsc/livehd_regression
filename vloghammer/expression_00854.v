module expression_00854(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((2'sd0)<(-2'sd1))^~{3{(-4'sd7)}});
  localparam [4:0] p1 = ((~(3'd3))>((2'sd1)?(-5'sd4):(4'd13)));
  localparam [5:0] p2 = (((-5'sd6)>(2'd2))-((5'sd13)!=((5'sd3)^~(3'sd0))));
  localparam signed [3:0] p3 = {3{{3{((3'sd3)>=(3'd7))}}}};
  localparam signed [4:0] p4 = (({4{(5'd14)}}>={(4'd12),(5'd2)})^~({((2'd3)?(4'sd0):(2'sd1))}^~((-5'sd13)>>>(3'd2))));
  localparam signed [5:0] p5 = (((2'd2)?(-2'sd1):(2'sd0))?((3'd3)!==(2'd2)):(2'd1));
  localparam [3:0] p6 = (((2'sd0)>>>(-5'sd5))-{3{(-2'sd1)}});
  localparam [4:0] p7 = (((-4'sd7)?((5'd18)^~(4'd11)):{(-3'sd3),(-2'sd1)})<<<{{((3'sd0)?(3'd0):(-4'sd7))}});
  localparam [5:0] p8 = (6'd2 * ((4'd15)^(4'd14)));
  localparam signed [3:0] p9 = {((-4'sd3)<(^(2'd0)))};
  localparam signed [4:0] p10 = ({1{((5'sd6)^~(2'd1))}}?{(^{(-4'sd1)})}:((~^(2'd3))^((4'sd4)+(4'd15))));
  localparam signed [5:0] p11 = {3{((5'd19)^~(-4'sd5))}};
  localparam [3:0] p12 = ({3{(-4'sd3)}}&&(5'sd12));
  localparam [4:0] p13 = {1{(~|{1{(2'd3)}})}};
  localparam [5:0] p14 = (!((|(~(3'd4)))^~((-4'sd5)<<<(5'sd6))));
  localparam signed [3:0] p15 = {2{{((5'd3)?(5'd29):(5'sd3)),((3'd4)?(-4'sd3):(4'sd7))}}};
  localparam signed [4:0] p16 = (|{4{(2'sd0)}});
  localparam signed [5:0] p17 = (((5'd2)&((4'sd1)||(4'd6)))&&(((2'd2)?(4'd0):(-2'sd0))?(3'd3):((4'd8)?(2'd2):(4'sd7))));

  assign y0 = ((p7>=p15)<=(p8||a0));
  assign y1 = $unsigned((!{$unsigned((!(p15?p14:a0))),(p9?p6:a4)}));
  assign y2 = ($signed(p8)||(+b0));
  assign y3 = ({4{b4}}?{4{p9}}:{4{a5}});
  assign y4 = {4{b5}};
  assign y5 = {((b0!==b3)?(4'd2 * a2):{p7,a1}),{((p15|b4)?{2{a2}}:(p5>>a5))}};
  assign y6 = (5'sd6);
  assign y7 = (5'd2);
  assign y8 = (4'sd4);
  assign y9 = ((|({1{(+p6)}}<={p5,p6,b5}))>>>(^({1{(|p9)}}&(-(+p7)))));
  assign y10 = ({p2,p6}?(~|(a4?p15:p4)):{p3,p13});
  assign y11 = ({(p2?p2:p0),(p14<p11),(p0?p16:p5)}?((p10?p5:b0)?{p4}:(p13^p12)):((p3?a2:p11)?(p15!=p11):{p16,p11,p2}));
  assign y12 = (((((a0)<<<{b0,b2,b5})<<((b5<b5)+(b2&&b3)))-{$unsigned(({a2,b4,b5}^(|(a1^b5))))}));
  assign y13 = (((((!b5))%p4)<<<((5'd2 * a2)?$unsigned((!p17)):(a5?a3:p15))));
  assign y14 = (|(~&{(-$signed($signed(b1))),(&((a3))),({(p5<<<p13)})}));
  assign y15 = $unsigned((-5'sd8));
  assign y16 = ((&(5'd2 * {(5'd2 * a0)}))===((~|({a1,b2,a4}==(|b2)))===(~((!b3)>>>{b2,a1,b2}))));
  assign y17 = {(|{((^(b2>=b2))===(b2>>a4))})};
endmodule
