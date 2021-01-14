module wideexpr_00383(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(5'sb10110);
  assign y1 = {(ctrl[4]?($signed(((ctrl[1]?s0:u6))|(~^(1'sb0))))^(({4{-(4'sb1010)}})>>>($signed((ctrl[5]?s0:2'b01)))):{$signed(s5)}),(ctrl[6]?(-((ctrl[3]?4'b0110:(ctrl[2]?s2:6'sb011001))))^~(((ctrl[6]?5'sb00100:$signed(s2)))<<<((ctrl[1]?$signed(2'sb10):(ctrl[6]?s3:5'sb11110)))):s1),(s1)^~((((s7)>>((6'b001100)>>(u3)))+(-(s5)))-((s0)^~(((s2)>>(5'b10001))^((6'sb111100)>>>(s5))))),3'b100};
  assign y2 = ((((ctrl[1]?(s1)^~(+(s7)):$signed(({(1'sb0)&(s1),+(6'sb100111),{3{s3}},6'sb101000})==($signed((1'sb0)>>(u2))))))+((ctrl[6]?((ctrl[3]?1'sb0:(ctrl[3]?5'sb00100:(6'sb111011)>>(6'sb011000))))^($signed(((s5)|(5'sb10011))>>({1'b1,s5,3'sb001,4'sb1111}))):(((-(s6))>>(s1))<<((ctrl[5]?(ctrl[1]?s3:s2):(6'sb111110)^(4'sb1110))))>>({4{((ctrl[7]?s7:s7))<<<(+(s7))}}))))>>({1{({2'b10,(ctrl[4]?(ctrl[1]?5'sb01110:s7):s6)})>>>(((-({4{5'sb11000}}))-($signed(6'sb101000)))+((ctrl[6]?(ctrl[1]?$signed(s2):6'sb100111):-((ctrl[1]?s3:u6)))))}}))^($signed($signed(((+(-((4'sb0111)+(6'sb110010))))>>(s4))>>>(-((ctrl[0]?(+(2'sb10))<<(-(4'sb1011)):4'sb1101))))));
  assign y3 = {{4{$unsigned({{1{3'sb000}},$signed($signed(4'sb1100)),-($unsigned(s4))})}}};
  assign y4 = (({{{$signed(6'sb101001),(s1)!=(1'b1),(5'sb11000)>>>(5'sb11000),(4'b1110)^(s5)},-(s1)},{((ctrl[0]?u1:5'sb01010))<<((s2)^~(4'sb1001)),(-(2'sb10))<<<(+(s2)),|($unsigned(s4))}})>>((~&((ctrl[5]?(ctrl[4]?s0:s6):$signed(s6))))<(2'b01)))|(-(~((((s1)^~(s0))^(-(s5)))^($signed((1'sb0)<<(5'sb10101))))));
  assign y5 = u5;
  assign y6 = (ctrl[0]?1'b1:$unsigned((-(((ctrl[7]?1'sb1:s5))>($signed(3'b110))))-(3'sb011)));
  assign y7 = $signed(+($signed(-(~|({(4'sb0101)>=(6'b011001),(((ctrl[4]?2'b01:s4))>({4{s4}}))|(($signed(4'sb0100))<((ctrl[1]?5'sb00001:s5)))})))));
endmodule
