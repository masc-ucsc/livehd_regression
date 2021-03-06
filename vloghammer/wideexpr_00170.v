module wideexpr_00170(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u3;
  assign y1 = (((($signed(s2))<<<({4'b0101,4'b1010,5'b00111}))>>>($unsigned(s3)))<=(-(({2{s7}})>>((ctrl[2]?s6:u5)))))<<<(($unsigned(((ctrl[2]?u3:s4))<<<((s4)!=(s6))))!=((s0)>=(($signed(6'b101111))<=((ctrl[2]?s3:s1)))));
  assign y2 = ($signed($unsigned($signed(|(5'b00111)))))>(6'sb010000);
  assign y3 = (ctrl[1]?((2'sb11)>>>(s1))|((+(2'sb10))>>>((s4)+(s1))):(((ctrl[2]?+(4'sb1101):2'sb01))>>>($unsigned($signed(u6))))+(((-(2'sb10))>>>(s1))+(5'sb01001)));
  assign y4 = +(~((ctrl[4]?(-(u3))|(((5'sb00100)&((s5)<<(s6)))>>>((ctrl[2]?(3'sb101)-(s0):$signed(u4)))):-(u7))));
  assign y5 = $signed(($signed(((ctrl[7]?s0:-(u2)))>>(+((ctrl[6]?3'sb111:3'sb111)))))>>>(+(+({2{+(3'sb000)}}))));
  assign y6 = s7;
  assign y7 = ^((ctrl[1]?{(+((ctrl[6]?-(3'b010):s4)))>((+((1'sb0)-(5'sb10001)))^((ctrl[3]?(3'sb111)&(s7):(3'sb010)|(3'sb010)))),((~|({s2,5'sb10000,u7}))<(((s4)==(1'sb1))>>(4'b0111)))>>>({4{(ctrl[7]?-(2'sb10):(ctrl[0]?s6:2'sb01))}}),s1}:(5'b11110)&({(ctrl[0]?((1'b1)<=(u0))&((3'sb000)^(5'b01001)):(u6)>>>(s2)),3'sb101,+((-(4'sb1101))+((s3)-(6'sb101001)))})));
endmodule
