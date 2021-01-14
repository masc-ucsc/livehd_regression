module wideexpr_00393(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[6]?$signed({((ctrl[1]?(ctrl[5]?((6'sb011010)|(s3))<<((ctrl[0]?2'b01:s1)):((ctrl[0]?1'sb1:5'sb01000))-((s6)&(5'sb00110))):4'sb0110))^(((ctrl[6]?(6'sb100000)<<<((s2)>>>(4'b0001)):((ctrl[0]?s7:6'sb010000))>>(5'b00001)))+(-({(1'sb0)|(3'sb100),s2,{1{5'sb00110}}})))}):s3);
  assign y1 = ((3'b010)^~($signed(((ctrl[5]?s5:s6))>>((2'b00)>>(s2)))))<=((~|({(s2)&(4'sb1110)}))>>>(s1));
  assign y2 = ~^($signed({2{^((s4)+((ctrl[3]?(3'sb000)&(5'sb10101):(ctrl[2]?s6:s5))))}}));
  assign y3 = 4'sb1010;
  assign y4 = ((ctrl[3]?5'sb01010:s1))>>>(+($signed((ctrl[0]?(ctrl[6]?u1:4'b1000):$signed(-(1'sb1))))));
  assign y5 = (ctrl[5]?(ctrl[2]?((ctrl[5]?$signed(s2):3'sb110))>>>({6'sb000100,({4{u2}})<<<(2'sb10)}):s7):(ctrl[1]?$signed((3'sb110)>=((s1)>>>(+(s7)))):((ctrl[1]?+(-(s3)):s0))>>>((-($signed(6'sb110110)))>>(((6'sb001000)|(s1))^(+(4'sb0101))))));
  assign y6 = (s5)<<((($signed((ctrl[7]?3'sb011:5'b01001)))^~((ctrl[6]?3'sb010:(ctrl[7]?s5:s1))))<<<(s2));
  assign y7 = (-(($signed(s6))>>>(((2'sb11)>>>((s5)>>(({2{6'b011101}})-((s1)-(u5)))))^(((ctrl[2]?((ctrl[7]?5'sb10111:s4))<<<((6'sb010011)|(2'sb10)):-((3'sb000)<=(s0))))|(1'sb1)))))&($signed((ctrl[2]?(ctrl[6]?((ctrl[2]?+(2'b01):(ctrl[4]?(3'sb110)>>(s5):3'sb101)))>=(($signed(~(6'sb000101)))<<<(s2)):{2{((5'sb01100)>>>((4'sb1010)|(2'b11)))^($signed(~^(2'b00)))}}):{4{!($signed((ctrl[5]?(2'sb11)|(6'sb100000):s4)))}})));
endmodule
