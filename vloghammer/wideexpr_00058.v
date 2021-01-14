module wideexpr_00058(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (s6)!=(s2);
  assign y1 = (((ctrl[2]?+(^((s7)<<(((6'sb001111)|(3'sb001))>>>((ctrl[4]?3'b101:u6))))):-((ctrl[4]?s7:$signed($signed(s5))))))-(((ctrl[5]?s5:(ctrl[4]?($signed({4{s6}}))^~((+(s2))-((ctrl[2]?6'sb111011:s5))):$signed($signed((s4)^(3'sb000))))))>>>(({4{$unsigned((u3)>>(-(s6)))}})<((({2{{4{u5}}}})|({4{$signed(s2)}}))>(+($signed((2'sb11)<<<(3'sb110))))))))!=((((((((s1)^~(5'sb11010))<<($unsigned(s7)))^(3'sb100))<<<(3'sb001))^~(-(((~|(s3))+($unsigned(5'sb01111)))>>>({1{~&(1'sb1)}}))))&((ctrl[0]?((ctrl[6]?$signed((3'sb011)^~(u2)):(ctrl[1]?(ctrl[2]?s6:2'sb01):$signed(u3))))<<<($signed(-($signed(s3)))):($signed({2{(3'sb100)+(s6)}}))<<<((s6)+(+((1'sb0)<<(u4)))))))>>(6'sb111101));
  assign y2 = s5;
  assign y3 = (s1)>=((ctrl[5]?(ctrl[6]?(ctrl[6]?(ctrl[4]?-(((ctrl[3]?4'sb1000:3'sb010))<<($signed(s7))):($signed($unsigned(5'sb01101)))&(((+(6'b011111))^((s0)>>(2'sb10)))>>(({1{s1}})<<<((ctrl[2]?s2:s4))))):$signed(4'sb0100)):(+((ctrl[7]?+({2{(ctrl[2]?u7:u6)}}):-(({u0,1'sb1})-({4{u1}})))))<<<({3{$signed(($signed(6'b111000))>>>(s2))}})):s1));
  assign y4 = (ctrl[1]?2'sb01:(ctrl[6]?-(u2):-(~^($signed(s2)))));
  assign y5 = u4;
  assign y6 = (1'b0)|(u2);
  assign y7 = $signed(3'sb110);
endmodule
