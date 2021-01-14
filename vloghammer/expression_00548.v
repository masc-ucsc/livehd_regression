module expression_00548(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((-{(5'd20),(5'd31)})-({(-5'sd1),(-2'sd1)}+(~&(5'sd13))));
  localparam [4:0] p1 = ((5'sd7)?(3'd6):(4'd13));
  localparam [5:0] p2 = (((2'd3)&&(3'd2))&((-3'sd2)>(3'd0)));
  localparam signed [3:0] p3 = (((2'd2)<=(4'd7))^((3'd1)^~(3'd1)));
  localparam signed [4:0] p4 = ((4'd11)?((2'd2)?(5'sd12):(4'd3)):(-4'sd2));
  localparam signed [5:0] p5 = ((4'd1)==(-5'sd3));
  localparam [3:0] p6 = (((3'd5)?(3'sd2):(2'sd0))?(5'd18):(((2'sd1)?(-2'sd1):(5'd6))===((4'sd0)?(3'd6):(-2'sd1))));
  localparam [4:0] p7 = {{(!(4'sd5)),{(5'd9),(2'd0)}}};
  localparam [5:0] p8 = ((3'sd2)===(5'd0));
  localparam signed [3:0] p9 = ({1{(((-3'sd0)&&(2'd0))?{4{(2'd1)}}:(4'd2))}}<{4{((2'd2)^(5'sd4))}});
  localparam signed [4:0] p10 = {1{(-4'sd2)}};
  localparam signed [5:0] p11 = (5'sd12);
  localparam [3:0] p12 = (|(~&(3'd3)));
  localparam [4:0] p13 = ((3'sd1)?(-3'sd2):(4'sd4));
  localparam [5:0] p14 = (-(3'sd2));
  localparam signed [3:0] p15 = ((((-4'sd0)!=(-3'sd3))+((-3'sd3)!==(3'd2)))!=(4'sd0));
  localparam signed [4:0] p16 = ((-3'sd1)<(4'd15));
  localparam signed [5:0] p17 = ((((5'sd10)^~(4'sd2))&&(5'd2 * (4'd7)))===(((3'sd0)^~(5'd4))^((5'd13)<=(4'd12))));

  assign y0 = ({b3}?(b1<=p14):(b5));
  assign y1 = ((+{{((|a5)?(+a1):(-a2))}})!==(^{$signed((-(b0&&b1))),{a1,b5,b2}}));
  assign y2 = $unsigned($unsigned((b4)));
  assign y3 = (2'sd0);
  assign y4 = ({((|a3)?(-p3):(a5|p1)),({p14,p3,p5}?(a0>p16):(p1^b0))}>={((((p0>>>p2)||(p5^~p11))^~(!(~{p17,b0,b2}))))});
  assign y5 = (~^(~&((~&{2{(a1&&b2)}})-({4{p1}}<<(~&(a3||b4))))));
  assign y6 = (+(3'd4));
  assign y7 = $signed($unsigned($unsigned($signed($signed({{$unsigned($signed($signed($signed({{$unsigned($signed(({p12,p14,p11})))}}))))}})))));
  assign y8 = (&(4'sd0));
  assign y9 = $unsigned({a4,b2});
  assign y10 = {({3{p11}}<<(b0>>>p16)),$unsigned($signed($unsigned($unsigned(a1)))),$signed($signed((p8|p8)))};
  assign y11 = ((a3||p16)%a1);
  assign y12 = {({b2,b1}?(a2||p13):{4{b0}}),((a0!==b3)-(a1?a5:p7)),{1{((a5&&p15)<={3{p13}})}}};
  assign y13 = {{((((a0^p1)^{p12,p8})&&((p7||a1)<(p5<<p4)))<<{((p4+a5)>>(p8|a4)),((a4<<<p15)>>>(p9<<<b1))})}};
  assign y14 = (((p0?b2:p1)>=(b1?p0:p0))<<({p13,p10}+{4{p17}}));
  assign y15 = (~(p15+p1));
  assign y16 = ((4'd2 * (5'd21))^$signed(((4'd10)^(p11))));
  assign y17 = (({(a5<=b4)}<<{(b2<<a5)})!==((+(a4>=b0))>>(-(-(b5!=b2)))));
endmodule
