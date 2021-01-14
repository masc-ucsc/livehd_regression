module wideexpr_00588(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ({($signed((3'sb111)&(s0)))<=($signed(6'b000010))})>>>({2{((ctrl[4]?s5:(6'sb111000)>>(s5)))^(-(s4))}});
  assign y1 = +((-((5'sb00000)>>>(((ctrl[6]?1'b1:$unsigned((ctrl[7]?(ctrl[7]?s2:u1):u0))))>>>((((ctrl[0]?1'sb1:+(u7)))&(4'sb1010))&(s0)))))^($signed(u2)));
  assign y2 = ({(-({2{((((s0)>>>(4'sb0101))<<((ctrl[3]?2'sb10:2'b10)))<<<({1{1'sb1}}))>>(({2{{4{4'sb0100}}}})>>({2{s6}}))}}))>>(((ctrl[1]?$signed(((s5)>>>(s6))|(6'sb011110)):$signed(+(((ctrl[3]?4'b1011:2'b00))^((1'b1)>(s0))))))<<<((ctrl[2]?((s3)^~(1'sb0))>>(!(((ctrl[4]?3'sb111:2'sb10))>>({4{s5}}))):(3'sb000)>>(((ctrl[7]?(u0)|(u7):$unsigned(1'sb1)))|(((4'sb1010)<=(s7))==($unsigned(1'sb1))))))),{+(6'sb110001)},+((((ctrl[4]?{1{3'sb110}}:(6'sb000111)^((ctrl[6]?2'sb11:5'b11111))))<<<(4'sb0101))>>>((!($signed((-(u4))<<<($signed(4'sb0011)))))&($signed((ctrl[7]?((ctrl[0]?3'sb001:s4))>=((ctrl[6]?6'sb000010:s0)):((4'sb0101)<<<(s4))>=(+(5'sb01110)))))))})-((((s0)<<<((ctrl[3]?(3'sb010)>>(({{1{s6}},$signed(5'sb11110),$signed(u6)})|(2'sb11)):{3{{1{u5}}}})))&((ctrl[0]?((((u5)<<({3'b100,s7,s5,s2}))<<<(5'sb10101))<<(6'sb011011))^(u5):5'sb11000)))^~(~|(&(((ctrl[0]?($signed(s7))|(((ctrl[1]?2'sb01:5'sb01010))+($signed(u4))):(-(&(1'sb0)))<<<($signed($signed(4'b0110)))))-(s0)))));
  assign y3 = -(-(((ctrl[5]?-({(((3'sb000)+(s7))<=(-(s6)))-(3'sb110),$signed(5'sb00100),$signed((4'b1111)!=((3'sb111)<(s4)))}):s4))|(s4)));
  assign y4 = (3'sb011)<({2{{2{(ctrl[3]?((5'sb11110)+(s7))<<(1'sb1):2'sb00)}}}});
  assign y5 = (u2)^~($unsigned((ctrl[7]?(ctrl[3]?$signed(((5'sb10011)-(3'sb011))>>>(-(s7))):(ctrl[0]?($signed(s7))|((1'sb0)<<(s7)):$signed((ctrl[5]?3'sb010:s2)))):($signed((+(6'sb110111))<<<((s4)<<<(1'b1))))>>((6'sb100010)-($signed(u7))))));
  assign y6 = (((+((ctrl[1]?(6'sb000110)==(6'sb000100):((u6)<<(s1))^~((4'b1001)^(s6)))))>=(6'sb110100))>>>(((ctrl[1]?((6'b100110)-(&(2'sb00)))>>(s4):({3{{5'b11111}}})<=($unsigned(s0))))&((ctrl[2]?1'b0:(((s6)&(s2))<<<(1'sb0))!=(+($signed(2'sb11)))))))==({3{(ctrl[5]?4'sb1000:6'sb010100)}});
  assign y7 = $signed((ctrl[5]?2'sb01:s3));
endmodule
