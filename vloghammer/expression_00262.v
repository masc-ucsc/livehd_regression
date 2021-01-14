module expression_00262(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (^((3'd5)&(-2'sd1)));
  localparam [4:0] p1 = ((&((&((4'd14)&&(3'd2)))>(-((4'sd0)^(4'd6)))))>=((-3'sd3)>>(2'sd0)));
  localparam [5:0] p2 = (6'd2 * (5'd0));
  localparam signed [3:0] p3 = {1{({1{(((5'sd13)^(3'd3))&(|(5'sd1)))}}^~{1{(&((!(2'sd1))&(~|(3'd5))))}})}};
  localparam signed [4:0] p4 = ((5'd10)<(-2'sd1));
  localparam signed [5:0] p5 = ((3'sd0)?(-3'sd1):(-3'sd2));
  localparam [3:0] p6 = {{{1{((4'd12)?(5'd8):(2'd2))}}},({4{(3'sd2)}}?{4{(3'd6)}}:((-4'sd5)?(4'sd4):(5'sd2)))};
  localparam [4:0] p7 = ({3{(5'd22)}}?{1{((3'd3)?(2'sd0):(5'd18))}}:((2'd2)?(5'd19):(5'sd9)));
  localparam [5:0] p8 = (((5'd16)||(2'sd0))?((-2'sd0)&(-3'sd0)):((-5'sd3)+(4'd2)));
  localparam signed [3:0] p9 = {4{{4{(3'd5)}}}};
  localparam signed [4:0] p10 = ({((5'd28)+(3'sd0)),(~(5'd29)),(~|(-2'sd1))}-{(-{(~^(3'sd3))})});
  localparam signed [5:0] p11 = (((3'sd3)&&(5'd0))<<<((2'd3)||(-5'sd0)));
  localparam [3:0] p12 = ((2'sd1)^~(2'sd1));
  localparam [4:0] p13 = ((~&((4'd13)==(-5'sd5)))%(2'd3));
  localparam [5:0] p14 = (!(-5'sd9));
  localparam signed [3:0] p15 = (4'd10);
  localparam signed [4:0] p16 = ((~&(3'd3))-((4'sd3)^(5'd11)));
  localparam signed [5:0] p17 = ((((3'd7)?(5'd4):(5'd30))<<<(5'sd14))===((-2'sd0)?(5'd10):(3'd0)));

  assign y0 = ((p13<=b4)/a2);
  assign y1 = $signed({$signed(($signed($unsigned(p12))!=(~&(|p9)))),{(((~|p17))-(b3^~b0))}});
  assign y2 = {({a0,b2}!=={1{{a1,b2,a3}}}),((p1|p7)^{1{(p12+p2)}}),{{p1,b4},{{p8,p16}}}};
  assign y3 = (5'd2 * {3{p2}});
  assign y4 = (((p16>=p11)&(p16))?(!(~(~(~&p12)))):((p5?p17:p9)?(!p2):(p14?p17:p4)));
  assign y5 = (~&(^(~|(4'd9))));
  assign y6 = (!((~&a1)!==(a4>>a5)));
  assign y7 = (~(+(&{(5'd20),(-5'sd15),(-({a2,b4}^~{1{p3}}))})));
  assign y8 = ({1{((b2+b4)^~(b1===a3))}}||{(b3>>b1),(a2>>p5),$signed(a0)});
  assign y9 = ((&a1)!=(+p3));
  assign y10 = (|((p0<=p5)<(p14==p11)));
  assign y11 = (((p0?p0:a4)!=((a2||a0)||{4{b0}}))<<<$signed(((3'sd2)<{2{(3'sd1)}})));
  assign y12 = {(3'sd3)};
  assign y13 = (3'd7);
  assign y14 = {{{{{b5,b5},{b0},{p15}}}},{{b1},{b5,b5,b4},{a5,b5}}};
  assign y15 = (|(~((~&(~^(p8?p6:b4)))?(~|(~^(a3?p5:p5))):(+{1{{4{p0}}}}))));
  assign y16 = $signed((-(~&{1{(&(~^(-(-(^$unsigned((~^(~^(&(~|p11))))))))))}})));
  assign y17 = ((p4?p1:p12)^(~&(^(b4!=p11))));
endmodule
