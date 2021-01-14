module wideexpr_00362(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((4'b1100)^~((ctrl[7]?~(5'sb01000):(ctrl[0]?(5'sb10011)<<<((6'b111111)<((ctrl[2]?{$unsigned(s0),s2}:~((s3)>=(5'sb10010))))):(ctrl[4]?(ctrl[4]?u5:(ctrl[5]?{(ctrl[2]?4'sb1011:3'sb111)}:((3'sb111)==(5'sb11001))+({u3,2'b11}))):&({3{$signed((s3)>>(s3))}}))))))-(((({2{s1}})^(~({$unsigned(-(s5))})))+($signed(((u3)>=({1{-({2'b01,s1})}}))!=((-($unsigned((4'sb0111)^~(6'sb101101))))>=(6'sb111100)))))>>>({1{(ctrl[7]?((ctrl[7]?(ctrl[6]?(-(s3))>>>({3{5'sb00110}}):+((s4)&(s7))):(s5)<<<($signed({5'sb11101,4'sb1100,s2}))))^~(2'sb11):(-(-($signed((4'b0110)<<(4'sb1011)))))&(+(((ctrl[7]?(s1)<<(u2):5'sb01111))>>>((u6)+(s4)))))}}));
  assign y1 = (+((((3'sb001)<<<((s4)^(-(5'sb01011))))<<<((ctrl[2]?(ctrl[6]?((6'sb000100)>>>(s5))>>>((s7)<<(2'sb01)):((s2)+(s5))>>>((u3)+(4'sb0000))):s5)))|(((ctrl[5]?-({4{(ctrl[7]?s0:s7)}}):(ctrl[5]?+((1'sb1)+(s7)):(s0)|(+(s5)))))-(((ctrl[2]?s7:$signed(s1)))<<($unsigned({s7,(5'sb01111)>=(2'sb10),(5'sb10000)^~(5'sb01010)}))))))^((({2{1'sb0}})>>(2'sb11))-(-((((+((s0)^~(s0)))>>>(+($signed(s4))))>>((1'sb0)>(6'sb110011)))&(3'sb111))));
  assign y2 = $unsigned((ctrl[1]?(-({4{(s6)<<<(5'b10001)}}))>>({(ctrl[1]?$signed(6'sb110110):4'sb0001),$signed(+(3'sb111)),(s5)<<<(+(u5)),((s2)>>(2'sb00))<<((s3)&(s7))}):(1'sb1)|(-($signed((ctrl[0]?s6:s1))))));
  assign y3 = $unsigned({4{~($signed((({5'sb01010,2'sb00,2'sb00,2'sb01})>>({4{s2}}))-(({1'sb1,s0,2'b10})-($signed(3'sb111)))))}});
  assign y4 = (s7)<<<({3{4'sb1000}});
  assign y5 = ({(s7)==(((ctrl[0]?s1:-(1'sb1)))==(-(6'b100010)))})!=((ctrl[6]?(&({(ctrl[3]?-({3{(2'sb10)<(1'b0)}}):-((ctrl[5]?(s0)<<(5'b00001):s1)))}))<<((-(5'sb10100))+(((($signed(2'sb10))&(((3'sb011)&(5'sb00000))+(+(u6))))+((s7)|(+($signed(6'sb110101)))))<<((u3)<<(($signed({2{s0}}))<<<(&((4'sb1111)>>(4'sb1011))))))):s5));
  assign y6 = s4;
  assign y7 = ({2{$unsigned({1{$signed(s6)}})}})+({3{(-(-((((ctrl[3]?|(s6):{s0,2'b01,5'b01111,s7}))<<<({2'sb11,$signed(u1),(ctrl[4]?6'sb001110:s2)}))-({((5'sb01101)<<(3'sb000))>>>((5'sb00111)&(s3)),(ctrl[6]?(1'sb1)<<(3'sb000):(s4)^(5'sb10011)),u6,{s2,(2'sb00)!=(s5),(6'sb111011)<<(4'b1100)}}))))-($signed(s2))}});
endmodule
