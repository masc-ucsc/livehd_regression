module wideexpr_00012(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(~^(u2));
  assign y1 = $signed(((((3'b101)-((-((ctrl[7]?1'sb0:5'sb00001)))<=($signed(1'sb1))))-(^((s1)>>>($signed((5'b11110)<<<(s7))))))<((((ctrl[1]?(5'sb11000)^~({2{3'sb111}}):4'b1110))^((((3'b100)>=(s0))|((s2)<(6'sb010100)))^({2{3'sb101}})))^({2{2'b10}})))<<($signed((4'sb1101)!=($signed(((ctrl[4]?$signed(6'sb100010):1'sb0))<<<(+(2'sb00)))))));
  assign y2 = +(|(($signed((3'b010)+(5'sb00010)))>>(5'sb10001)));
  assign y3 = ((ctrl[7]?+({+({2{1'sb1}}),(s3)<<($signed(s1))}):({(ctrl[2]?(6'sb111110)<=(2'sb11):(2'sb00)>(s3)),{4{s3}}})>>>(&($signed((ctrl[4]?u3:2'b01))))))|(s0);
  assign y4 = (({3{|(({1{(ctrl[6]?((ctrl[0]?s4:6'sb111101))^~(2'sb11):+(+(s3)))}})<=((ctrl[4]?{$signed(~^(1'sb0))}:(2'b01)>>>(~^(!(3'sb110))))))}})>>($signed((5'sb00101)>>>(({2{(ctrl[1]?({s0,3'sb011})&((1'b1)^(6'sb100001)):(~(s0))==({4{s1}}))}})^~((({s4})>>>(2'sb00))>>>($signed(((6'sb110001)<<<(3'sb011))&((s6)-(4'sb1100)))))))))&(((((ctrl[6]?+($signed(~^(2'sb01))):~(s0)))>>(((5'sb11111)>>(-({1{(ctrl[5]?3'sb001:s3)}})))-($signed(((ctrl[5]?4'sb1000:(s5)|(6'sb100111)))<<<((+(u3))!=(s6))))))-(s6))>>>({2{(ctrl[7]?3'sb001:(+($signed(((3'b110)<<<(s4))&((ctrl[0]?s7:s3)))))|(-(-(((4'b0000)<<(s0))&(u0)))))}}));
  assign y5 = (s1)&((+(((6'sb111100)<<(u0))^~(5'sb10101)))>>((((ctrl[7]?5'sb00100:6'sb110110))|($signed(s4)))>($signed($signed(s0)))));
  assign y6 = ({$signed(($unsigned($signed(2'sb01)))&((ctrl[1]?(s5)>=(s6):{s0,s6,2'sb00}))),5'sb01110})>>(+(-(+(s1))));
  assign y7 = ((ctrl[2]?(($signed($signed(6'sb111010)))^~(-((s7)-(3'sb011))))+($signed((-(s2))>>>($signed(s0)))):s2))<(($signed(($signed((u5)==(5'b10010)))^((ctrl[6]?(s5)-(3'sb010):(1'sb1)<<<(5'sb11011)))))|(6'sb000101));
endmodule
