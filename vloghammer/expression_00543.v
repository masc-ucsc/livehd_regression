module expression_00543(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((~((3'd2)%(3'sd1)))<<<(((4'sd2)||(5'd19))%(2'd3)));
  localparam [4:0] p1 = (((3'sd1)<<<(-5'sd9))?((5'd25)!=(-3'sd2)):{(5'd31),(2'd3),(5'd31)});
  localparam [5:0] p2 = ((~(2'd0))||((2'd1)===(2'd2)));
  localparam signed [3:0] p3 = (~&(^(5'd27)));
  localparam signed [4:0] p4 = ({3{(4'd5)}}<<<{3{(4'd10)}});
  localparam signed [5:0] p5 = (~(((4'd6)>(5'd20))>=((2'd3)!=(2'd2))));
  localparam [3:0] p6 = {{(5'd0),(5'd27)}};
  localparam [4:0] p7 = ((-(((4'sd6)<<(-4'sd0))?((3'd1)?(-3'sd3):(-3'sd1)):((5'd2)*(3'd0))))>((6'd2 * (5'd15))&((2'd0)?(-3'sd3):(5'sd15))));
  localparam [5:0] p8 = (~(6'd2 * ((2'd1)?(5'd22):(3'd2))));
  localparam signed [3:0] p9 = {4{(5'd24)}};
  localparam signed [4:0] p10 = {{(3'd7),(5'd31),(5'sd8)}};
  localparam signed [5:0] p11 = (+{4{(2'sd0)}});
  localparam [3:0] p12 = ((4'sd3)>>(4'd3));
  localparam [4:0] p13 = (2'd1);
  localparam [5:0] p14 = (~^(&(((3'd2)===(-3'sd3))?{2{(3'd5)}}:(~(&(2'd2))))));
  localparam signed [3:0] p15 = {(+(((5'd5)&(3'd0))>>>((5'sd13)^~(5'd24)))),(((5'd18)<<<(-5'sd13))&((-2'sd0)<(-4'sd2))),{(~(2'd2)),((3'sd1)!=(-4'sd5))}};
  localparam signed [4:0] p16 = {4{(&{3{(4'd11)}})}};
  localparam signed [5:0] p17 = (3'sd3);

  assign y0 = (~^((-b5)&(&b3)));
  assign y1 = ((3'sd3)?(~&b2):(a5?a0:b5));
  assign y2 = (!(!(~&({{$signed((b2)),(+$signed(b4)),(|$signed(p16))}}))));
  assign y3 = {{({2{b2}}?(p7?b2:a4):{4{p17}})},{{2{a0}},(a1?p5:a5),{b3,a4,b0}},((a3?a1:a5)?{1{a1}}:(a4?p10:a4))};
  assign y4 = $unsigned((&(-((&(((p14?p6:p10))?(~|(~^p1)):{2{p17}}))))));
  assign y5 = ($unsigned({{a4,b5},{3{a0}},(a0>>a5)})!==({2{(b2<=a1)}}<<(a0?b0:b5)));
  assign y6 = (&(-(^((~(&(p0-p10)))&((p10>>a0)==(|b0))))));
  assign y7 = (((+(~&b2))!==(&(&a0)))?((-(p0?p14:p11))*(p8<<p5)):(~^((p0?p3:p4)<<(p15?p10:p13))));
  assign y8 = {3{(~|(&a5))}};
  assign y9 = {(3'd1),{2{p12}},(6'd2 * p14)};
  assign y10 = (!((&((b0^~a5)?(b1==a0):(a2<<<a2)))!=(&(4'd4))));
  assign y11 = (~|(~&((&(^(^p0)))?(~&(!(-p11))):(+(+(p14?p4:p10))))));
  assign y12 = (({(3'd3)}+(-5'sd12))-(|{(b4^a5),(b5>>a5),(b5+b0)}));
  assign y13 = (5'd5);
  assign y14 = ((6'd2 * (p2>p14))?((a2?a3:b2)!==(b1?a4:b4)):(p12?p4:p13));
  assign y15 = ((-2'sd0)<=((b5||p11)>=(~p2)));
  assign y16 = (((p11!=p10)?(b4<<p5):(b3<<p15))?((p16&&p3)?(p9>>p17):(p3?b4:p11)):((p8-p0)?(p4%p10):(a4&&a4)));
  assign y17 = {1{(((b3?a1:a4)<{4{b5}})!=(a4?b2:a1))}};
endmodule
