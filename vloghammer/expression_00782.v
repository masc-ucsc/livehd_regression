module expression_00782(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {{((-2'sd0)&(2'd3)),{(4'd4),(2'd0)},{(3'd0),(3'sd1),(3'd5)}},{((2'd0)?(4'sd7):(-4'sd7)),((5'sd14)==(4'd8))},({(4'sd0),(-4'sd4)}?((5'sd12)>=(4'sd3)):{(3'd7),(5'sd7),(-5'sd11)})};
  localparam [4:0] p1 = (~^(2'sd0));
  localparam [5:0] p2 = (4'sd4);
  localparam signed [3:0] p3 = (-4'sd3);
  localparam signed [4:0] p4 = (&(-3'sd2));
  localparam signed [5:0] p5 = (~|{(~&{{{(2'd0)},(^(5'd30))},(|(!(~^(-5'sd9))))})});
  localparam [3:0] p6 = ((((5'd24)===(2'd2))<<<(5'd15))^~(-((4'd7)^(5'd7))));
  localparam [4:0] p7 = (((-2'sd1)||(2'sd0))||((3'd5)&&(2'd0)));
  localparam [5:0] p8 = (((-2'sd0)<(5'd10))<<(5'd29));
  localparam signed [3:0] p9 = ((3'sd3)?(4'd0):((-5'sd13)?(-5'sd2):(3'd0)));
  localparam signed [4:0] p10 = {((-2'sd1)!=(5'd27)),{2{(4'd1)}},{(2'd1),(3'd2),(-3'sd3)}};
  localparam signed [5:0] p11 = ({3{(2'sd1)}}>>>(~&(&(-(-3'sd3)))));
  localparam [3:0] p12 = ((-5'sd6)+(-2'sd0));
  localparam [4:0] p13 = ({(!(-3'sd2))}?{2{(4'd1)}}:((-5'sd3)?(-5'sd1):(2'sd0)));
  localparam [5:0] p14 = {4{{3{(5'd30)}}}};
  localparam signed [3:0] p15 = {2{(|(~{2{(-3'sd0)}}))}};
  localparam signed [4:0] p16 = (3'd7);
  localparam signed [5:0] p17 = (|{(-(~&{{{(~^(&(2'd1))),(|(&(-3'sd3))),(~|(|(2'd2)))}}}))});

  assign y0 = (&($signed($unsigned(((a0&&a5)!==(!a4))))?$unsigned(((p16?a2:p13))):($unsigned(p0)?(p10^~a5):(p10?p12:p16))));
  assign y1 = (5'd19);
  assign y2 = ($signed(((3'sd3)?(&p6):{p11}))?$unsigned($unsigned($unsigned($signed($unsigned((p12^~b4)))))):(((p13?b3:b0)?{p10,a2,a5}:(p1?b4:p13))));
  assign y3 = (4'sd3);
  assign y4 = ({3{{{2{p11}}}}}>>(((4'd2 * b2)!={b0})||((b1!==a2)<<{4{a4}})));
  assign y5 = ((~|(&(({({p6,p8,p17}||{p3,p1})}<={2{{b1,b1,p7}}})))));
  assign y6 = ((5'd2 * (!(|p7)))&&(~^{4{(b5)}}));
  assign y7 = ((p6>p17)/p1);
  assign y8 = {3{((2'd0))}};
  assign y9 = ({a1,b4}?(b4?b0:b0):(a4?b2:b5));
  assign y10 = (-2'sd1);
  assign y11 = (({2{a0}}>=(|$unsigned(a3)))===(!{2{(b5<=a2)}}));
  assign y12 = {4{(p2>p7)}};
  assign y13 = (-(-(-{1{{4{{p12,a0}}}}})));
  assign y14 = (+(-2'sd0));
  assign y15 = ($unsigned(p15)?{p16,b1}:(&p0));
  assign y16 = (~&(~|(~|(|(~^(|(~&(&(+(!(+(~^(-(+(+(~^(^(~^(&(!p9))))))))))))))))))));
  assign y17 = ({p2,p15}-(p12&&p3));
endmodule
