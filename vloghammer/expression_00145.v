module expression_00145(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (^(5'd10));
  localparam [4:0] p1 = (3'd2);
  localparam [5:0] p2 = (~^(3'd3));
  localparam signed [3:0] p3 = (&((5'd13)+(4'sd4)));
  localparam signed [4:0] p4 = (4'd2 * ((5'd21)&(5'd28)));
  localparam signed [5:0] p5 = (|({2{{1{(5'd10)}}}}!={3{(5'd31)}}));
  localparam [3:0] p6 = (^(-3'sd0));
  localparam [4:0] p7 = (({2{(-2'sd1)}}?((4'd6)&&(5'd1)):((4'd12)?(5'sd14):(-4'sd1)))>(((2'd3)>>(5'd4))?{2{(3'd4)}}:{4{(5'd28)}}));
  localparam [5:0] p8 = {3{((-5'sd5)>=(5'sd2))}};
  localparam signed [3:0] p9 = (({(-5'sd14),(2'sd0)}?{(3'd5)}:(-(4'd7)))!=({1{(2'd2)}}?{(4'd3),(5'sd13),(3'd3)}:((4'd7)?(3'sd1):(2'd1))));
  localparam signed [4:0] p10 = ((6'd2 * (5'd24))!=((3'sd3)|(4'sd0)));
  localparam signed [5:0] p11 = (-(^(-(5'sd13))));
  localparam [3:0] p12 = ({3{(3'd5)}}!==(2'd1));
  localparam [4:0] p13 = ({(2'd2),((5'sd5)&(4'd1))}!=(((3'd3)>(4'sd5))==={(2'sd1),(2'd0),(3'd3)}));
  localparam [5:0] p14 = ((2'd3)<(5'sd14));
  localparam signed [3:0] p15 = {2{(^(2'd2))}};
  localparam signed [4:0] p16 = (-(4'd11));
  localparam signed [5:0] p17 = ((-4'sd4)+(5'sd6));

  assign y0 = {3{{p4,a2}}};
  assign y1 = $unsigned($unsigned((({p16,p1}<(p17>=p7))!=((^p9)?(p16&&p1):{p2}))));
  assign y2 = (+((^p4)?(+p15):(p16?p5:p11)));
  assign y3 = (((a0?b0:b0)||(b1?a2:a3))&&((b0+a0)?(a1?b1:a5):(b5?b5:a3)));
  assign y4 = (b0?b4:a0);
  assign y5 = ({1{(a1?a5:b5)}}?((-b0)?(+b2):{b4,a4,a2}):({b4}&&(~^b0)));
  assign y6 = (((5'd9)&&(~^{2{(p0>p15)}})));
  assign y7 = ((&(-b1))?$unsigned({2{p14}}):{1{(b0?p14:p1)}});
  assign y8 = (&a4);
  assign y9 = ({3{(p4+p11)}}^~{4{(p6<p15)}});
  assign y10 = {{(-({a5,a4,b2}===(&b0)))},{(3'd6)}};
  assign y11 = ({{((a3+a1)^~{p13,b1})},({1{b3}}!==(b3?b1:a4))}^~(((b1==b5)?{1{a0}}:{b0,a5,b3})&&({a4,a2,b5}?{a5,p6}:{1{b0}})));
  assign y12 = {($unsigned(((a3?a5:a3)>>>{p6,a0,p11}))),(({1{$signed({(b1?b4:a5)})}}))};
  assign y13 = ((-5'sd1)?(p9?p13:b5):(a0&&p16));
  assign y14 = ($signed(((~&(~&p12))+(5'd2 * p7)))+(3'd4));
  assign y15 = (&(~&(4'sd4)));
  assign y16 = (~|(-3'sd0));
  assign y17 = (((a1?p14:b2)||(-b3))?((p0<<b0)>>(b0*a1)):(-2'sd1));
endmodule
