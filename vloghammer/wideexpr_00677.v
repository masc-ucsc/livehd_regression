module wideexpr_00677(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {(ctrl[0]?(&({3{{(s1)^(s1)}}}))>>>(s0):($unsigned(u7))^((6'b011000)<<(((-(2'b01))>(5'sb10110))&(({6'sb110000})>>>(2'sb11))))),({($signed((ctrl[3]?s1:6'sb110101)))<<<(s3)})&((u1)<(+(4'b0011))),{u3,(((ctrl[7]?(s6)<<({3{1'sb1}}):1'sb1))<<(~&(s2)))>>>({2{$signed({4'sb1111})}})},3'sb011};
  assign y1 = ((s6)+((((((6'sb101000)&(1'sb0))<<((ctrl[1]?5'sb01001:5'sb01110)))>>>((ctrl[0]?4'sb1110:(s2)<<<(2'b00))))>>>($signed((ctrl[5]?(4'sb0011)-(s4):1'sb0))))>>(((((2'sb00)<<(u3))-(4'sb0111))+(((1'sb0)<<(s0))<<(-(4'sb0111))))>>((+((ctrl[6]?s4:s3)))>>(2'b11)))))>>>(({2{((6'sb010011)+((ctrl[4]?(2'sb10)+(s2):s6)))|(((s5)&(s6))+(s3))}})>>(((-(s4))>>($unsigned(+((s0)<<(2'sb10)))))+(2'sb11)));
  assign y2 = (ctrl[1]?($signed($signed((($signed(2'sb00))>>({s0,5'sb11110,1'sb1}))>>((ctrl[5]?5'b11001:(6'sb000011)-(s0))))))<<<(6'sb000110):(ctrl[2]?(ctrl[5]?(ctrl[6]?(s1)^((5'sb01000)&(1'sb0)):$signed((s3)<=($signed(s5)))):(ctrl[2]?(s0)+(+(~(4'b0011))):-((s5)>>(3'sb010)))):1'sb0));
  assign y3 = {(ctrl[5]?(((s5)&((ctrl[6]?$signed((ctrl[2]?{4{u5}}:(s1)>>>(6'b101111))):(ctrl[4]?(ctrl[3]?u3:$unsigned(s7)):{$signed(6'b010101),(s7)<=(1'sb1),(4'sb0010)&(s2),6'sb110110}))))|($signed(5'sb10111)))+(((ctrl[2]?(ctrl[5]?{$signed(s5)}:(ctrl[1]?(ctrl[0]?{6'sb001010,s3,5'b10110,2'b00}:(s5)&(1'sb0)):{s6,-(3'sb001),(s7)>>(s0)})):$signed((ctrl[7]?5'sb10010:1'sb1))))^(~^(2'sb10))):(s6)==($unsigned(u1)))};
  assign y4 = (s4)^~($signed({s5,(ctrl[2]?{5'sb00110,4'b1100,s2}:~&(6'b111101)),^(+(s5))}));
  assign y5 = s2;
  assign y6 = s0;
  assign y7 = ((2'sb11)&((ctrl[7]?-({+((1'b1)<<<(2'sb10)),{1{(s3)>>(2'b10)}}}):4'sb1011)))^(5'sb01010);
endmodule
