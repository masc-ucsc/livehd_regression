module wideexpr_00271(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 1'sb0;
  assign y1 = s4;
  assign y2 = $unsigned(-((ctrl[1]?s4:(ctrl[2]?5'sb00111:s5))));
  assign y3 = 6'sb011100;
  assign y4 = (($signed(u4))<<(s4))>({({u6,u2,(ctrl[0]?2'sb01:1'sb1)})>=({3'sb111,(s3)>>>(4'b0011),{3'sb100}}),s1});
  assign y5 = ^(((s2)^(-({(u2)<<<(&($signed(s3))),{($unsigned(s6))-($unsigned(s0)),(4'sb1001)>=(4'sb1010),($signed(1'sb1))&(s3),4'sb1110},s6})))^~($signed((((ctrl[4]?(+(s6))^($signed(s7)):(ctrl[6]?(ctrl[5]?6'sb010010:6'sb010011):(s7)<<(5'sb01011))))>>>({1{((s0)^(s0))>>((5'sb10100)<=(s0))}}))<<<(((ctrl[0]?(s1)>>>((ctrl[0]?3'sb100:2'sb11)):s5))&(((ctrl[2]?(ctrl[4]?s4:s7):(ctrl[4]?s2:6'sb000000)))<<((+(3'sb001))^~((ctrl[7]?5'sb10010:2'sb10))))))));
  assign y6 = ((ctrl[0]?-(3'sb100):$signed((((ctrl[6]?$signed((1'sb0)^~(5'sb10011)):(1'sb1)^~(((1'sb1)<<(s2))<<<(+(s3)))))<=((ctrl[6]?(((s0)^(s0))<<<(-(s7)))<<($signed((1'b1)>>(s6))):((1'sb0)<<((ctrl[4]?6'sb111101:2'b01)))^(s7))))<<(((((ctrl[1]?{6'sb110101,2'sb11,2'sb00,3'b100}:{4{s6}}))+(u3))==((4'b0100)!=((ctrl[6]?(ctrl[4]?2'sb10:1'sb1):(ctrl[6]?u4:1'b1)))))-((((s2)|((ctrl[3]?1'sb1:s2)))<=(-((ctrl[3]?s5:u1))))<<<(((5'sb01000)>>>((1'sb1)>>(s6)))<<((ctrl[5]?(s1)>(s1):5'sb00010))))))))<<(+(+({2{$signed(({2{(ctrl[3]?$signed(s4):(s7)<<(2'sb11))}})&(4'sb0001))}})));
  assign y7 = (ctrl[3]?{(ctrl[5]?((s4)-($signed((6'sb101001)>>>(s3))))&((ctrl[5]?((s2)>>(1'sb0))<<(u6):(ctrl[2]?(s2)<<(3'b100):-(u0)))):-((6'b101111)^~(~^({2'b01,s0,s3})))),1'sb0,+(4'sb0010)}:s0);
endmodule
