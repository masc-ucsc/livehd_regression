module wideexpr_00426(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[6]?(ctrl[6]?+((ctrl[7]?(~&(1'sb0))|(u7):(ctrl[1]?{4{(6'b100110)<(6'sb001000)}}:({1'b0})<<<(2'sb10)))):(ctrl[3]?(s3)^(5'sb01101):(ctrl[4]?$signed({u6,$signed(2'sb01)}):4'sb1000))):1'sb0))>>({(ctrl[6]?(ctrl[7]?6'sb100110:$signed(({(s0)-(4'sb1101),(3'sb000)==(s4),(s5)>>>(4'sb1000)})>>>(5'sb10111))):3'sb001),s5,({s2})^($signed(-((((s7)|(u5))-((s0)^~(6'sb000010)))<=({3{(s6)-(4'sb1110)}})))),5'sb11111});
  assign y1 = 2'sb00;
  assign y2 = 6'sb010101;
  assign y3 = ($signed((+(~(2'sb11)))&((ctrl[7]?(ctrl[0]?4'sb1011:s6):(s7)^~(1'sb1)))))-({1{(((2'sb11)-(s5))^((4'sb1010)<<(s3)))>=($signed(|(5'sb11111)))}});
  assign y4 = $unsigned((s0)>>>({3{(ctrl[5]?$signed(4'sb0011):(s4)>>>(u6))}}));
  assign y5 = $signed(+((5'sb11000)<<<(s6)));
  assign y6 = ~^($signed((1'sb0)>>($signed((ctrl[6]?(s6)<<<({1{$signed(2'b10)}}):+(2'sb11))))));
  assign y7 = u5;
endmodule
