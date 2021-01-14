module expression_00585(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {((3'd3)^(5'd13))};
  localparam [4:0] p1 = ((3'd3)<<<(5'd3));
  localparam [5:0] p2 = (2'd2);
  localparam signed [3:0] p3 = ((2'd0)=={(2'sd1),(2'sd1),(3'd6)});
  localparam signed [4:0] p4 = (~|((((2'sd0)*(3'd4))&&(+(5'd0)))===(((3'd5)>=(4'sd3))<<<(~|(5'd21)))));
  localparam signed [5:0] p5 = ((((5'sd11)>>>(5'sd3))>>>{((3'sd1)&(5'd1))})!={1{{1{{{4{(2'sd1)}},((5'd22)!=(3'd0)),{1{(4'd15)}}}}}}});
  localparam [3:0] p6 = ({1{(-3'sd0)}}===({(-3'sd0),(5'd29)}===((2'd3)!==(4'sd1))));
  localparam [4:0] p7 = (6'd2 * (~&(~^(3'd0))));
  localparam [5:0] p8 = (((5'd10)!=(-2'sd0))?((3'd6)?(2'd2):(2'd0)):((-3'sd1)?(3'd0):(5'd6)));
  localparam signed [3:0] p9 = (((-4'sd4)-(3'd6))!==((2'd2)-(4'd5)));
  localparam signed [4:0] p10 = (^(~&(~^(((-4'sd3)?(4'd12):(-3'sd3))?(6'd2 * (3'd0)):(&(3'd6))))));
  localparam signed [5:0] p11 = (((-5'sd3)!=(4'sd7))>=(2'sd0));
  localparam [3:0] p12 = ((3'sd3)?(3'sd0):(4'd0));
  localparam [4:0] p13 = ((((2'd0)?(4'sd7):(3'd3))||((2'd1)?(-3'sd0):(-2'sd0)))?(5'd2 * ((5'd25)-(3'd2))):(((-2'sd0)?(4'sd2):(-5'sd10))&&((3'd7)?(3'sd3):(5'd5))));
  localparam [5:0] p14 = (3'd3);
  localparam signed [3:0] p15 = (3'sd3);
  localparam signed [4:0] p16 = (+(|{1{{(+(3'd0)),{3{(3'sd1)}}}}}));
  localparam signed [5:0] p17 = (-4'sd0);

  assign y0 = (!{2{(~&(^{1{(^{1{a5}})}}))}});
  assign y1 = ({p14,p17,b5}?(p10+p17):{p0});
  assign y2 = {3{b1}};
  assign y3 = (!$unsigned(a5));
  assign y4 = (&(3'd0));
  assign y5 = {{1{$signed({3{(p13>>>p16)}})}}};
  assign y6 = (~&({2{(~|(p17^p11))}}+((~(4'd13))!=(b0>>a5))));
  assign y7 = (5'd25);
  assign y8 = (~^(~^(p9^p1)));
  assign y9 = $signed((b1?p8:p7));
  assign y10 = (($signed(a2)>={b1,p13})<{a1,a1,p0});
  assign y11 = (a3!==b5);
  assign y12 = ($unsigned($signed(($signed(((~{b5,a4,a4})=={(&b4),(a1^p0)}))))));
  assign y13 = {(a5?p11:p8)};
  assign y14 = (5'sd12);
  assign y15 = ((~|((b2==a2)&(a2?b5:b1)))<({(p4?a2:a1),(b0?a2:p16)}-((a5?b1:a0)!==(a5!=a4))));
  assign y16 = (4'd11);
  assign y17 = (~(~|(|$signed(({$signed({p13,p16,p16}),{p7,p7,p2}}>>(~^(|(|($signed(p9)||(a0===a2))))))))));
endmodule
