module wideexpr_00640(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $unsigned((((2'sb00)^~(-(!((ctrl[1]?s4:(2'sb00)|(s7))))))|((s5)&(s7)))|(($signed((ctrl[7]?s2:3'sb100)))^~($signed((ctrl[4]?((ctrl[7]?(+(3'sb011))<<<((1'sb0)>>>(s1)):1'sb0))>>>((ctrl[5]?((ctrl[3]?s4:s3))^~(2'sb11):((s5)^~(s0))<<(3'b000))):(ctrl[1]?2'sb10:((ctrl[1]?(s6)>>>(1'sb1):(ctrl[6]?4'sb0010:6'sb110100)))>>>($signed((u6)^~(u5)))))))));
  assign y1 = +((ctrl[2]?(ctrl[4]?u6:((s1)>>(5'b00100))|((2'sb00)!=(u6))):$signed(-(4'sb1100))));
  assign y2 = s2;
  assign y3 = ((+(({4'sb0001,2'sb01})<($signed(s4))))&((($signed(s3))>>>(((ctrl[7]?(s6)==(s5):(2'sb10)^~(4'b1100)))<<<((|(s0))^({3{4'sb1010}}))))<<($signed($signed(3'sb101)))))|(((ctrl[1]?$signed(s7):($signed(3'b110))>>($unsigned(^((s4)>>>(s6))))))^(s4));
  assign y4 = $signed(~|({({1{(ctrl[5]?u3:($signed((5'sb00110)==(2'sb11)))>((4'sb1101)!=((s7)>>>(5'sb10110))))}})<<(($signed(5'sb11100))<<<(((({u6})>>>({4{4'sb1000}}))<<($signed((s5)<<<(s7))))<<<(+((ctrl[7]?s7:s5))))),s6,($signed($signed((ctrl[7]?{&(u3),s6,(1'sb1)<<<(3'sb000),(s5)>>>(s0)}:$unsigned((s6)|(4'sb0000))))))<<<({({1{$signed((s5)^(s2))}})|((u7)+(~(~&(4'sb0100)))),((((s6)-(s6))>>>(3'sb010))&(($signed(1'sb0))^($signed(6'sb010101))))>>($unsigned(-((ctrl[4]?s2:2'sb01))))}),+(-(((($signed(u2))&($signed(1'sb1)))<((ctrl[7]?+(4'sb1010):(ctrl[6]?6'sb000110:s6))))^({s0,((ctrl[4]?s1:s2))+((2'sb10)>>>(u2)),(ctrl[0]?(s0)>=(s4):{2{2'sb11}}),($signed(s5))^(6'sb001101)})))}));
  assign y5 = (ctrl[5]?({s7,{1'sb1,(ctrl[4]?(6'sb000100)&((s5)-(s4)):5'sb11011),(1'sb0)>=(u3)},5'b00011})>>($signed(-((ctrl[1]?u1:((s6)^~(1'sb0))|((4'b0110)>>(s1)))))):2'sb00);
  assign y6 = (+(({$signed(u1),5'b11101,6'sb000111,{{2{6'b000110}},5'sb10000}})&(5'sb00001)))<<<($unsigned((-(((s0)<<(4'b1001))^~({s7,s4,s4,6'sb000011})))<=((ctrl[3]?(6'sb111100)>((2'sb11)-(s7)):(ctrl[5]?s0:5'sb11111)))));
  assign y7 = (((ctrl[7]?s7:+(-(2'sb01))))==(+($signed(~|(2'b00)))))<<<((ctrl[6]?$signed(u7):(ctrl[4]?(ctrl[4]?(4'sb1101)<<<(u2):(4'sb0001)>>>(6'b000110)):2'sb10)));
endmodule
