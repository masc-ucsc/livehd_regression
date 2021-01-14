module expression_00874(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'sd10)?(2'sd0):(-4'sd7))>((2'sd1)||(3'd0)));
  localparam [4:0] p1 = (~^(|(^(+(((4'd12)!=(-2'sd1))!=(|(4'sd4)))))));
  localparam [5:0] p2 = (&(((4'd15)?(3'd1):(5'd15))?{(4'sd3),(-3'sd2),(5'sd8)}:((5'd9)&(5'd29))));
  localparam signed [3:0] p3 = ((4'd13)>>>(-4'sd1));
  localparam signed [4:0] p4 = {1{{2{(5'd5)}}}};
  localparam signed [5:0] p5 = {4{{2{(5'sd2)}}}};
  localparam [3:0] p6 = (!{4{(-{1{((-5'sd10)&(-4'sd7))}})}});
  localparam [4:0] p7 = (+(~|(~|(3'd2))));
  localparam [5:0] p8 = {3{{2{(2'd0)}}}};
  localparam signed [3:0] p9 = ((2'd2)>((~(5'sd0))^~(|(-4'sd6))));
  localparam signed [4:0] p10 = (((2'd2)+(-5'sd11))=={(-5'sd0),(-3'sd3),(3'sd2)});
  localparam signed [5:0] p11 = {4{(+((4'd15)<=(3'd2)))}};
  localparam [3:0] p12 = (&(+(~^{(-4'sd3),(-5'sd12),(3'sd3)})));
  localparam [4:0] p13 = (-((4'd14)!=(5'd8)));
  localparam [5:0] p14 = ((((-4'sd3)?(2'd2):(-2'sd1))>>>((5'sd4)?(3'd6):(-3'sd2)))===(-(-5'sd11)));
  localparam signed [3:0] p15 = {4{(4'd9)}};
  localparam signed [4:0] p16 = {((~(^(&(4'd5))))<<{((3'sd3)?(5'sd4):(5'd27))})};
  localparam signed [5:0] p17 = ((~&(&(((-5'sd9)|(4'sd2))?((2'd1)<<(5'sd2)):((-5'sd9)-(5'd27)))))-(((2'd1)!==(2'd1))<<((4'd10)<=(3'd2))));

  assign y0 = ({2{(b5==a3)}}&{{b3,a4},(a3^~b0),{a2,b0,b5}});
  assign y1 = (~&(&(^((!$signed((~&(|$unsigned(((|($signed((a1<=p2))<<<(-$unsigned((b5===b4)))))))))))))));
  assign y2 = ((6'd2 * (b1&&p1))>={1{((a4===a5)^(p16-p16))}});
  assign y3 = (({1{a1}}?{2{p16}}:(b2!==a2))>=((4'd2 * a0)?(b4?b3:a4):(a2?p10:b0)));
  assign y4 = (!(+(((b5^a5)=={a5,p2}))));
  assign y5 = {3{$signed(p5)}};
  assign y6 = {3{p13}};
  assign y7 = (-3'sd3);
  assign y8 = (-3'sd1);
  assign y9 = ((~|p0)?(a0-p1):(a3?b5:a5));
  assign y10 = $unsigned({3{(p17^~p1)}});
  assign y11 = {4{((&p4)!=(p3<<<a4))}};
  assign y12 = (($signed((a0?a3:b5))-((a1<b0)>(b2>>a3)))===(((a0>>>a5))+((a3===b0)!=(a5!==a3))));
  assign y13 = ({3{(p3>p7)}}<<(2'd0));
  assign y14 = (~^{p3,a2});
  assign y15 = (({1{(~&((-p16)))}})<={(|($unsigned(p12)&(b4<<p6)))});
  assign y16 = (~^(((!(($signed(p14)<(6'd2 * p13))^{1{$signed({4{p6}})}}))>>>((-$unsigned($signed(({4{p12}}))))))));
  assign y17 = ((5'd19)>(3'd4));
endmodule
