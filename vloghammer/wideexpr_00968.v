module wideexpr_00968(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[3]?s1:+($signed(~&((-(2'sb01))+(1'sb1))))))^($signed(4'b1001));
  assign y1 = (6'sb001100)^~(s2);
  assign y2 = ({3{(6'sb000010)<($signed({(ctrl[3]?$signed(u0):(+(1'sb1))>>>(((ctrl[5]?4'b0100:3'sb010))>>>($signed(s2)))),(u5)<<($signed(($signed(u3))>((ctrl[1]?s5:s6)))),(ctrl[7]?(ctrl[0]?s6:s2):(3'sb110)<<<({4{4'b1000}}))}))}})+(($unsigned(((5'sb10011)^($signed((6'sb110111)^~({1{(4'sb1100)>>(4'sb1100)}}))))<<<((2'sb10)<=(s6))))<<<(($signed($signed(4'b1001)))+((ctrl[1]?+({2{({4'sb0001,2'sb11})^({4{(ctrl[6]?s7:6'sb000001)}})}}):(s5)^~($signed((ctrl[6]?(+(s3))==((4'sb0010)>>(s0)):u0)))))));
  assign y3 = 3'sb111;
  assign y4 = ((ctrl[5]?-(((2'sb01)&(s3))|(1'sb0)):(ctrl[1]?5'sb01110:((ctrl[4]?1'sb1:s6))<<<((s0)-(4'sb1010)))))|((((ctrl[0]?s7:(ctrl[3]?2'sb01:5'sb00100)))>>(((ctrl[0]?s2:s1))<<((6'b001010)==(4'b0001))))+(((+(1'b1))<<((s5)+(6'sb010010)))^((ctrl[1]?(3'sb010)|(4'sb0010):(2'sb00)|(5'sb11101)))));
  assign y5 = ({{^(({6'sb111011,5'sb01111})==(+(1'sb1)))},+(({s0})<<<($signed((s5)<<<(u3)))),~^(((ctrl[4]?(s4)^(s2):1'sb0))>>((ctrl[1]?$signed(s4):(ctrl[1]?s2:2'sb11))))})>>>(((ctrl[1]?+((ctrl[2]?(2'sb11)==(u2):{1{s6}})):(s7)^~($signed((ctrl[5]?4'b0010:5'b11001)))))<<(($signed((|(s0))|($unsigned(s6))))^~(((ctrl[5]?s2:s1))^(((ctrl[3]?1'sb0:2'sb01))^(s5)))));
  assign y6 = 4'sb0100;
  assign y7 = ((($unsigned(6'sb101110))<<<(s3))>>(+((ctrl[2]?($signed((s2)<=(3'sb111)))<<(((1'sb0)&(3'sb011))^($signed(4'sb1111))):((ctrl[0]?-(s1):(6'sb110001)>>(s1)))>>>($signed(5'sb00111))))))<<<(($signed((ctrl[6]?s6:s4)))<<(~^((+((6'sb010101)<<<((s0)-(s7))))<<<(({1{{4{u6}}}})-(-((ctrl[6]?s3:2'sb01)))))));
endmodule
