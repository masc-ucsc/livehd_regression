module wideexpr_00513(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[3]?s1:s5))<<<((~((+((-((5'sb10100)<=(u4)))>>>((1'sb1)&($signed(s2)))))<<<($signed(((u6)<((2'sb01)<<<(s6)))<<((ctrl[4]?(s2)^(1'sb0):3'b000))))))<<((($signed((ctrl[5]?3'b110:1'sb0)))^(((ctrl[5]?2'sb11:(ctrl[3]?3'sb101:$signed(3'b111))))^(s7)))&($signed(({((2'sb00)|(s2))>>>(s4)})+({3{5'sb10000}})))));
  assign y1 = s0;
  assign y2 = 1'b1;
  assign y3 = $signed(4'sb1010);
  assign y4 = +((s0)>>({$signed((ctrl[2]?(ctrl[3]?($signed(s5))&($signed(4'sb1010)):(6'sb000111)|((5'sb10100)-(6'sb001111))):(4'sb1001)&(((ctrl[5]?4'sb1010:4'sb0010))-((s4)-(s4))))),-(4'sb0111),(ctrl[4]?($signed({(3'sb000)>>(s3)}))|((((1'sb1)^~(3'sb000))-((1'sb0)+(s7)))+(5'sb10010)):5'sb11110),+((({1{{s6,5'sb00010,s3,s1}}})^(5'b11101))>>((((u7)|(s4))>>>((ctrl[6]?s5:5'sb10000)))!=((4'sb0110)-((5'b11101)>>(s4)))))}));
  assign y5 = (s5)+(s7);
  assign y6 = ((ctrl[6]?((($signed({3{s6}}))&((s0)-((4'sb0101)>>(3'sb010))))>>({3{4'b1011}}))<<<((((ctrl[4]?+(5'b00001):s4))|((ctrl[0]?$signed(u3):(5'sb10011)-(s3))))<<({s4,(!(u7))+({s3,s0,s5,1'b0})})):$signed($signed({4{($signed(s5))<=({s0,5'sb01101,6'b110000,s4})}}))))<<<((ctrl[6]?(ctrl[4]?{4{(ctrl[4]?~&(+(s7)):u1)}}:(ctrl[4]?(ctrl[6]?($signed(s5))<<(s4):~&(+(3'sb001))):(ctrl[6]?-((s2)<<(4'b1001)):(ctrl[3]?u7:~(5'sb00101))))):$unsigned({($signed((6'sb101101)>>>(s7)))-(($signed(s1))>>($unsigned(2'sb01))),(s5)>>($signed($signed(1'sb0))),+((5'sb10000)!=(+(3'sb101))),(4'sb0101)<<<(-($signed(2'sb00)))})));
  assign y7 = ((ctrl[3]?(s6)^~(+({$signed((+(s4))-(-(s6))),(((s5)<<<(2'sb01))<<(6'sb011010))-((ctrl[3]?{3'sb110,s4}:(6'sb001000)>(s3))),(ctrl[5]?s0:(ctrl[4]?$signed(u5):(ctrl[4]?6'sb001110:s5)))})):-(((ctrl[5]?(s4)>(s5):u5))<<<(s0))))+(s2);
endmodule
