module wideexpr_00253(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {2'sb10,(ctrl[0]?$signed(($signed(|(((~(u3))^~($unsigned(u2)))>>>(2'sb10))))<((ctrl[0]?3'sb011:$signed($unsigned((~&(5'sb00000))<=((4'b1011)|(1'sb0))))))):+((5'sb11100)==({3{((ctrl[3]?(ctrl[7]?(6'sb101000)<<(3'sb000):(s3)<<<(2'b11)):((ctrl[2]?1'sb0:3'sb010))>>>(+(u5))))<(s0)}})))};
  assign y1 = (ctrl[0]?(((ctrl[0]?(ctrl[2]?$signed($signed((5'sb01011)<(s3))):s7):(3'sb110)&(+((ctrl[4]?4'sb0001:(s2)-(s5))))))^(s5))^~(5'sb10001):$signed($unsigned(+((ctrl[3]?+((-(5'sb10001))>>(s1)):(ctrl[0]?(ctrl[5]?s3:-(1'sb0)):2'sb01))))));
  assign y2 = (s3)+((2'sb01)^(((ctrl[3]?((ctrl[6]?$signed((ctrl[0]?u2:4'sb1101)):(ctrl[3]?(5'sb01010)<<(s3):4'sb1000)))<<((ctrl[2]?1'sb1:1'sb0)):s1))<<(({4{(ctrl[3]?((5'sb00110)-(4'sb1001))>>((1'sb1)+(u4)):3'sb011)}})^((((-(s7))&($signed(5'sb01010)))<((+(u4))|(6'sb011100)))>>>(4'sb0101)))));
  assign y3 = (s6)-($signed((s5)<<<({2{(s2)>>(1'b0)}})));
  assign y4 = s3;
  assign y5 = +((ctrl[2]?5'sb01010:(5'sb10110)>>>(s2)));
  assign y6 = {s6,+((s3)>((s0)>>(s6))),u7};
  assign y7 = ({4{(6'sb010111)<<<((ctrl[4]?({4{+({1{3'sb111}})}})>>((~&($signed(5'sb00000)))^~(u3)):u1))}})+((!(($signed($unsigned(({1{s5}})>((s3)+(3'b001)))))<<(-(4'sb1110))))+(((ctrl[1]?1'sb0:~^(((-(s1))+((2'sb11)<<(4'b1000)))>>>((ctrl[0]?(ctrl[0]?4'sb1101:s2):+(s0))))))<<(({4{-((+(u4))^~($signed(2'sb00)))}})>>>(5'b11011))));
endmodule
