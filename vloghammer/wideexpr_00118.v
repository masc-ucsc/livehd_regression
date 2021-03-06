module wideexpr_00118(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {&(~|(((4'sb1000)!=(s3))!=((5'sb01101)&(s1))))};
  assign y1 = 5'sb11101;
  assign y2 = -(s7);
  assign y3 = ~(-(((ctrl[0]?((s0)+(s6))<<(s0):s4))<<((+({4'b1110,u1,2'b11}))&(-(2'b01)))));
  assign y4 = (ctrl[2]?(3'sb100)>>((+(3'sb010))^~($signed((s1)+((ctrl[0]?(ctrl[6]?+(s1):s6):s1))))):(((-((s3)==((s3)>>(3'b110))))+(6'sb110010))<<($signed($unsigned($unsigned((ctrl[4]?(s2)|((ctrl[7]?6'sb110000:s6)):6'sb011101))))))|((ctrl[0]?s5:s5)));
  assign y5 = {($unsigned(3'sb101))^~(~^((6'sb010101)^~(-($signed(({+(s6),(s4)<=(3'sb110),(s5)|(s2)})^~($signed((u2)<<<(1'sb0)))))))),$signed(~|((((3'sb010)>>((s4)+($signed(+(s4)))))<<<((ctrl[0]?((ctrl[1]?{6'b000001,s6}:(ctrl[0]?3'b101:3'b011)))<<({4{(6'sb010001)|(5'sb10111)}}):$signed(s7))))|(1'sb1))),$signed($signed((~&($signed(+(-({4'b0001,4'b0011,2'b00})))))<<<((ctrl[6]?$signed(($signed((ctrl[5]?s4:u4)))>>>(5'sb01011)):s1)))),{4'sb0110}};
  assign y6 = $signed({4'sb1010,(ctrl[5]?(-(u0))|((ctrl[6]?(ctrl[5]?s5:2'sb00):s7)):3'sb001),$signed(((-(s0))^($signed(u0)))==((ctrl[3]?(1'sb0)^(6'sb000100):+(6'b100000)))),s4});
  assign y7 = -((^((ctrl[7]?3'sb001:$signed($unsigned(2'sb00)))))>>((s0)&(s6)));
endmodule
