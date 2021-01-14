module expression_00612(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {3{((-3'sd0)?(5'd16):(5'd8))}};
  localparam [4:0] p1 = {1{(5'd29)}};
  localparam [5:0] p2 = (4'd2 * ((5'd16)?(4'd10):(3'd2)));
  localparam signed [3:0] p3 = ((5'sd1)<(|(-5'sd1)));
  localparam signed [4:0] p4 = (&((~^(6'd2 * (4'd1)))?((6'd2 * (3'd1))=={4{(3'd7)}}):(((4'd13)?(4'd6):(-4'sd3))>>>(-(5'd2)))));
  localparam signed [5:0] p5 = (~&((((2'sd1)?(3'sd3):(3'sd0))?((2'd3)^~(5'sd2)):((-2'sd1)<<(5'sd10)))||(((4'd2)===(5'd13))?(&(2'sd1)):((2'sd0)?(5'd23):(2'd0)))));
  localparam [3:0] p6 = (2'd0);
  localparam [4:0] p7 = {(2'd3)};
  localparam [5:0] p8 = {(3'sd2)};
  localparam signed [3:0] p9 = ((5'sd8)?(-5'sd9):(-4'sd4));
  localparam signed [4:0] p10 = {(~^(((3'sd3)+(2'd3))^~((5'd20)>>>(-4'sd7)))),({(5'd0)}<=((5'd14)&(4'd5))),(((4'd10)<<(3'd6))&((-3'sd3)!==(2'd0)))};
  localparam signed [5:0] p11 = {{{(5'd12)},{(4'sd3),(2'd2),(4'sd7)},{(4'd3),(-2'sd1)}}};
  localparam [3:0] p12 = (((^((4'd8)/(5'sd2)))>>((4'd7)!=(4'sd1)))>>(6'd2 * ((3'd1)/(5'd17))));
  localparam [4:0] p13 = {(~(2'd0))};
  localparam [5:0] p14 = ((((-5'sd12)<(5'sd0))===((5'd25)===(5'd13)))>>>(|((-4'sd1)>=(-5'sd3))));
  localparam signed [3:0] p15 = (((-4'sd7)||((5'd10)&(3'd0)))<<{{((3'sd0)&(-4'sd3))},((-3'sd2)<<<(-3'sd0))});
  localparam signed [4:0] p16 = (3'd5);
  localparam signed [5:0] p17 = ((2'd0)&&(3'sd0));

  assign y0 = (+(!(~&(|((-((~a0)-$signed(a3)))>>(~^($signed(a0)<(&b1))))))));
  assign y1 = ((~|(p5<<p17))^((p1?p6:p8)<<(p10)));
  assign y2 = (6'd2 * (p0&p12));
  assign y3 = ((2'd2)-(-(^(3'd0))));
  assign y4 = (2'd0);
  assign y5 = (|(p8+b1));
  assign y6 = ((-(-(&(|((p6>=p10)||(^{4{p15}}))))))&$signed($signed((+((~&(~|p2))|(-(p3==a4)))))));
  assign y7 = ((~^(&(+p13)))!=({p2,b5}>>>{p9}));
  assign y8 = (-(-(~(|p3))));
  assign y9 = ((-(~|p10))^~{3{p17}});
  assign y10 = (((p5<<p7)^(p14&&p5))?((a5?b3:a0)===(a5?b4:a2)):((p9?p10:p11)?(p14>p8):(p7?p11:p5)));
  assign y11 = (((2'd3)^~(a0*a3))===((4'd3)&(4'd2 * b1)));
  assign y12 = ((~|((p14>>>a2)^(b2!==a1)))^~((^(a3||b5))+(~|{p5})));
  assign y13 = ((a2===b4)+(b0!==a3));
  assign y14 = (^(3'd5));
  assign y15 = {3{{3{b1}}}};
  assign y16 = ($unsigned({(p3&&p0),{b5}})>>($signed(p16)&&$unsigned(p5)));
  assign y17 = {3{{p15,p4}}};
endmodule
