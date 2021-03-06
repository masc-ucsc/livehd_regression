module expression_00499(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (5'sd9);
  localparam [4:0] p1 = (~|((((-4'sd3)<<(-5'sd13))>>>(~|((3'd7)?(-2'sd1):(5'd26))))<<<(((5'sd14)/(4'sd1))>=(~((5'd7)-(-4'sd7))))));
  localparam [5:0] p2 = (-3'sd1);
  localparam signed [3:0] p3 = (2'd1);
  localparam signed [4:0] p4 = (((|(-5'sd13))>=((5'd0)&&(-4'sd6)))>>(~|(|((-2'sd1)&(3'd7)))));
  localparam signed [5:0] p5 = (-4'sd1);
  localparam [3:0] p6 = ((~|(5'd10))?(2'd2):((-3'sd1)?(4'sd5):(-3'sd1)));
  localparam [4:0] p7 = (((5'd13)?(2'd2):(3'd4))?(2'sd0):((-5'sd13)?(2'd0):(5'd30)));
  localparam [5:0] p8 = (~|(~^(((3'd3)||(3'd7))|(~^(4'd7)))));
  localparam signed [3:0] p9 = ((5'd10)&(3'd5));
  localparam signed [4:0] p10 = ((-(~^(!(&(~|((3'd1)<=(4'd7)))))))||((~&(-(5'd3)))/(-3'sd1)));
  localparam signed [5:0] p11 = ((-(-((3'd0)-(3'd6))))?(~|((~|(3'd0))>>>((-2'sd0)?(5'd14):(-3'sd2)))):((~^(3'd2))?(^(4'd15)):(!(3'd0))));
  localparam [3:0] p12 = (~^((((3'd0)>(4'sd4))&&{2{(4'sd7)}})||(((4'sd6)?(2'd1):(2'd1))===((-3'sd2)^(-3'sd3)))));
  localparam [4:0] p13 = (~((4'sd2)>(3'd6)));
  localparam [5:0] p14 = ((((-2'sd0)?(-2'sd1):(2'd2))>((-5'sd11)?(3'd4):(-2'sd1)))<<<(3'sd3));
  localparam signed [3:0] p15 = {2{{3{(+(5'd4))}}}};
  localparam signed [4:0] p16 = (3'd0);
  localparam signed [5:0] p17 = (2'd3);

  assign y0 = {1{((3'd5)&&(~|(p5&&b1)))}};
  assign y1 = (-(|(-3'sd3)));
  assign y2 = ((((a0-b2)>={a3})>>>{2{{2{b4}}}})||(((b2>=b3)!={2{a3}})>>>((a4===a1)<<<(a3|a5))));
  assign y3 = ((~b0)?(~&b4):(b5>>>a4));
  assign y4 = $signed(((!(+$signed((~(|(^(~^(~^(&($unsigned((~^a4))))))))))))));
  assign y5 = (~|(-{a1,a0,a4}));
  assign y6 = (~(+(($signed(p7)?(!p2):$signed(p15))?(~(~^(p10?a4:a5))):(($signed(p6)<<<(~a4))))));
  assign y7 = (({p6,p6,p2}-{p11,b2})?(!((a5?p8:b4)?(2'sd0):{2{p16}})):((~^p5)?{2{p15}}:{p16}));
  assign y8 = ((((b1===a2)!==$signed({a4}))!==(({a2,a2,a4}>>>(b1>a5)))));
  assign y9 = ($signed($signed($unsigned((p3))))<<$signed((~^(p12==p7))));
  assign y10 = $unsigned({a4,p8,p4});
  assign y11 = $unsigned(((($signed(p16)-(4'd8))&(2'd3))||((((p15<p12))<$signed((4'd6))))));
  assign y12 = $unsigned(({3{{p15,b4,p4}}}));
  assign y13 = ({2{$signed(((b0<<p6)>>(p6<p17)))}});
  assign y14 = (b1?a4:p11);
  assign y15 = {(!{($unsigned((a0)))}),({{a4}}>>>(a3-b3))};
  assign y16 = (~{3{((^a3)?(p13+b5):(p13!=p14))}});
  assign y17 = ({({p13,a0,p11}<<(a3!=p13))}<<<((-(~b4))||(+(a2^~a1))));
endmodule
