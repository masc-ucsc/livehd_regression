module wideexpr_00481(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
  input [7:0] ctrl;
  input [0:0] u0;
  input [1:0] u1;
  input [2:0] u2;
  input [3:0] u3;
  input [4:0] u4;
  input [5:0] u5;
  input [6:0] u6;
  input [7:0] u7;
  input signed [0:0] s0;
  input signed [1:0] s1;
  input signed [2:0] s2;
  input signed [3:0] s3;
  input signed [4:0] s4;
  input signed [5:0] s5;
  input signed [6:0] s6;
  input signed [7:0] s7;
  output [127:0] y;
  wire [15:0] y0;
  wire [15:0] y1;
  wire [15:0] y2;
  wire [15:0] y3;
  wire [15:0] y4;
  wire [15:0] y5;
  wire [15:0] y6;
  wire [15:0] y7;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7};
  assign y0 = (s7)|($signed((s1)+(((((2'sb11)<<((ctrl[0]?s3:3'b001)))<<<(s4))<<<((1'sb0)<(3'sb100)))&(($signed((s1)+((5'b11001)<<<(2'b11))))|(($signed({s5,6'sb111011,4'b0000,2'sb01}))-(((5'sb10110)-(3'sb011))&((6'sb100100)^(s6))))))));
  assign y1 = s6;
  assign y2 = (ctrl[7]?{3{s7}}:(u4)<<(5'sb11110));
  assign y3 = (5'sb11111)>>((ctrl[4]?(3'sb000)<<(-(s4)):(ctrl[3]?(ctrl[2]?(ctrl[5]?-(s0):$signed((6'sb110001)|(s7))):$signed((s5)>(+(s5)))):+(s7))));
  assign y4 = ~|(+((-(~&(-(6'b111100))))>((ctrl[7]?(4'sb0101)^((s7)+(s6)):s7))));
  assign y5 = {1{((ctrl[2]?s1:4'sb1111))^((ctrl[5]?$signed(~^($signed(s7))):$signed($signed((ctrl[0]?4'sb0100:s4)))))}};
  assign y6 = 2'sb00;
  assign y7 = (s4)+((s7)<<<($signed($unsigned((ctrl[4]?((ctrl[5]?(ctrl[0]?s1:(s0)&(4'sb0010)):3'sb000))<<(s0):(ctrl[7]?(-((ctrl[4]?1'b1:3'sb100)))^(+((s6)>>(s4))):($signed($signed(6'sb000000)))|(+((s2)&(6'b101001)))))))));
endmodule
