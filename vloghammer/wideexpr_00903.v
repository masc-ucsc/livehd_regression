module wideexpr_00903(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (+(-(5'b11111)))>(s3);
  assign y1 = +(+(u7));
  assign y2 = ((!(u5))<<<((+(+(3'sb010)))>>(&((ctrl[7]?(s7)+(($signed((5'b10100)&(u6)))^(3'sb110)):((ctrl[2]?((s2)|(s3))|((ctrl[3]?s1:6'sb010100)):+((ctrl[1]?3'sb111:u5))))^~((ctrl[2]?-($unsigned(2'sb00)):s7)))))))==((((ctrl[5]?2'sb00:(ctrl[6]?(ctrl[1]?s0:s0):+(u6))))==(-((5'sb10100)!=(2'sb11))))+({{$signed(1'sb1),-((s7)<=(4'sb1001)),(ctrl[3]?+((ctrl[1]?($signed(s6))^~((ctrl[7]?s7:4'sb0001)):$signed($signed(s4)))):((ctrl[7]?$signed({s6,u4}):s4))<<((ctrl[5]?$signed({s4}):{{4{s0}},s1,$signed(u0),|(s6)})))}}));
  assign y3 = {2{(s4)^~(1'b0)}};
  assign y4 = (ctrl[7]?((-(u3))^(((s7)>>>(1'sb1))>>(-(5'sb01100))))^(-(({4{({4{5'sb00100}})<<((ctrl[3]?{2{$signed(s7)}}:(3'sb010)<=((u7)+(3'b111))))}})>>((ctrl[0]?$signed(-(+((4'b0110)!=(5'b01011)))):{s6})))):((s6)<<<((s4)<<({(($signed((ctrl[3]?3'b100:5'b11000)))^(((ctrl[2]?s6:6'sb100000))>>(4'b0010)))<<<(2'b11),{1{s7}},(({(2'sb11)>>>(5'sb10000),{3{1'b1}},3'sb110,-(s3)})<<<(5'sb01001))^~({(2'b01)^((u2)^~(3'sb100))}),$signed((ctrl[3]?~|((ctrl[7]?6'sb011001:s1)):3'b010))})))>>((ctrl[0]?-(3'sb001):(+(5'sb00111))-(5'sb00010))));
  assign y5 = $unsigned(5'sb11110);
  assign y6 = ~|(s5);
  assign y7 = +((ctrl[2]?(($signed(u1))^(3'sb001))+(3'sb111):(ctrl[7]?((s4)|($signed(((s1)>>>(2'sb00))<<(u3))))|((-(({2{s5}})<=((6'b101100)<<<(2'b10))))>>(({2'sb00})-(6'b100011))):-({1{{-((s3)==(u4)),{3{(s7)==(s1)}}}}}))));
endmodule
