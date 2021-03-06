module wideexpr_00880(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 6'sb011101;
  assign y1 = {s5};
  assign y2 = (ctrl[2]?(ctrl[3]?($signed(4'sb0100))|(s3):(ctrl[1]?$unsigned((+($signed(6'sb001001)))^(6'sb111000)):~|({1{4'sb1101}}))):({1{(($signed($signed(6'sb100100)))|(s3))>($signed((~^(5'sb00100))&((u5)!=(2'b11))))}})^~({u4,(ctrl[7]?($signed($signed(s5)))<<({(s2)!=(s0),1'sb0,$signed(5'sb11011),-(4'b1001)}):(ctrl[2]?((ctrl[6]?1'sb1:s5))^(s7):-(s7))),(1'sb0)>>(+({1{s1}}))}));
  assign y3 = (ctrl[6]?$signed($signed((ctrl[7]?(ctrl[3]?s2:$signed({(1'sb0)==(3'sb000),(ctrl[7]?s6:s4)})):+($signed({2{(4'sb0100)<(s3)}}))))):4'sb1011);
  assign y4 = -({(6'sb001111)<<(6'sb101100),(ctrl[4]?(ctrl[2]?(+(u5))>>>((u1)<<<(u6)):$signed(-(5'b00010))):$signed((3'b101)>=({2{5'sb01100}}))),($unsigned((ctrl[1]?s6:s4)))<<(-({(5'sb11011)<(s7),(ctrl[0]?s2:4'sb0001)}))});
  assign y5 = ((ctrl[7]?-($signed($unsigned((s4)+(4'sb0110)))):+($unsigned((ctrl[6]?$signed(5'sb01110):$signed(s2))))))>((ctrl[2]?+(3'sb100):($signed(s5))>>>(~&({1{{1{u5}}}}))));
  assign y6 = ((ctrl[2]?-(($signed((ctrl[6]?$signed(s2):(ctrl[4]?4'b1001:1'sb1))))-(s7)):6'sb100010))+((ctrl[3]?s4:(((ctrl[5]?1'sb1:$signed((u0)>>(1'sb1))))>>>((({3{3'sb110}})>>(5'b10010))^~(((s1)&(4'sb1001))<((s1)+(2'b11)))))<<((s1)^(s2))));
  assign y7 = -((ctrl[0]?1'sb1:6'sb010010));
endmodule
