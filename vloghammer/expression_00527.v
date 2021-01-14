module expression_00527(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~&(4'd2 * (3'd4)));
  localparam [4:0] p1 = ({2{(3'd5)}}!=={1{{3{(4'd12)}}}});
  localparam [5:0] p2 = {2{(-2'sd1)}};
  localparam signed [3:0] p3 = ((-(5'd29))>>((3'd7)>(3'sd0)));
  localparam signed [4:0] p4 = (-2'sd0);
  localparam signed [5:0] p5 = (5'd1);
  localparam [3:0] p6 = ({(-4'sd4),(5'd23),(4'd13)}?((-4'sd0)?(2'd0):(3'sd1)):((5'd16)?(5'sd12):(-3'sd1)));
  localparam [4:0] p7 = (~(4'd2));
  localparam [5:0] p8 = ((((2'd2)>>>(-4'sd5))?((4'd5)?(2'd1):(-4'sd3)):((4'sd3)>(-2'sd0)))<(((5'd29)!=(2'd0))-((2'd1)%(3'd6))));
  localparam signed [3:0] p9 = (~^(~{(^(3'd7)),(!(3'd2)),{(4'd3),(5'd2),(3'd0)}}));
  localparam signed [4:0] p10 = {4{(2'd1)}};
  localparam signed [5:0] p11 = (!(-(4'd12)));
  localparam [3:0] p12 = (~^{3{((5'd14)^~(4'd3))}});
  localparam [4:0] p13 = ((((4'sd0)===(2'd1))^~((5'sd3)<=(-4'sd5)))<(((5'd24)%(5'd3))>>>((3'd6)<(4'd1))));
  localparam [5:0] p14 = (((3'd4)^~(3'sd0))==((2'd0)?(5'd5):(2'd3)));
  localparam signed [3:0] p15 = {4{{1{{(3'd1),(3'sd3)}}}}};
  localparam signed [4:0] p16 = {(4'sd4),(4'd7),(3'sd2)};
  localparam signed [5:0] p17 = ((((4'd1)&(5'd16))!==(^(5'sd8)))!==((4'd1)>={(2'd3)}));

  assign y0 = {3{((^a1)?(a0?a0:a5):{2{a1}})}};
  assign y1 = (2'd2);
  assign y2 = (!((+(p8))));
  assign y3 = (|(~^(((~$unsigned(a4))>>>$unsigned((p7>>a0)))?(5'sd0):(3'sd3))));
  assign y4 = {(5'd31),(2'd1)};
  assign y5 = {(p8?p8:a0),({3{p15}}<(p13-a4)),((5'd2 * b2)&&(b1?p17:b1))};
  assign y6 = (4'sd4);
  assign y7 = (((b5|p7)==(p10?p15:p10))?((~&p3)>=(p12<=p15)):((5'd2 * p7)<<<(p14/p9)));
  assign y8 = {(~^$signed((2'd0))),(5'd20)};
  assign y9 = (((p12^b5)!=(b1||p12))||$unsigned(({b5,b1}|$unsigned(a5))));
  assign y10 = {1{{3{{p2,b1,a0}}}}};
  assign y11 = (4'd6);
  assign y12 = (($signed(($signed((a1))^$signed((b1==p1))))+$unsigned(((p10&&a3)>>(p10>>>b2)))));
  assign y13 = $signed(($signed(({3{a4}}>>>(|a1)))>>(((~^a0))&&(p6-b0))));
  assign y14 = (((4'sd4)>>>(2'd1))<<(~^(~^(+(b1||b5)))));
  assign y15 = {(({p12,a5,a0}>(p15>a1))>>({b3}>>(a2<<<a0))),((a3?b2:a0)>>((~^b0)||(b5===a2)))};
  assign y16 = ({1{$signed((5'd2 * a1))}}=={4{a4}});
  assign y17 = ({2{(3'd4)}}&(2'd2));
endmodule
