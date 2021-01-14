module wideexpr_00902(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[0]?{3{(s2)^~((ctrl[7]?s5:6'sb011110))}}:{1{s1}});
  assign y1 = {4{((($signed((s0)<<<(2'b01)))>=(~^({3{5'b00011}})))^~({2{(ctrl[5]?{{4{-(1'sb0)}},(5'sb10001)&(+(+(6'sb100100)))}:{2'sb10,$signed(2'sb01)})}}))-((-((ctrl[1]?{4{$signed({-(4'sb0001),s5,$signed(4'sb0100)})}}:~|($unsigned((ctrl[7]?(s3)^(s6):s4))))))<=(4'sb0010))}};
  assign y2 = (((({((ctrl[6]?(ctrl[5]?1'sb1:$signed(3'sb010)):(ctrl[4]?(s6)<<(6'sb110100):5'sb01110)))-((s1)>>($signed(s0))),(s0)-($signed((-(2'sb01))>>((s5)<<<(s4)))),s4,$signed((s0)!=(1'sb1))})&($signed(~&((-((ctrl[6]?s0:s4)))<<((ctrl[7]?(6'sb100010)>>>(2'b10):(4'sb0010)^~(s1)))))))<<((ctrl[5]?$signed(4'sb1101):((2'sb00)<<(($unsigned({4{2'b01}}))>>(s5)))|(s5))))^(($signed((s7)&((ctrl[1]?((6'sb001110)>>>(s5))^((ctrl[5]?-(5'sb11100):+(s7))):+(s4)))))<=(s3)))>>((s5)>>>((4'sb1000)&((+($signed($signed($signed((s1)>>>(s0))))))^~(+(-($signed($signed(+(4'sb1001)))))))));
  assign y3 = (6'sb001100)^(((ctrl[3]?((ctrl[6]?(ctrl[6]?$signed(s6):s6):(ctrl[5]?s1:(s6)-(s7))))<<((u1)-({1{~^(2'sb10)}})):($signed($unsigned($unsigned(s6))))^((ctrl[5]?+(6'sb111001):(3'sb101)<<<(u2)))))>>(s2));
  assign y4 = (((((ctrl[5]?1'sb0:s7))<<<((s3)>>(4'sb0110)))&($signed(s1)))&(5'sb10010))>>>({3{(-((ctrl[0]?1'b1:3'b000)))>=(s0)}});
  assign y5 = {4{$signed(1'sb0)}};
  assign y6 = -((ctrl[7]?u2:u4));
  assign y7 = (~^({1{$signed(+((ctrl[0]?$signed(u7):(5'b10101)>>(s7))))}}))<<((ctrl[1]?((s0)^~(3'sb100))>>>(s6):s2));
endmodule
