module wideexpr_00191(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (6'sb011111)>>(((ctrl[4]?(s1)<<($signed(4'sb0101)):(ctrl[7]?6'sb010110:$signed($signed(s4)))))<<(($unsigned((6'sb011010)^((ctrl[2]?($signed(s0))+(-(u0)):s5))))>>>((ctrl[3]?((s7)^~(s1))>=(s4):s3))));
  assign y1 = (ctrl[6]?s5:((6'sb111001)>>>($signed({u5})))+($signed({1{(s5)<<<(s7)}})));
  assign y2 = (+($signed(((-((6'sb001000)!=(5'sb01011)))>>>(($signed(s6))>>>(s3)))|(3'sb010))))+(((ctrl[0]?(ctrl[2]?-($signed($signed(6'b100110))):(s1)>>>(((ctrl[7]?s0:s4))<<<((2'sb01)|(s7)))):+(((~(6'sb001111))>>>({4{5'b01001}}))-($signed((ctrl[0]?u3:5'sb01011))))))^((ctrl[2]?$signed(($signed(5'sb00101))<<<(((ctrl[3]?s6:s3))-((ctrl[3]?3'sb010:2'sb00)))):(ctrl[7]?6'sb001110:s1))));
  assign y3 = ($unsigned({s4}))^(({3{&(s7)}})>>>({s3,4'sb1010,-($signed((ctrl[1]?(($signed(1'b1))>>(5'sb10011))|((ctrl[7]?-(s1):$signed(s3))):$signed(2'sb10)))),{u6,(ctrl[4]?$signed(((u3)<<({4{3'b100}}))<<<(((s4)^(s2))|((s3)+(s5)))):(ctrl[1]?s5:((ctrl[7]?+(4'sb1001):6'sb000101))>>((1'sb1)^((s5)+(s6))))),s4,$signed($signed(($signed($signed(s2)))<<<(s3)))}}));
  assign y4 = {1{(ctrl[5]?{4'b0011,{((ctrl[5]?-(u2):s0))-(s3),((ctrl[6]?(4'sb0110)<<<(s6):6'sb110000))&((ctrl[0]?$signed(6'sb101111):(ctrl[6]?s7:3'sb100)))},(^(({1{s2}})&(u3)))^~({($signed(s5))<<(u3),(s5)>>(-(u1)),!((3'sb011)<<<(1'sb1)),$signed((s2)>>>(3'sb010))}),s4}:~^({(ctrl[3]?|(4'b0011):{4{{1{s7}}}}),(ctrl[0]?$signed(s2):(ctrl[4]?(s5)<<(s3):$signed(u5))),(s0)^~(4'sb1100)}))}};
  assign y5 = -(({1{2'sb11}})<<<(+((2'b11)>>((s5)<<<(s0)))));
  assign y6 = (ctrl[2]?s7:(~&(6'sb110001))>>($signed($signed((2'sb01)<<(((1'sb0)&(5'sb11100))>((ctrl[3]?s1:3'sb100)))))));
  assign y7 = {6'b000101,{1{4'sb1000}}};
endmodule
