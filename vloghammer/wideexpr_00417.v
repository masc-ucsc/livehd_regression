module wideexpr_00417(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {($signed({1{((ctrl[6]?(ctrl[5]?$signed(~|(2'sb00)):(ctrl[1]?$signed(5'sb00000):+(u5))):$signed($signed(s0))))&(6'sb100101)}}))<<(($signed((($signed($unsigned(3'sb000)))>>>(s1))-(s6)))>=((s5)^~(s3))),{2{6'sb101110}},$signed(+({$signed(-(($signed(1'b1))&(4'sb1011))),$signed(($signed(&((6'sb001000)==(1'sb0))))^({u5,5'sb00000,({3{s1}})&((ctrl[3]?s1:u6))}))}))};
  assign y1 = s6;
  assign y2 = 3'sb000;
  assign y3 = -(3'b101);
  assign y4 = {($unsigned(s6))+({&((s5)^(2'sb10))})};
  assign y5 = (ctrl[6]?$signed((ctrl[0]?(+(-(~&(6'sb101000))))>>((ctrl[3]?(+(s3))|($signed(s2)):s3)):(s5)<<<(1'b0))):-(((ctrl[1]?((s0)>>(s5))>>(+((s5)<<<(s5))):+({3{{3'sb010,5'sb10100,6'sb110011,s6}}})))^~(-({((ctrl[4]?s0:s2))^~((4'sb0111)+(s2))}))));
  assign y6 = {(3'sb010)-(5'sb01110),(ctrl[4]?$signed($signed($unsigned(+(((ctrl[6]?3'sb101:s6))&((3'sb000)<<<(s5)))))):($signed(s2))>>>((((s4)<=(-((ctrl[0]?s0:s0))))<<<($signed(s0)))>>((ctrl[2]?{$unsigned(3'sb001)}:{s5,($signed(s5))<=(~(s7)),((5'sb10011)<<(5'sb00101))>>(^(s6)),~&(~^(1'sb1))})))),($signed(((s1)<<(1'sb0))>>>($unsigned((2'sb11)^~((6'sb100100)>>((s3)|(s2)))))))>>>($signed(s4)),(6'sb100100)>>>(-({2{-((($signed(3'sb101))^((ctrl[3]?5'b11001:s4)))!=({1{(ctrl[6]?5'sb01010:u4)}}))}}))};
  assign y7 = {4{({2'b01})==(({1'sb1,(ctrl[6]?(ctrl[6]?s2:$signed((5'sb00110)<<<(2'sb01))):((((ctrl[0]?s6:s2))|((5'sb11000)&(6'sb101010)))|(+(5'sb11011)))>>>(($signed({s4}))>>($signed((ctrl[4]?6'sb100111:5'sb00001))))),u4})>>((($unsigned($signed({2{{s2,2'sb01}}})))-((ctrl[3]?(ctrl[3]?((s0)-(2'b10))-((1'b0)>>>(1'b1)):{$signed(s7)}):{1{((3'sb101)-(3'sb111))>>>({s0,s5})}})))+(({-((-(4'sb0000))!=(3'b110)),{((s7)!=(1'sb0))<<(3'sb001)}})>>>(u1))))}};
endmodule
