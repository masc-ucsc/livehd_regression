module expression_00278(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {4{((2'd3)?(3'd4):(-5'sd15))}};
  localparam [4:0] p1 = (4'd5);
  localparam [5:0] p2 = {3{{1{((-5'sd3)?(3'd0):(3'd6))}}}};
  localparam signed [3:0] p3 = {3{(5'd26)}};
  localparam signed [4:0] p4 = (3'd3);
  localparam signed [5:0] p5 = {{(4'sd5),(4'd7)},(4'd2 * (4'd2)),((2'd0)==(2'd2))};
  localparam [3:0] p6 = ((4'd15)==(2'd3));
  localparam [4:0] p7 = ((2'sd0)?(3'd7):(4'd11));
  localparam [5:0] p8 = (((^(2'd2))>>((-4'sd6)!==(5'd24)))|((+(2'sd0))^~((-4'sd7)/(2'sd1))));
  localparam signed [3:0] p9 = (((4'sd0)?(3'sd3):(4'sd3))>=((3'd1)?(4'd4):(2'sd0)));
  localparam signed [4:0] p10 = ({2{(3'd4)}}<={1{(3'sd3)}});
  localparam signed [5:0] p11 = {(^{((((-5'sd11)<<(5'd13))^(~^((-2'sd0)>>>(4'sd0))))||(-4'sd7))})};
  localparam [3:0] p12 = (2'd1);
  localparam [4:0] p13 = (+(5'sd6));
  localparam [5:0] p14 = (~&(~|(3'sd3)));
  localparam signed [3:0] p15 = {(((5'd26)>>>(2'd0))!=(5'd16)),(&((3'd4)^~(2'd3))),((-2'sd0)<=((5'sd8)^(-4'sd3)))};
  localparam signed [4:0] p16 = ({1{{2{(5'sd2)}}}}-((5'd6)-(4'd11)));
  localparam signed [5:0] p17 = (5'd2 * (&((5'd23)*(3'd5))));

  assign y0 = (5'd16);
  assign y1 = (+(~&{3{(-(^p5))}}));
  assign y2 = (((b3<=p0)%a1)&((p0==b2)<(a1!==a3)));
  assign y3 = (-4'sd6);
  assign y4 = {2{(p0==p0)}};
  assign y5 = (2'd2);
  assign y6 = (|{p4,p0,p11});
  assign y7 = ({2{(p0&p5)}}?((p14-p15)-(p2>=p7)):((a2?a4:a3)!==(b2<<<a2)));
  assign y8 = (^(((&$signed((|($signed($unsigned((a0+b3))))))))+$signed(((a0&&a0)*(b4/a2)))));
  assign y9 = ((p14?p8:b2)-(p11==p8));
  assign y10 = ((6'd2 * a2)!==(|b0));
  assign y11 = (-5'sd1);
  assign y12 = {2{b3}};
  assign y13 = (p10?p6:p17);
  assign y14 = ((a4!=p6)<=(p14-p17));
  assign y15 = $unsigned((($unsigned(p1)<(a4&p5))!=((p3?a5:b5))));
  assign y16 = (2'd1);
  assign y17 = (^({1{{4{b4}}}}?{3{b5}}:{($signed(p2))}));
endmodule
