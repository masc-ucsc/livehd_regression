module expression_00505(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((!((3'sd3)<=(-5'sd9)))?((5'd14)?(-2'sd1):(2'd0)):((3'd1)!=(-2'sd0)));
  localparam [4:0] p1 = (5'd19);
  localparam [5:0] p2 = (3'sd2);
  localparam signed [3:0] p3 = (+(3'd7));
  localparam signed [4:0] p4 = (3'sd1);
  localparam signed [5:0] p5 = (!(^(~((2'd2)&&(5'd26)))));
  localparam [3:0] p6 = (~&(2'd2));
  localparam [4:0] p7 = (|((((5'd11)?(-4'sd6):(3'sd0))*((5'd11)?(4'sd1):(5'd28)))<<<(!((4'sd6)&&(5'd6)))));
  localparam [5:0] p8 = {1{(4'sd1)}};
  localparam signed [3:0] p9 = (~|(2'sd0));
  localparam signed [4:0] p10 = (~&((4'd11)!==(~&(4'sd2))));
  localparam signed [5:0] p11 = (2'd2);
  localparam [3:0] p12 = (~(2'd0));
  localparam [4:0] p13 = (!(((5'd12)>=(4'sd2))%(5'd2)));
  localparam [5:0] p14 = (5'd22);
  localparam signed [3:0] p15 = ({(-2'sd0)}<((3'd2)-(2'd2)));
  localparam signed [4:0] p16 = ((((4'd5)===(-4'sd4))+((4'sd4)&&(2'd0)))^~(((2'd1)^~(-5'sd3))>=((4'd12)|(3'd3))));
  localparam signed [5:0] p17 = {1{(3'sd1)}};

  assign y0 = ({a5}<(a0?b5:a4));
  assign y1 = ({3{{p16,a1,p8}}}-{4{$unsigned((b4!==b4))}});
  assign y2 = (3'd3);
  assign y3 = ($unsigned(($signed((a3||a2))?{3{p11}}:{b3,p4,a0}))>$unsigned((({p1,b4})>=(|{4{p5}}))));
  assign y4 = ((((+p5))||{p8,a2,a1})>>>($unsigned({b1,a3})>>>(p9!=a0)));
  assign y5 = (-((4'd14)<<<(4'd3)));
  assign y6 = (-3'sd2);
  assign y7 = {({(p11?p16:p7)}<=((a5!==a1))),($unsigned((a0?p9:p8))-(p13?p11:p5))};
  assign y8 = (({p6}^~(p5?p1:p0))?$signed((p5<<<a0)):{{3{p17}}});
  assign y9 = ((~(&b5))?(a5<p1):((a2?a4:a4)));
  assign y10 = {1{({b4}^~(a5&p7))}};
  assign y11 = (((!(-(b0&a1)))===($signed(b1)>>>$unsigned(a3)))<=({4{p1}}>=(+((p0||p16)^(p13<p6)))));
  assign y12 = (((b5-a0)===$signed(b3))===$signed({1{(a2>a1)}}));
  assign y13 = ((p8?a1:p3)?(a2?p12:p13):(!(+b2)));
  assign y14 = {(({p16,p9,a0}?{p14,p14,p17}:(p9?b0:p13))?({4{p11}}?{b0,p12}:{3{b5}}):(4'sd5))};
  assign y15 = (4'sd1);
  assign y16 = (5'd23);
  assign y17 = {4{({1{p5}}>>>(p16+p0))}};
endmodule
