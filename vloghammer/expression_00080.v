module expression_00080(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'd0)&(-4'sd1))<<<((4'd14)|(3'd0)));
  localparam [4:0] p1 = (2'd3);
  localparam [5:0] p2 = (-4'sd0);
  localparam signed [3:0] p3 = (+((~{2{(4'd5)}})<<((^(5'd0))==(~&(-5'sd9)))));
  localparam signed [4:0] p4 = {4{{1{{3{(5'sd13)}}}}}};
  localparam signed [5:0] p5 = {(4'sd5),{(5'd9),(4'd3),(5'd10)},(5'd5)};
  localparam [3:0] p6 = ((2'sd0)||(3'sd1));
  localparam [4:0] p7 = {2{({1{(4'd9)}}!==((-4'sd2)<=(-3'sd0)))}};
  localparam [5:0] p8 = ((~&((5'd28)+(5'd2)))?((3'sd0)?(4'sd3):(3'd1)):((4'd4)?(-2'sd1):(5'd31)));
  localparam signed [3:0] p9 = (-(+((((5'd31)+(2'd3))>>((4'sd6)&(4'd10)))>>>(~(~&((&(4'sd5))||(~|(-2'sd1))))))));
  localparam signed [4:0] p10 = (4'd2 * (~{(2'd1),(5'd30),(3'd6)}));
  localparam signed [5:0] p11 = ({(3'd4),(-3'sd0),(-5'sd11)}||{{(3'd3),(2'd0),(3'd2)}});
  localparam [3:0] p12 = {{(4'd1)},(|(4'sd5)),{2{(5'd4)}}};
  localparam [4:0] p13 = {(^((+(!{(3'd5),(5'sd6)}))>={(^(4'd10)),{(4'sd7),(-2'sd0)},{(4'd11)}}))};
  localparam [5:0] p14 = ((3'd7)>>(-4'sd7));
  localparam signed [3:0] p15 = {(-4'sd2),(4'd15),(3'd4)};
  localparam signed [4:0] p16 = (((4'd12)!=(4'sd6))&(&(-5'sd15)));
  localparam signed [5:0] p17 = {3{(+(+(&{4{(5'sd12)}})))}};

  assign y0 = (|(!$unsigned({3{$unsigned($signed({4{a4}}))}})));
  assign y1 = (4'd1);
  assign y2 = (p2>>>b0);
  assign y3 = ((-5'sd1)===(-2'sd0));
  assign y4 = ((b3<p13)/p12);
  assign y5 = (~&{2{{{3{p15}},(p11&p15),{4{p9}}}}});
  assign y6 = $unsigned((({4{p6}}|(3'sd2))<<$signed(((-2'sd0)^{a3,p4}))));
  assign y7 = ((((p14?b2:p16)<={p2,b0,p10})|($signed(b2)!==(b2<b1)))>((5'd2 * p0)?{p4,p10}:(p5>p13)));
  assign y8 = {4{p16}};
  assign y9 = (~&((~|$signed({(~|(a2<=b4)),(a5+a5)}))>>(~{$signed(a5),$unsigned(a1),(!a5)})));
  assign y10 = ((($signed(p17)?$unsigned(p9):(p11))?(~&(~|(b3?p5:p0))):(($unsigned((&p10))))));
  assign y11 = ({({p8,p1,a1}||(a4^~a2))}?((p14|b2)?(a3?p10:b1):(a0?p11:b4)):((b0?p6:a0)|(b2?p3:p13)));
  assign y12 = $unsigned(((a2)?(b0):(p14?b4:a3)));
  assign y13 = (~&(&p6));
  assign y14 = ((&$unsigned($signed($signed((~|$unsigned(a0))))))<=((b5&&p4)>>($signed(p17))));
  assign y15 = (($unsigned(p11)>={3{a0}})-$signed($unsigned((p0<=a2))));
  assign y16 = {p0,p8};
  assign y17 = (2'sd0);
endmodule
