module expression_00785(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~|(((5'sd14)>>(3'd1))<<<((4'd15)>>>(4'sd6))));
  localparam [4:0] p1 = ((((-5'sd3)||(4'sd5))%(2'sd0))!=(~^(~(~&(~|(5'sd10))))));
  localparam [5:0] p2 = (-(^((3'd0)?(-2'sd0):(4'd4))));
  localparam signed [3:0] p3 = ((~(-{(5'sd11),(3'd6)}))!=(+(&{(3'sd1),(4'd0),(4'd15)})));
  localparam signed [4:0] p4 = ({(3'd3),(2'd0)}&&(-3'sd3));
  localparam signed [5:0] p5 = (((-4'sd4)^(-3'sd0))>=(|(-2'sd0)));
  localparam [3:0] p6 = {4{(^(5'sd0))}};
  localparam [4:0] p7 = {(((5'd1)?(2'd1):(2'sd0))!=(!{(5'd25)}))};
  localparam [5:0] p8 = ((((2'sd0)<(5'd4))-{4{(2'sd1)}})+(((-4'sd4)<(4'sd2))+{2{(3'd1)}}));
  localparam signed [3:0] p9 = (~^(&{3{((4'd10)||(2'd2))}}));
  localparam signed [4:0] p10 = {((4'd9)?(2'sd1):(3'd2))};
  localparam signed [5:0] p11 = (((-3'sd2)?(-5'sd4):(3'd7))?{3{(2'd1)}}:({3{(2'd3)}}>>((5'd8)<(3'd1))));
  localparam [3:0] p12 = (&({1{(-5'sd4)}}+((4'sd0)>=(4'd15))));
  localparam [4:0] p13 = ((-4'sd2)?(3'd7):((3'd0)==(2'd0)));
  localparam [5:0] p14 = (4'd1);
  localparam signed [3:0] p15 = ((6'd2 * (4'd0))!==(|((-(5'd7))?((4'd11)<=(2'd0)):(&(4'd10)))));
  localparam signed [4:0] p16 = (((4'd14)?(-3'sd3):(-2'sd1))?((3'd5)?(3'sd0):(4'sd5)):((5'd22)?(3'd5):(5'd28)));
  localparam signed [5:0] p17 = ({((2'sd0)&(3'd1)),(2'sd1)}>((2'sd0)>((5'd2)&&(4'd14))));

  assign y0 = {{p17,p3},(p10>>p6)};
  assign y1 = (((-3'sd2)!==(4'd0))<(((5'd2 * a1)===(a3<=a0))-(&((~|a3)===(-4'sd4)))));
  assign y2 = (b2?b0:b2);
  assign y3 = {((a3-b4)==={a2,a3})};
  assign y4 = (~&(~|(b5?p14:b0)));
  assign y5 = (!{2{a3}});
  assign y6 = {({b2,a1,b4}?(a5<=b5):(~|b0)),(~^((!(~|a0))<{{p7}}))};
  assign y7 = ((+({(|(p7>>p12))}+({p8}>>{2{p8}})))&{$signed((~|{{3{p7}}})),{$unsigned({p11,p4,p16})}});
  assign y8 = (5'd2 * (^(a2!==b0)));
  assign y9 = ((p17<<p12)>>>(~&p7));
  assign y10 = (~&($unsigned((&a1))%b5));
  assign y11 = {2{(+(2'sd0))}};
  assign y12 = {{{(p10?b1:p1)},({p4}<<<{p12,p12}),((6'd2 * p0)<<<{2{b4}})}};
  assign y13 = (4'd2);
  assign y14 = ({2{((2'd2)&(-2'sd1))}}^~(4'd1));
  assign y15 = {4{b5}};
  assign y16 = ({(+(~|{{a3,a4,b4},$signed(p16),(-p2)})),($unsigned($unsigned((~^(~|(+{{b2}}))))))});
  assign y17 = {2{({3{b0}}^(b1|a2))}};
endmodule
