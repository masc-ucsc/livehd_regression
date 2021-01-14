module expression_00107(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((-3'sd1)/(2'd1));
  localparam [4:0] p1 = {{(5'd11)},(~(4'd9)),(&(5'd14))};
  localparam [5:0] p2 = (2'sd0);
  localparam signed [3:0] p3 = (~^{(&(((5'd15)?(3'd6):(3'd7))>=(!((3'sd2)?(3'd2):(3'd5)))))});
  localparam signed [4:0] p4 = (((~^{4{(-2'sd1)}})-{1{(|{3{(2'sd0)}})}})=={1{{3{{2{(-5'sd11)}}}}}});
  localparam signed [5:0] p5 = {1{{(((4'd8)!=(5'd2))<((5'sd2)|(-3'sd2)))}}};
  localparam [3:0] p6 = (!{{({(4'd15),(-4'sd3)}?{4{(4'sd2)}}:((-5'sd6)?(3'd6):(4'd8)))}});
  localparam [4:0] p7 = (((4'sd2)?(4'sd0):(5'sd13))!=((5'd1)|(-5'sd8)));
  localparam [5:0] p8 = {2{((((4'd1)?(5'd12):(4'sd3))|((-2'sd0)-(4'd5)))>(((-2'sd0)?(2'd0):(-4'sd7))<=((4'd6)<<<(5'd16))))}};
  localparam signed [3:0] p9 = {(2'd1),(4'sd1)};
  localparam signed [4:0] p10 = (^(~((-((5'd14)?(3'sd1):(-5'sd3)))?(!(~|(~(2'd1)))):(&((4'sd5)?(2'd1):(-5'sd6))))));
  localparam signed [5:0] p11 = {((3'sd3)?(3'd1):(-5'sd13)),({(5'd18),(3'sd2),(3'd3)}>>((2'sd1)&&(4'sd3)))};
  localparam [3:0] p12 = {2{{(-5'sd13),(4'sd2)}}};
  localparam [4:0] p13 = ((2'sd1)?((~|(2'sd0))?(5'd17):(5'sd7)):(!(-((-3'sd0)?(3'd5):(2'sd1)))));
  localparam [5:0] p14 = ((!(+(6'd2 * (3'd0))))&((~^(~^(&(4'd8))))<<(~&(~((4'sd5)?(2'sd1):(5'd3))))));
  localparam signed [3:0] p15 = ((5'd2 * ((4'd8)>(4'd15)))-({4{(4'sd4)}}-((-4'sd2)===(5'sd11))));
  localparam signed [4:0] p16 = (&((!(&((3'd2)?(2'd1):(4'd11))))>>>((^(3'd3))<<((5'd20)|(4'd8)))));
  localparam signed [5:0] p17 = ((|(&(~|((2'd1)?(2'sd0):(-4'sd6)))))===(~^(((-2'sd1)!=(3'sd2))&(-(+(4'sd4))))));

  assign y0 = (&{2{{4{(b3>b2)}}}});
  assign y1 = (-(((~&(a1!==a1))^~(a2<<<b2))-((^b5)?(a0>>>b1):(a1?a4:a1))));
  assign y2 = (~^({1{(~a4)}}^~{4{b4}}));
  assign y3 = (^(~^((!((!p8)?(p9?p4:p8):{4{p0}}))<{(~^(&p12)),(p1!=a0)})));
  assign y4 = (({$signed(a3),(a2<<a3)}===$unsigned({{2{a1}}}))^~{1{{3{(4'd11)}}}});
  assign y5 = (|{(+(3'd1)),(((b4?a2:a0))>>(p9?p14:p14)),(!((a2?p6:a4)?(a2?p6:p16):(4'sd6)))});
  assign y6 = {(((p3>>>p14)?{p1}:{p3})<{(a3?a3:p15),(p9<<p9)}),((b3|p1)?(a2?p13:a1):{a3,p2,p2})};
  assign y7 = $signed({({$signed(({p12,b4}))}),{{(p11)},$signed({p15,p6})},{$unsigned($signed(p14)),$signed({p6,b1,b2})}});
  assign y8 = ((!(|((+$unsigned($unsigned(((p10?a1:p15)?(a4||p13):(p1)))))))));
  assign y9 = (+(|(~&((^($signed(p7)>=(~p6)))<<((|(p3<p2))<<$unsigned((p8>>p13)))))));
  assign y10 = ((~^a1)?(p14?a2:a4):(!a5));
  assign y11 = {1{(5'd20)}};
  assign y12 = (((5'd27)>>>(4'sd2))>>({3{p6}}-(5'sd7)));
  assign y13 = (a5?b0:b1);
  assign y14 = {{({$signed((a0?p15:a5))}?(2'sd0):{(a2),(b4<a0)})}};
  assign y15 = {2{{({p15}>>{1{p6}}),(-3'sd1)}}};
  assign y16 = ({{4{b0}}}||({1{b3}}?(b3>>b0):(3'd6)));
  assign y17 = (-(&(~^(+(b3?b3:a2)))));
endmodule
