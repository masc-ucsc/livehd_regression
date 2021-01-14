module expression_00935(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((+((2'sd0)%(5'd13)))?(((3'sd3)?(5'sd9):(-5'sd4))&(~(3'd4))):((4'sd0)?(2'd3):(2'd3)));
  localparam [4:0] p1 = ((5'd8)?(3'sd0):(3'd0));
  localparam [5:0] p2 = ((|{3{((2'd2)==(4'd14))}})<={4{(-(4'sd0))}});
  localparam signed [3:0] p3 = {((~&(2'sd0))?((-5'sd0)^(4'd13)):(^(3'd3))),({(5'd6),(4'sd6),(-2'sd0)}>{(5'd7),(2'sd0)})};
  localparam signed [4:0] p4 = ({1{{4{(3'sd0)}}}}<=(&(~&(-5'sd12))));
  localparam signed [5:0] p5 = {3{{2{(2'd3)}}}};
  localparam [3:0] p6 = ((4'd2 * ((5'd27)^~(4'd7)))>(((-2'sd1)>>(-5'sd10))/(5'd14)));
  localparam [4:0] p7 = (-3'sd2);
  localparam [5:0] p8 = ((((4'd8)>(3'sd0))?(&((5'sd6)>>>(4'd9))):{2{(4'd9)}})===((-5'sd2)>>>(5'd2 * ((2'd0)?(2'd3):(3'd4)))));
  localparam signed [3:0] p9 = (~^((-5'sd0)||{2{{1{((4'd1)^~(-2'sd0))}}}}));
  localparam signed [4:0] p10 = ((!((4'd9)<<<(-5'sd0)))-((~|(3'sd1))<<((3'd5)?(4'sd1):(-4'sd5))));
  localparam signed [5:0] p11 = {(4'd6)};
  localparam [3:0] p12 = (^({4{(3'd2)}}^~{2{(-2'sd0)}}));
  localparam [4:0] p13 = ((2'd0)!==(4'd7));
  localparam [5:0] p14 = (4'd2 * (+((4'd10)&(4'd13))));
  localparam signed [3:0] p15 = (&((-(+(5'sd9)))!=(!((-5'sd6)<<<(4'd11)))));
  localparam signed [4:0] p16 = (((-4'sd3)&&(4'sd3))<=((-4'sd6)|(-2'sd0)));
  localparam signed [5:0] p17 = ({(2'sd1)}>=(~(5'd30)));

  assign y0 = (-3'sd1);
  assign y1 = (((a1&&b4)<<(~^a3))!==(((a2|b2))));
  assign y2 = ((p5/b4)/p4);
  assign y3 = {2{((p3>p13)<(^p2))}};
  assign y4 = ((($unsigned(a1)+(p13^p2))-((p15|b4)<(p6?p17:p17)))==((p11|b2)/p1));
  assign y5 = (~(3'sd3));
  assign y6 = (+(-((~|{a5,a0,p0})?{(p13?p12:p10)}:(^(p9?p13:p5)))));
  assign y7 = (3'sd1);
  assign y8 = {4{p7}};
  assign y9 = ((((3'd2))&&(5'd6))&$unsigned((|((a5-a2)&&(-5'sd8)))));
  assign y10 = (~|(5'd1));
  assign y11 = (!(-4'sd7));
  assign y12 = ({3{b4}}?(5'sd6):{1{p16}});
  assign y13 = {({1{{1{a1}}}}?{{p9}}:(b4?p3:p1))};
  assign y14 = {{p5,p14,p1}};
  assign y15 = (((b5>>>b5)/a4)||((4'd2 * p1)^(b4>=a4)));
  assign y16 = (|(^($signed((~|{{$unsigned(p13),(a1<<<a0)}})))));
  assign y17 = (a4==p2);
endmodule
