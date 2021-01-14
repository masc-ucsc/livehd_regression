module expression_00650(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~&((5'd6)==(3'd4)));
  localparam [4:0] p1 = {(~{{{((~((-4'sd5)+(2'sd0)))<(|((2'd0)>=(-5'sd14))))}}})};
  localparam [5:0] p2 = (((((3'd7)^(3'sd3))<={3{(4'd2)}})!=(((4'd2)!=(4'd8))>(2'd3)))^~(2'sd0));
  localparam signed [3:0] p3 = {((4'd7)>(-4'sd2)),{(2'd0),(3'd0),(-4'sd1)}};
  localparam signed [4:0] p4 = (~((~|(~&(~(5'd3))))|(~((3'sd2)|(~^(2'sd0))))));
  localparam signed [5:0] p5 = (+(~|((2'sd0)?(4'd7):(3'sd3))));
  localparam [3:0] p6 = {((-3'sd2)&&(5'd21)),(&{1{(4'd7)}})};
  localparam [4:0] p7 = ((^((3'd7)&&(-4'sd6)))?((-5'sd0)?(5'd31):(2'd0)):(((2'sd1)||(4'd4))^((-3'sd2)?(4'd9):(-5'sd11))));
  localparam [5:0] p8 = ({2{(!(~|(2'd2)))}}^~(|({1{(5'sd4)}}^{3{(-3'sd0)}})));
  localparam signed [3:0] p9 = {3{((2'd3)^~(4'd3))}};
  localparam signed [4:0] p10 = (6'd2 * (2'd0));
  localparam signed [5:0] p11 = (~^(4'd2 * (5'd20)));
  localparam [3:0] p12 = {{((4'd13)!=(3'sd2))},((+(-3'sd2))>{(5'sd9)})};
  localparam [4:0] p13 = (5'd25);
  localparam [5:0] p14 = (~{((~^{(5'd21)})&&((5'sd4)!==(-4'sd2)))});
  localparam signed [3:0] p15 = {3{{1{{(5'd14),(4'd1)}}}}};
  localparam signed [4:0] p16 = ((|({2{(-5'sd9)}}<<(|((-4'sd7)^~(4'd1)))))==((5'd2 * (4'd6))?((3'sd3)^(5'sd3)):(-(4'd14))));
  localparam signed [5:0] p17 = (~^(~&(~|(4'd3))));

  assign y0 = (((3'sd2)>>{a3,b3,b2}));
  assign y1 = {1{{3{(2'sd1)}}}};
  assign y2 = ((b3|a3)&&{a0,a4,b0});
  assign y3 = ({3{(-(a0^a5))}}!=={2{(^(~&(!a5)))}});
  assign y4 = (&($signed({3{$signed(p5)}})>$unsigned($unsigned(((~^p2)<<<(-p17))))));
  assign y5 = {1{{3{{1{($signed(p11))}}}}}};
  assign y6 = $unsigned(b4);
  assign y7 = (((b1!==a2)===(a0?b3:a0))^~$signed($unsigned((2'sd1))));
  assign y8 = $unsigned((~&{3{(a1!==a3)}}));
  assign y9 = (p5==p6);
  assign y10 = {{4{b0}},{2{b5}}};
  assign y11 = ($unsigned(({1{(b2^~b2)}}&((a0)-(p16>=a0))))<<{1{{3{{2{b5}}}}}});
  assign y12 = ({1{a3}}^(a3>a2));
  assign y13 = {((a0?p7:p17)?(p5?p8:p5):(~&(&p14))),$signed((((p5?p3:p1)-$unsigned((p15?p4:p16)))))};
  assign y14 = ((p7<<<a0)^(p12>>b3));
  assign y15 = ((~p5)?(~|p9):(p11>=a4));
  assign y16 = (3'd3);
  assign y17 = ((p8/p9)?(p1||p3):(a4<<p13));
endmodule
