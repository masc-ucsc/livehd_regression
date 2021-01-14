module wideexpr_00568(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed((ctrl[4]?s7:-($signed(($signed(+(2'sb11)))|((-((ctrl[6]?4'sb1001:6'sb001001)))!=((-(1'sb1))-($signed(3'sb010))))))));
  assign y1 = {$unsigned($unsigned({3{s2}})),u5,|(s0)};
  assign y2 = $unsigned({4{((1'sb0)<<((s2)^~(((s1)<<((s1)<<(5'sb00011)))<<((ctrl[1]?-(1'sb1):(5'sb10110)>>>(4'sb0111))))))|(5'b11100)}});
  assign y3 = ((-(5'sb11000))>>>($signed(-((((ctrl[0]?s1:s6))-((5'sb11110)>=(s5)))&(&($signed(s2)))))))>>(s6);
  assign y4 = $unsigned(6'sb000010);
  assign y5 = +(s7);
  assign y6 = (ctrl[1]?(4'sb1101)^({((ctrl[0]?s7:(ctrl[1]?5'sb01110:(1'sb1)&(3'sb001))))-($signed((2'sb10)+(2'sb01)))}):(ctrl[6]?($unsigned((ctrl[1]?(ctrl[3]?(6'sb001110)<<<(1'sb1):(s0)>>>(6'sb001110)):1'sb1)))-(((ctrl[3]?s2:($signed(u4))>>>((4'sb0000)>>>(u3))))<=((ctrl[7]?(ctrl[5]?$signed(5'sb10010):(s7)>>(5'sb10010)):(4'sb0101)<<<((1'sb0)<<(u4))))):s2));
  assign y7 = (ctrl[3]?4'sb1010:($signed($signed(({3{s4}})!=($signed(u5)))))^(s3));
endmodule
