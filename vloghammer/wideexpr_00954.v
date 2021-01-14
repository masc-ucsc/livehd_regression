module wideexpr_00954(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (-((2'sb11)+(-(($signed({(2'sb00)>>>(4'sb0011),(6'sb100011)+(1'sb0),(s7)^~(s5)}))-(s3)))))&((($signed({4{({2{5'b11101}})<({2{6'b011101}})}}))>>({2'sb11,~|((5'sb01101)^~((+(s6))^((s4)-(6'sb000101)))),((ctrl[4]?+((ctrl[2]?u6:2'sb11)):(ctrl[6]?$signed(s2):2'sb01)))<<<(((ctrl[4]?$signed(u3):(s3)>>>(6'sb100011)))<<<($signed($unsigned(6'b000101)))),((-(+(3'b100)))&(($signed(6'sb101100))>>(4'sb1111)))>>>($unsigned(s7))}))&($signed({(+(5'sb01011))-(s7),{s5,(ctrl[5]?$signed((4'sb0110)>>(s4)):1'sb1)},{(s0)>=(2'sb00),{4{($signed(s0))^~(s6)}},$unsigned((3'sb010)>>($signed(3'sb111))),$signed($signed((s4)<<<(u1)))}})));
  assign y1 = ({u3,|(~({3{3'b111}})),(4'sb1101)<<<((ctrl[4]?s0:!(4'sb0111))),(ctrl[6]?($signed((($signed(s1))<<<((s7)<<<(s1)))&(((1'sb0)>>>(u3))>>(5'sb11111))))^($signed((ctrl[6]?$unsigned((2'sb11)>>(6'sb011010)):1'b0))):(ctrl[3]?(s1)<<(s0):$signed((ctrl[5]?{4{$unsigned(s4)}}:5'sb01011))))})>>({4{(+(((-($unsigned(4'sb1100)))>(+({2{1'sb0}})))&(($unsigned(1'b1))>>>(($unsigned(4'sb0010))<<((4'sb0101)!=(5'sb11001))))))^~((((3'sb110)<<<(s2))>>((ctrl[7]?$signed((u7)^(6'sb110100)):{4{$signed(5'sb01001)}})))&($signed(+((s3)&(3'sb010)))))}});
  assign y2 = (ctrl[6]?~(!(({2{(-(+(s5)))>>((ctrl[6]?$signed((6'sb101111)>>(s6)):(ctrl[4]?(s5)^(s4):(6'sb111000)+(s5))))}})>>(^(~|((({1'sb1,3'b110})^((6'b100001)|(5'b11101)))>>(+({2'sb01,6'sb010010,1'sb0}))))))):{~((s7)^((+((6'sb100010)|(s1)))^~((s0)>>(($signed((ctrl[3]?s1:1'b1)))&((5'sb10001)>>>(u4)))))),(ctrl[2]?s4:(ctrl[7]?(ctrl[2]?({{4{{s2}}},-(~(s0)),(6'sb101000)<<<((s0)+(3'sb110))})>=(({4{3'sb001}})-(3'sb111)):({2{(ctrl[6]?(u1)+(3'sb100):4'b1110)}})<<(((6'sb101100)<<<(s3))+(s5))):5'b10010)),$signed((ctrl[2]?(2'sb00)^(((ctrl[6]?-((s4)<<(s3)):s4))<<<(+((-(3'sb000))>=(+(2'sb01))))):(ctrl[5]?+((ctrl[4]?((ctrl[5]?2'sb01:u0))^~(-(5'sb11000)):u3)):$signed(3'sb000)))),(((ctrl[1]?$signed({2{-({2'sb00,3'sb010})}}):-((ctrl[0]?-({2{5'sb11110}}):3'sb001))))+(s0))^(5'sb00110)});
  assign y3 = {1{(ctrl[1]?(ctrl[6]?$signed((ctrl[0]?~|((-(s1))^~(((s3)<<(5'b10011))-(+(s3)))):4'sb1011)):(-(2'sb11))>>((2'sb11)|(s5))):-(5'sb01110))}};
  assign y4 = 5'b11001;
  assign y5 = $signed((ctrl[6]?((s7)>>>((ctrl[6]?(3'sb011)^~(2'sb11):(s6)>>>(4'sb1101))))!=(6'sb000001):(u4)<<<(^(($signed(4'sb0110))>>>(s7)))));
  assign y6 = (ctrl[4]?(((s5)==(+((((ctrl[4]?6'sb010100:(s1)<<<(6'b111001)))-((+(s1))+((2'sb01)<<(u3))))&(3'sb110))))^~({2{{4{s5}}}}))<<<((2'sb00)+($signed($unsigned((ctrl[0]?(s6)<=(5'sb11111):-(($signed(3'sb110))>>>(+(u3)))))))):{1{((+((-(2'sb10))^((ctrl[7]?($signed(s0))+((s0)<<<(s7)):(ctrl[0]?5'sb01001:-(s5))))))>>({1{+(2'sb00)}}))!=($signed(($signed((ctrl[0]?($signed(s0))>>>($signed(6'sb001000)):(+(4'sb1100))>>(-(6'b001110)))))&(5'sb10111)))}});
  assign y7 = ((ctrl[7]?((ctrl[5]?6'sb010100:$signed((((s7)^~(s6))>>>((ctrl[0]?5'sb11001:5'sb00101)))^(2'sb10))))&(1'sb1):2'sb00))<<(5'sb10001);
endmodule
