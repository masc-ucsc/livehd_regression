module expression_00885(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {1{(|(+{3{(&{3{(-4'sd2)}})}}))}};
  localparam [4:0] p1 = (3'd2);
  localparam [5:0] p2 = (((4'd3)?(3'sd2):(-5'sd1))%(-4'sd4));
  localparam signed [3:0] p3 = ((-2'sd1)!=(5'sd6));
  localparam signed [4:0] p4 = {2{{4{(3'd2)}}}};
  localparam signed [5:0] p5 = {{{3{(~(2'sd0))}}}};
  localparam [3:0] p6 = ((~&((4'd11)?(-4'sd0):(5'd9)))<(((2'd3)?(3'd1):(3'd7))&((3'd6)?(2'sd0):(4'd0))));
  localparam [4:0] p7 = ((~&((-5'sd3)?(5'd26):(-2'sd1)))?(!(+((-2'sd1)?(-4'sd5):(2'd1)))):(~^((2'sd1)?(3'd7):(5'sd7))));
  localparam [5:0] p8 = (-((~(~(!{(2'd3)})))?((~|(3'd1))?{(5'sd14),(-3'sd2)}:(-(4'd4))):(~&{(~^(4'sd1)),{(-3'sd3),(-3'sd3),(-2'sd0)}})));
  localparam signed [3:0] p9 = {3{(-3'sd0)}};
  localparam signed [4:0] p10 = (2'd1);
  localparam signed [5:0] p11 = ({4{(5'd24)}}?{(2'sd1),(5'd25),(5'd7)}:((3'd5)?(5'sd9):(3'sd2)));
  localparam [3:0] p12 = (~&(-2'sd0));
  localparam [4:0] p13 = (^((4'd14)>>>(5'd25)));
  localparam [5:0] p14 = ((2'sd0)?(2'd3):(2'sd0));
  localparam signed [3:0] p15 = (-(&(^(-3'sd3))));
  localparam signed [4:0] p16 = (((5'sd4)*(3'd7))===(^(~^(-3'sd3))));
  localparam signed [5:0] p17 = ((4'd7)&((~|{(3'd0),(3'sd1)})?((-3'sd1)===(5'sd9)):((3'd7)>>(3'd6))));

  assign y0 = ((({p5,a1}&&(b3?p10:a0))+(a5?p10:p9))+((~&(a4?p8:b2))&&((!p7)>(|a4))));
  assign y1 = (b2?p1:a3);
  assign y2 = ((|((a4==p7)))?({p15}?{p13,p8}:(p12>p17)):((p5^p17)<(p3?p5:p2)));
  assign y3 = (b4<<<a0);
  assign y4 = (2'd0);
  assign y5 = (&((~|(((p2)^(p2<<p11))<<$signed((p4&p1))))));
  assign y6 = (!((!$signed((~|{4{(a2|a5)}})))|(((3'sd3))===(-2'sd1))));
  assign y7 = (({1{(p9>=p14)}})-(~&(+{2{p0}})));
  assign y8 = ({1{p16}}>>>(-5'sd9));
  assign y9 = (^{2{(p13?p3:p15)}});
  assign y10 = (-5'sd4);
  assign y11 = (((3'd5)^(~^(4'sd2)))?(~&((p6?p1:p11)>>>(~&(a5<<b5)))):((-3'sd1)?(p1^~b2):(-a2)));
  assign y12 = ((-3'sd1)==({3{b4}}&((b0<<<p1)<<<(3'd6))));
  assign y13 = (~|(+(-(-(~|((|((~^a2)<=(p10<=p14)))>>(-(!(^(p8%b2))))))))));
  assign y14 = {a5,b4};
  assign y15 = (-3'sd0);
  assign y16 = (5'd20);
  assign y17 = {1{$signed(({4{(~^a4)}}<<<$unsigned({4{(!a0)}})))}};
endmodule
