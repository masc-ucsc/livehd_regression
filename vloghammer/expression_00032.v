module expression_00032(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (~^(5'd21));
  localparam [4:0] p1 = (-4'sd5);
  localparam [5:0] p2 = (((-2'sd0)?(2'd0):(5'd6))?((3'sd1)||(2'd1)):{(-2'sd0),(3'sd2)});
  localparam signed [3:0] p3 = ({1{{2{((5'sd1)===(3'sd0))}}}}|({3{(5'd5)}}>>((3'd6)+(-5'sd11))));
  localparam signed [4:0] p4 = ((5'd10)==(-2'sd0));
  localparam signed [5:0] p5 = (((5'd6)?(3'd2):(2'd2))?((5'sd4)?(5'sd10):(5'd4)):(((2'd2)?(2'd0):(-4'sd7))>>((4'd15)!=(-2'sd0))));
  localparam [3:0] p6 = {2{(((-2'sd0)^~(-5'sd9))>=((2'sd0)!==(4'd2)))}};
  localparam [4:0] p7 = ((2'd2)>>>(-5'sd6));
  localparam [5:0] p8 = (-3'sd2);
  localparam signed [3:0] p9 = ({(-3'sd1),(4'd0),(-4'sd0)}>>((2'sd1)&(-4'sd0)));
  localparam signed [4:0] p10 = (((2'sd1)<<(-3'sd0))+{(4'd1),(4'd14),(5'd1)});
  localparam signed [5:0] p11 = (|(|(~^((((3'd2)>=(5'sd6))<=(6'd2 * (4'd1)))&&((6'd2 * (2'd1))===((2'd0)>>>(-2'sd0)))))));
  localparam [3:0] p12 = (3'd4);
  localparam [4:0] p13 = (((-5'sd0)==(-2'sd1))>>((5'd15)<<<(2'd2)));
  localparam [5:0] p14 = ((+((5'sd0)^(-5'sd7)))-{1{((3'd3)>=(4'sd1))}});
  localparam signed [3:0] p15 = (((|{4{(-4'sd5)}})<<((-(-2'sd1))&((-4'sd7)==(-5'sd11))))^(~{3{((2'd3)^(3'd0))}}));
  localparam signed [4:0] p16 = {4{((4'd11)!=(3'd1))}};
  localparam signed [5:0] p17 = ((~|{1{((3'd3)|(3'sd0))}})!=(&{4{(-2'sd0)}}));

  assign y0 = (~(5'sd15));
  assign y1 = (b0===b2);
  assign y2 = ((3'sd3)?((a5>b5)|{b0,b3}):{((b0===b2)&&(~&p3))});
  assign y3 = (!(((p17^p9)>(^p12))?{1{(p13!=p17)}}:(-(5'd13))));
  assign y4 = (p4?p4:a5);
  assign y5 = ($signed((&((a3?a0:b0)||{b4,a3,a4})))>>>{(3'sd1),{b0,a4},(a0>>b4)});
  assign y6 = (p10?p1:a4);
  assign y7 = (|((!$signed(({2{a5}}<<(a1===a3))))|(5'd2 * (b1&&a1))));
  assign y8 = (4'd2 * (b1?a2:a0));
  assign y9 = {(-3'sd0),(+(~|((~&p7)^~(5'sd2))))};
  assign y10 = {1{((~&(&(+a5)))!==((2'd2)&&$unsigned(b1)))}};
  assign y11 = ((~^({4{(-p0)}})));
  assign y12 = ((&(~|((|p5)?(a3?a5:b2):(p12?b3:b1))))>>>(^(((p15<<<b4)&(-a1))>>(a5?b4:a0))));
  assign y13 = (~&(~|((-5'sd7)===((!(2'sd1))-(b3>>>a3)))));
  assign y14 = ((((b0<<p5)>=(b3<<<b3))-(5'd2 * (p0+b2)))^((|(b5>=a4))?(b0+p13):(p9&&b5)));
  assign y15 = ((((p15?b5:b5)>(-5'sd0))^~((p4>=a4)>=(p1<<p17)))+(-((b5?a1:p13)|(&(~{p16})))));
  assign y16 = (!{1{(|{3{(+{3{b4}})}})}});
  assign y17 = ((p0?p1:p10)?(~p9):{4{p14}});
endmodule
