module expression_00468(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((4'd7)!==(-2'sd1));
  localparam [4:0] p1 = ((-{(2'd0)})>=(3'sd0));
  localparam [5:0] p2 = {2{(-2'sd1)}};
  localparam signed [3:0] p3 = ((+(|((-(5'd4))-(|(5'sd3)))))>{{(-5'sd11)},{(2'd2),(3'sd3)},{(5'd12)}});
  localparam signed [4:0] p4 = (~&{(~|(^(-{(+(^((4'd10)&(3'sd1)))),{((4'd2)-(2'd3)),{(4'sd5)}},{((2'sd1)==(4'd1))}})))});
  localparam signed [5:0] p5 = (-(&(-(|(5'sd14)))));
  localparam [3:0] p6 = (((~|(-(-4'sd5)))+((2'd3)<(3'sd2)))&(+(^(!(-(|(5'sd9)))))));
  localparam [4:0] p7 = (-4'sd4);
  localparam [5:0] p8 = ((^((2'd1)?(4'sd6):(-5'sd7)))/(3'sd0));
  localparam signed [3:0] p9 = (5'd0);
  localparam signed [4:0] p10 = {4{(-(2'd3))}};
  localparam signed [5:0] p11 = (({3{(2'd2)}}?{(-4'sd7),(4'sd6)}:((-4'sd5)?(-2'sd1):(5'sd10)))<(~^(^{1{{4{(3'd7)}}}})));
  localparam [3:0] p12 = (+(^({3{(-2'sd1)}}||(~((4'sd4)<<(4'd12))))));
  localparam [4:0] p13 = (~^{((-2'sd0)?(4'd1):(4'sd2)),{(-3'sd1),(5'sd2),(5'sd8)}});
  localparam [5:0] p14 = (3'sd3);
  localparam signed [3:0] p15 = {{(5'd17)},{(5'd30),(4'd0),(4'd2)},{(2'sd0),(2'd0),(4'sd4)}};
  localparam signed [4:0] p16 = ((3'd6)<<(5'sd15));
  localparam signed [5:0] p17 = {4{((3'sd3)<<<(-4'sd7))}};

  assign y0 = (b1>>p1);
  assign y1 = {3{(b1===b4)}};
  assign y2 = ((a4)?(a0):$signed(b4));
  assign y3 = {1{b0}};
  assign y4 = (5'd2 * (~&(a2/a1)));
  assign y5 = (+({{1{(+({2{p14}}!={p15,p7,p5}))}}}||({p14,p3,p12}-((~^p8)^(~^a0)))));
  assign y6 = ({{1{{(p12?p6:p6),(p15?p14:p5),(6'd2 * p6)}}}}>>>{{3{p1}},{(a1===b1)},(p4?p5:p6)});
  assign y7 = (((&(p3-p8))>=((p17==p10)^~(p9<p2)))<<(~((6'd2 * p12)=={p1,p7,p8})));
  assign y8 = (&($unsigned((3'd5))));
  assign y9 = (3'd6);
  assign y10 = (({a5,b0}<=(b2===b1))^~({a5,a0}||(a1^a3)));
  assign y11 = (((5'd2 * a2)^(p7<p12))>({4{p17}}>>>(p8^~a0)));
  assign y12 = ((((b5^~a0)&&(a5&&a5))>(5'd2 * (a1>>a0)))===(((a2+b4)!=(b5&&b3))>>>((a4^a3)||(a0&&a5))));
  assign y13 = (({a4,p17,b3}?{b0}:(a2!=p16))?{(2'd0),(b5===a1),(2'd0)}:{4{{4{b5}}}});
  assign y14 = (~^((3'd0)^~(3'd2)));
  assign y15 = {((p5)&&{4{p9}}),{(p4),{p6,p2,p2},{2{p3}}}};
  assign y16 = (&$signed((!{(&(-(^(p10==a4)))),{{{{a2},(p10<<<p5)}}}})));
  assign y17 = ($unsigned((b1?p9:b5))?((~^(^(p8?a4:a5)))):(!(^(a3?p6:b5))));
endmodule
