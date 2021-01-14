module wideexpr_00327(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[4]?s2:((((ctrl[6]?-(~&(s6)):5'sb01100))<<($unsigned({(6'sb010100)<(5'sb00010),$signed(3'sb100),s0,{s2}})))<<<(s4))<<(-(((4'sb0100)<<<(((s7)|(2'sb11))|((6'sb001010)>>(s7))))>>(-(($signed(s5))<<(1'b0))))));
  assign y1 = (&(((ctrl[1]?($signed((ctrl[0]?(3'sb011)&(s5):s1)))<<<(((ctrl[0]?(5'sb01111)|(s4):(s6)-(6'sb100100)))|(+((s0)+(2'sb10)))):s1))==(($signed($unsigned((ctrl[7]?1'b1:(ctrl[1]?s5:u5)))))>>>(+(((-(2'sb01))^~((3'sb110)<<<(s7)))==($signed((ctrl[7]?5'b01111:s6))))))))^~({(($signed(3'sb010))-({2'b11,$signed(({u2,4'sb0111,s7,4'b0110})+((2'sb11)!=(s2))),3'sb010}))<<((-({1{((ctrl[0]?s0:4'sb1001))>>((5'sb11111)<<(s1))}}))>>>(+(4'sb1001))),($signed((ctrl[3]?s0:4'sb1100)))|((ctrl[0]?(ctrl[0]?(+(s4))^~($signed((ctrl[5]?s1:3'b100))):(4'sb0010)>>({(4'sb1110)<<(5'b11001)})):$signed((-($signed(3'sb000)))&((ctrl[2]?(s7)^(1'sb0):3'sb101)))))});
  assign y2 = (2'sb11)<<<(s1);
  assign y3 = (((((-(3'sb110))&(((4'sb1011)^~(s0))^(s1)))|((s0)<<((ctrl[0]?s5:(s4)<<(s3)))))<<($signed(|(((ctrl[2]?6'b101010:2'sb00))&((4'sb1110)<<<(2'sb11))))))<<(+(-(s1))))>>>((({s3})+({s3,(ctrl[7]?(ctrl[6]?(6'sb110001)|(6'sb001001):(4'b1001)<=(s7)):s6),!(!($signed(s6))),u1}))==(s3));
  assign y4 = (u3)==(((s3)&((3'b010)==((s2)-(6'sb000011))))!=({(&(s7))^~((s2)<=(2'sb10)),(ctrl[1]?(1'sb1)>>>(s4):(s6)&(3'sb000)),s0,((ctrl[7]?4'sb1101:6'sb010010))<<<((ctrl[2]?s5:6'sb001001))}));
  assign y5 = $signed((($signed((3'sb101)^~($signed((((ctrl[2]?s1:5'sb01110))>>($signed(3'sb010)))<<<((-(s3))<(+(3'sb010)))))))>>((ctrl[4]?(ctrl[0]?(s0)>>({1{2'sb01}}):(-((ctrl[3]?(s2)+(5'sb11111):+(s3))))|((ctrl[7]?((ctrl[7]?4'sb0111:5'sb00101))^((5'sb10000)<<(s4)):$signed((u1)>>>(s6))))):(ctrl[1]?$signed(6'sb011001):($signed((ctrl[3]?-(s1):(ctrl[7]?6'sb100000:s5))))^($signed(s3))))))-((ctrl[6]?((+(((ctrl[4]?5'sb11111:(3'sb111)<<<(u0)))<<<(2'sb10)))-(+(~&((5'sb10110)<<($signed(4'sb0110))))))<<<((ctrl[2]?(s1)^~((ctrl[7]?$signed((u0)-(s1)):$signed((s4)<<(s7)))):(($signed({4'sb1110}))>>>(s7))>>((5'sb00000)^~(-(u2))))):$signed($signed($signed($signed($signed((ctrl[2]?6'sb011100:3'sb111)))))))));
  assign y6 = ($signed((-(~^(6'sb001010)))-($signed(s2))))|(2'sb10);
  assign y7 = +(2'b10);
endmodule
