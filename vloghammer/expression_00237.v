module expression_00237(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((5'd0)?(3'd0):(-2'sd1));
  localparam [4:0] p1 = (-4'sd2);
  localparam [5:0] p2 = (({((5'd31)>=(5'd27))}^~{2{(2'd3)}})<<(((-3'sd1)<<<(3'sd3))===((5'sd7)>>(3'd5))));
  localparam signed [3:0] p3 = {4{(-2'sd0)}};
  localparam signed [4:0] p4 = (((-4'sd6)?(5'sd1):(4'd15))?(((5'd17)?(-2'sd0):(-4'sd4))|((4'd2)?(-5'sd15):(2'd1))):(-(&((3'd5)==(4'd9)))));
  localparam signed [5:0] p5 = {1{(-2'sd0)}};
  localparam [3:0] p6 = ((2'd1)!==(3'd0));
  localparam [4:0] p7 = (5'd2 * (3'd3));
  localparam [5:0] p8 = (-2'sd1);
  localparam signed [3:0] p9 = {1{(!((((2'sd0)^(-4'sd1))||((2'sd1)<=(4'd5)))!=(((5'd9)^(3'sd2))=={4{(4'sd2)}})))}};
  localparam signed [4:0] p10 = (~|(-2'sd1));
  localparam signed [5:0] p11 = ((5'sd0)<=(3'd2));
  localparam [3:0] p12 = ((!(((4'd11)<=(3'sd3))+(~&(~^(-2'sd0)))))<<((+((5'd17)<<(3'sd0)))%(4'd6)));
  localparam [4:0] p13 = (((5'd31)===(-3'sd3))<<<((-3'sd1)>>>(-3'sd1)));
  localparam [5:0] p14 = ({3{{(3'd2)}}}?{3{(!(-2'sd0))}}:(~&((4'd7)?(5'sd9):(5'd26))));
  localparam signed [3:0] p15 = {1{{{4{(-5'sd15)}}}}};
  localparam signed [4:0] p16 = (((5'd2 * (5'd19))|(6'd2 * (3'd4)))&&(((-3'sd1)^~(3'd3))===(6'd2 * (3'd5))));
  localparam signed [5:0] p17 = {1{{3{((|(2'sd1))>=((5'd29)>>(4'sd6)))}}}};

  assign y0 = ({(p8?p1:p1),(6'd2 * p12),(p14?p8:p13)}>((b4?b4:a5)===(a3?a2:a3)));
  assign y1 = (~&(~|$signed((6'd2 * (^$unsigned(p1))))));
  assign y2 = ((a4===a4)==={2{b2}});
  assign y3 = ((b2?a5:p4)?{a2,b5,a3}:(-{b0,a3,b0}));
  assign y4 = (p5||a3);
  assign y5 = ((&($unsigned($unsigned(((+(~($signed((p9||a2))>(p3&p6))))<={{(-p15),(~&p16)},(~|(|(~|p1)))}))))));
  assign y6 = (b0!==a2);
  assign y7 = {p9};
  assign y8 = {{{((2'sd1)<(~|p3)),((2'd1)<<(a1|a1)),(-(~(2'd0)))}}};
  assign y9 = {4{(b4^~p6)}};
  assign y10 = (+($signed((~|(+(~|($unsigned((!(~^$signed((&$unsigned(((+p5)))))))))))))));
  assign y11 = (^{a4,b5,a0});
  assign y12 = (3'sd0);
  assign y13 = {(|{2{(a3>a0)}}),($unsigned(b3)<{4{a1}})};
  assign y14 = ((-(p16<<<a5))=={3{a0}});
  assign y15 = {{($unsigned({3{a2}})^{b3,p0,b5})},(({({a0,b5,a3})}<({a1,b0}>$signed(a4))))};
  assign y16 = (5'sd4);
  assign y17 = (p15?p6:p6);
endmodule
