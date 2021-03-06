module wideexpr_00326(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[6]?+(s0):(((3'sb110)&((2'sb11)>>>(s5)))>>>(-(s5)))-($signed((+((s1)^(s3)))>>>(((s6)<<<(s1))<<<(s6)))));
  assign y1 = {(ctrl[2]?4'sb1011:($signed({s6,2'sb10}))>>((ctrl[0]?-(4'sb0001):(s0)==((3'sb111)<<(-((1'sb0)<<(u4)))))))};
  assign y2 = (s6)<<($signed($signed($signed((!(1'sb0))^((ctrl[1]?(2'b10)|(s6):(5'sb10100)&(u2)))))));
  assign y3 = ((+(2'sb11))<<<(s7))>=({(ctrl[0]?6'sb010100:$signed({6'sb011010,s1,s0,u0})),{$signed(-(s7))},((ctrl[4]?(6'sb100110)+(3'sb110):+(s4)))-(+($signed(s3))),(((5'sb10110)==(s4))^~(1'sb0))>>>(s5)});
  assign y4 = s4;
  assign y5 = $unsigned(+($signed($signed(-(s7)))));
  assign y6 = ((-(^($signed(&(s4)))))<<<((ctrl[4]?u5:4'b1001)))<<<(((($signed(+((ctrl[3]?((s0)&(5'b00011))>>>((2'sb00)>=(u1)):s4))))^~($signed((-((ctrl[4]?(4'sb1110)^(s7):(3'sb111)^~(3'sb000))))|($signed($signed(s1))))))<<(((($unsigned(s3))^~({2{$signed((ctrl[4]?2'sb10:s6))}}))^~({(ctrl[0]?$signed((s6)&(s3)):(4'sb1010)<((ctrl[7]?s2:s2)))}))^($signed({s3,4'sb1100,$unsigned((5'sb11000)^~((s1)!=(s3)))}))))>((ctrl[5]?(ctrl[0]?((ctrl[6]?3'sb001:$signed((ctrl[7]?(ctrl[0]?5'sb10110:3'sb010):(s5)>>(s5)))))>>>($signed($unsigned(((4'sb1000)-(1'sb0))<<((u7)!=(6'sb010010))))):$signed(s3)):((ctrl[3]?-(s0):-(((ctrl[0]?{3{6'sb011000}}:(s1)^(3'b111)))<<<(3'sb001))))^~(1'sb1))));
  assign y7 = (ctrl[1]?+(s3):2'sb11);
endmodule
