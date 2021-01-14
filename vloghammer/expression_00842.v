module expression_00842(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (^(-(~^({3{(4'sd1)}}?((-3'sd0)-(5'd15)):((-2'sd1)?(-3'sd0):(4'd0))))));
  localparam [4:0] p1 = (~&((2'sd1)===(4'd1)));
  localparam [5:0] p2 = (((4'd11)&(5'sd14))>={(-3'sd3)});
  localparam signed [3:0] p3 = ((|((-2'sd0)<<<(3'd3)))&((~&(-4'sd6))!=(~|(4'sd2))));
  localparam signed [4:0] p4 = ((3'sd2)<<<(4'd13));
  localparam signed [5:0] p5 = (!{2{(-{1{(4'sd5)}})}});
  localparam [3:0] p6 = {(~(~|(-(~|(~&{{(-3'sd0),(2'sd0)},((2'sd0)?(-2'sd0):(3'd5))})))))};
  localparam [4:0] p7 = (3'sd1);
  localparam [5:0] p8 = (2'd1);
  localparam signed [3:0] p9 = ((-3'sd2)||(5'd30));
  localparam signed [4:0] p10 = ((-(~|((3'd0)?(2'd1):(3'sd0))))?(-(~|(~((3'sd0)?(2'sd0):(5'd9))))):(^(^(~|((3'd0)?(4'd8):(-2'sd1))))));
  localparam signed [5:0] p11 = (-5'sd11);
  localparam [3:0] p12 = (4'd2);
  localparam [4:0] p13 = {({2{(3'sd1)}}||(-4'sd4))};
  localparam [5:0] p14 = {{(5'd5),(-2'sd1),(5'd6)},(((5'd19)?(2'd3):(2'd0))&((5'sd14)?(2'd2):(4'sd3))),(&((2'd2)^~(2'd1)))};
  localparam signed [3:0] p15 = (((-5'sd10)>>(4'd5))!=(~^(2'd0)));
  localparam signed [4:0] p16 = (3'd4);
  localparam signed [5:0] p17 = {3{(~|(3'd4))}};

  assign y0 = (((|{p10,p10})?(~&(p12<=p16)):(-2'sd1))||(2'd2));
  assign y1 = (&((p16?a3:b4)|(a3?a5:p8)));
  assign y2 = (-2'sd0);
  assign y3 = ($signed((a1<b3))<<<(p1>p6));
  assign y4 = {3{(4'sd3)}};
  assign y5 = (+{1{{(p9?p15:p2),(+(4'sd6))}}});
  assign y6 = {4{(-5'sd3)}};
  assign y7 = {(~^{(p3<<<p2),(-3'sd1),{a0,p17}})};
  assign y8 = (3'd6);
  assign y9 = (((~|p12)?$unsigned(p5):(a0^a0))&&{(~|(a3?p2:p7))});
  assign y10 = (b5^~p3);
  assign y11 = ((&((2'd0)?(b3?a5:b4):(p2|a1))));
  assign y12 = ((p11?p6:p4)?(&(p15?p15:p14)):(|(-p16)));
  assign y13 = ($unsigned(((p10)^~$signed(p9)))-(~&(-$signed((~&$unsigned(p4))))));
  assign y14 = ($signed(b2)&&$signed(a3));
  assign y15 = (((p0!=p9)^~(p0>=p1))^~((p14!=p6)&&(a2>=b0)));
  assign y16 = ({b0,b0,p2}?(!p14):(-p4));
  assign y17 = {(a1?p3:a0),(b1||a4),(b3<<<b5)};
endmodule
