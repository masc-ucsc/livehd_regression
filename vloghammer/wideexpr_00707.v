module wideexpr_00707(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (((ctrl[7]?(ctrl[7]?$signed(5'sb11111):2'sb11):s2))|((ctrl[0]?s0:s2)))<<<((s1)>>((ctrl[6]?-({{{s6,+(+(2'sb11))},(+({4{s2}}))<<<(({2{s5}})>>>((ctrl[1]?4'sb1001:u3))),(5'sb00010)^~(s7)}}):(-($signed(2'sb10)))-(4'sb0000))));
  assign y1 = (+($unsigned(($signed(-((-(s4))>(6'sb011110))))|(($signed($signed($signed(1'sb0))))^~($signed(((ctrl[6]?1'b1:s3))<=({1{s5}})))))))<<<($signed(+({2{($unsigned(((ctrl[0]?s7:5'sb10101))^(+(4'sb1011))))-(4'sb1000)}})));
  assign y2 = (ctrl[4]?(ctrl[2]?(-({2'b01,3'sb000}))^($signed(4'sb0110)):(ctrl[1]?5'sb10001:$signed(5'sb11001))):($signed({(3'b010)-(u4),s5,(s1)&(s3),6'sb100010}))<<<((((ctrl[6]?s4:1'sb1))-((s4)>>(5'sb10001)))>>>(5'sb00101)));
  assign y3 = s6;
  assign y4 = -(({2{(6'sb000011)^($signed(1'b0))}})>>((ctrl[0]?6'sb001000:(s4)-((-((~(s4))^~((5'sb10101)^(s0))))&(s2)))));
  assign y5 = {4{(ctrl[0]?$signed($signed((u0)>=(s0))):1'sb0)}};
  assign y6 = (ctrl[5]?(s0)>=(6'sb001010):($signed((s5)>>>(u2)))<<((((ctrl[4]?s7:1'sb1))<<(+(s5)))>($signed((1'sb1)<<<(s0)))));
  assign y7 = (ctrl[1]?$unsigned((ctrl[2]?s0:-(s3))):(ctrl[4]?((ctrl[7]?{2{s6}}:(s4)!=(3'sb101)))>>((ctrl[4]?+(2'b00):s4)):s2));
endmodule
