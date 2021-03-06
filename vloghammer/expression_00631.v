module expression_00631(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (4'd4);
  localparam [4:0] p1 = ({1{((2'd1)!=(-2'sd0))}}?{2{((-5'sd15)===(5'sd7))}}:{1{((3'd0)>>>(5'sd7))}});
  localparam [5:0] p2 = (~^(({(-2'sd0),(-5'sd8),(-4'sd1)}||((3'd3)|(4'd4)))^~((^(5'sd14))>>>((3'd0)<(4'sd2)))));
  localparam signed [3:0] p3 = {4{{{(2'sd0),(-5'sd8),(3'sd2)}}}};
  localparam signed [4:0] p4 = {(-4'sd0),(-2'sd0),(4'sd4)};
  localparam signed [5:0] p5 = (~&{(3'd5),(2'd3),(2'd0)});
  localparam [3:0] p6 = (((5'sd15)?(3'd7):(5'sd1))!={(2'sd0),(-5'sd9),(3'd7)});
  localparam [4:0] p7 = (3'd0);
  localparam [5:0] p8 = (5'd23);
  localparam signed [3:0] p9 = (^(&(|(-4'sd2))));
  localparam signed [4:0] p10 = (~|(-(-(&(~(|(-(&(-(&(-5'sd3)))))))))));
  localparam signed [5:0] p11 = ((3'd6)!==(2'sd1));
  localparam [3:0] p12 = (~&(-(((3'd0)?(4'd0):(2'sd1))*((5'd15)?(5'sd15):(3'd4)))));
  localparam [4:0] p13 = {{(((3'd2)&&(3'sd0))!==((3'd4)<<<(5'd0))),(((-3'sd1)?(4'd14):(2'd0))?((2'sd0)?(4'd11):(-3'sd1)):{(3'sd3),(4'sd5),(4'd8)})}};
  localparam [5:0] p14 = (!((~^(~|(-5'sd7)))*(^((-2'sd1)<<(3'sd1)))));
  localparam signed [3:0] p15 = {(3'd7),(5'sd12),(5'd0)};
  localparam signed [4:0] p16 = ((|(~|(-4'sd5)))/(-3'sd0));
  localparam signed [5:0] p17 = {(2'd0),({(-4'sd6),(3'sd3),(5'sd1)}|(|(2'sd1)))};

  assign y0 = (((a5&a4)>>(p3>=a2))-((b1<=a4)%p3));
  assign y1 = ((^(~p17))^(~&(a1&b4)));
  assign y2 = ((p7?p4:p4)?{2{b4}}:{4{p3}});
  assign y3 = (-(~|($signed(({a3}<<<$unsigned(b1)))?({a2,b5,b0}===(b3+a5)):(^((p7?b1:p16)?(b5<p4):$unsigned(p10))))));
  assign y4 = ((!(~b0))?(|(&p7)):(p1?p0:p17));
  assign y5 = ({3{p1}}^{1{(~&(+p12))}});
  assign y6 = ({((p0<<b4)!=(p7||b0)),(!(&{p9,p7}))}<<<(-3'sd1));
  assign y7 = ((p2%p12)<(2'd2));
  assign y8 = (2'sd0);
  assign y9 = {{{3{(~b0)}}},({{4{b3}}}-(a0>>a2))};
  assign y10 = {1{({4{b4}}?(b3?b0:p14):(b4?b0:b1))}};
  assign y11 = ((p6?p17:b2)?{p17}:(p3?a1:p7));
  assign y12 = (3'sd3);
  assign y13 = (({b5}<<{2{p17}})<<((4'd8)));
  assign y14 = ((+$unsigned(p0))/a5);
  assign y15 = {1{(5'd8)}};
  assign y16 = {2{((a0||p7)>={b3,p2})}};
  assign y17 = $signed(((($signed(p1))*(p11/p9))>=(((a3|b3)<<(a2))!==$unsigned($unsigned((b1^~b3))))));
endmodule
