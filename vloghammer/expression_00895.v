module expression_00895(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (3'd6);
  localparam [4:0] p1 = (+(4'sd2));
  localparam [5:0] p2 = (~((~^{1{{2{((2'd0)&(-5'sd11))}}}})<{2{{3{(5'd5)}}}}));
  localparam signed [3:0] p3 = {(~&{{(-2'sd0),(3'd7),(4'd4)},{(4'd5),(-5'sd3),(3'sd0)}})};
  localparam signed [4:0] p4 = (-(!{((~&(3'd3))==((-5'sd12)^~(5'sd6))),((~^(-3'sd3))<<<{3{(3'sd3)}}),{{(-4'sd5),(-2'sd1)}}}));
  localparam signed [5:0] p5 = (|(((-5'sd8)<<(-3'sd1))<<((2'sd0)?(4'd5):(4'd0))));
  localparam [3:0] p6 = ({1{(((4'd9)||(4'sd2))<<(+((3'd4)<=(-5'sd11))))}}&&((-{4{(2'd1)}})||{1{{(4'd15)}}}));
  localparam [4:0] p7 = (2'd3);
  localparam [5:0] p8 = (-((&((-3'sd3)*(-2'sd0)))^~(|((4'sd4)<<<(3'd5)))));
  localparam signed [3:0] p9 = ((5'd16)?(5'd23):(3'd3));
  localparam signed [4:0] p10 = ((-((&(+(2'd3)))===((2'd2)*(3'd2))))==(((-(-4'sd1))&&(!(2'sd0)))===(^(6'd2 * (3'd3)))));
  localparam signed [5:0] p11 = {(~&(&{(-2'sd0),(-5'sd8)})),{{(-3'sd0),(4'sd2)},{(3'sd3),(3'd5)},(~^(-3'sd1))},(+{(-(3'sd2)),{(5'd6),(5'd9),(2'd1)}})};
  localparam [3:0] p12 = (~&{4{(5'd11)}});
  localparam [4:0] p13 = {(4'd10),(4'd8),(2'd0)};
  localparam [5:0] p14 = (+{2{((&(2'd1))<={2{(3'd1)}})}});
  localparam signed [3:0] p15 = ((!(3'd2))&&(~|(4'sd3)));
  localparam signed [4:0] p16 = {4{(|((5'd1)||(2'sd1)))}};
  localparam signed [5:0] p17 = ((^(4'd3))?((2'sd1)?(4'd0):(4'd10)):(~|(4'd0)));

  assign y0 = (({b5,b4,p9}&&(p0))-$unsigned({a5,p9}));
  assign y1 = ((p14<<a3)?{4{p13}}:(p13?p6:p16));
  assign y2 = {(-({2{(5'd2 * {b2,p1})}}!=({(~^(~&p3))}>>>({a1,p8,p17}<<<{p1}))))};
  assign y3 = $signed((~&((a0?a0:p4)?(p8||b3):$unsigned(p12))));
  assign y4 = {4{(6'd2 * (p0?b0:b1))}};
  assign y5 = ({2{$unsigned(b0)}}<<((b0?a0:p10)&&(b3!==b3)));
  assign y6 = {(((a1?b5:a1)?{b0,a3,b3}:(b4===a1))!==(6'd2 * (b0>=b1)))};
  assign y7 = (&((|((!(-({2{{2{(p11)}}}})))))));
  assign y8 = ({3{(p14>>p8)}});
  assign y9 = (((~|(5'd2 * a1))-((5'd2 * b0)^~(b3&a2)))-({2{(~&b0)}}>>{1{(b3==a5)}}));
  assign y10 = (($signed((~|p4))?(&(~&p5)):(p16<<p16))&&((a2^~p2)?$unsigned($unsigned(a5)):(~^(p1?b2:p8))));
  assign y11 = (($unsigned(a4)>>$signed(a5))||(b3?p14:b2));
  assign y12 = ({1{(({2{p0}}>>{2{p3}})!=({1{a0}}>>>(p8!=p16)))}}||{1{{1{((a5!==a1)^~(a4^p13))}}}});
  assign y13 = ({(~^(b2<<a1)),{a3,a5}}||(-(~|(2'sd0))));
  assign y14 = {{2{{(+(a4?b0:b5)),{4{b3}}}}}};
  assign y15 = {(p0&p0),(b5?p0:a3)};
  assign y16 = ((((p3>>>b2))<((p17^a1)))?($unsigned(p10)?(a4^~a4):(p6||p14)):((b3-p8)>$signed({3{p16}})));
  assign y17 = ((-(~|$signed(({(p11||p17),(4'd13)}&&(-5'sd14))))));
endmodule
