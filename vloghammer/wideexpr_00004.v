module wideexpr_00004(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (+($signed(u5)))<<($unsigned((+(5'sb11010))>>(s6)));
  assign y1 = (($signed((ctrl[0]?($signed(s2))|((2'sb00)>=(u4)):1'b1)))&(($signed(((s7)-(s1))>>>({4{s5}})))|(2'sb01)))^~(s6);
  assign y2 = -({u0,((ctrl[2]?((s4)-(($signed((ctrl[5]?5'sb11011:u6)))<<(s2)))<<((6'sb110111)>>((((s0)>>(s2))|($signed(1'sb1)))^~((ctrl[7]?(4'sb1111)>>(s0):(ctrl[4]?5'sb01001:3'sb111))))):5'sb10000))<=(-((1'b0)<((~($signed(5'sb00100)))<=(($unsigned($signed(s5)))<<(((4'sb0010)<<<(5'sb11110))+($signed(s4))))))),{1{$signed(-(5'b00011))}},-($signed(4'b0100))});
  assign y3 = ((({2{(2'sb01)<<<((ctrl[3]?6'sb110011:6'sb101100))}})!=(({(+(+(6'sb111111)))==((ctrl[5]?(2'sb11)|(5'sb11110):s4)),(ctrl[2]?($signed(s7))<=(s6):{3{(ctrl[2]?4'sb0001:5'sb10111)}}),{1{(ctrl[2]?$signed(u2):$unsigned(u3))}}})>=(s3)))^~(-((ctrl[3]?({((3'sb000)!=(5'sb01000))^(5'sb00110),(s6)|($signed(s0)),s0,$unsigned({4'sb0110})})>>>((s0)>>((ctrl[2]?$signed(u6):u2))):($unsigned(((ctrl[2]?s6:s7))&($signed(s0))))&(4'b1110)))))^~(2'sb00);
  assign y4 = s7;
  assign y5 = (ctrl[5]?u3:({{(ctrl[0]?{3{1'sb1}}:(1'sb1)!=(5'sb11010)),~^((ctrl[2]?3'sb110:6'sb100101))}})<<<($signed((ctrl[4]?{1{s5}}:~&((($signed(s2))|((s4)<<(2'sb11)))|((ctrl[2]?(3'sb001)>>>(s7):+(s1))))))));
  assign y6 = ({4{4'b1010}})>=((({4{(-(1'sb1))-(3'sb000)}})<<(((+((ctrl[3]?s0:(s1)>>(6'sb100101))))<<(s1))^((($signed(+(1'b1)))>>((2'sb11)>>>(+(4'sb0001))))<<<((ctrl[0]?(ctrl[4]?$signed(2'sb11):3'sb111):(4'sb1001)^(-(s1)))))))^({2'sb00}));
  assign y7 = (({$signed(4'sb0001),(s7)|({2{2'b11}}),$signed(u4),(4'sb1010)>>($unsigned(s1))})+({2{~&(s3)}}))>>>(s5);
endmodule
