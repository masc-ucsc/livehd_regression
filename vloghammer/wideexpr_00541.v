module wideexpr_00541(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (((ctrl[2]?(((ctrl[7]?(s6)<<<(1'sb0):3'sb001))<<({+(u7),$unsigned(4'sb0111),(3'sb010)<<(s1),(6'sb110110)|(s2)}))>>>((ctrl[1]?((3'sb011)-(1'b1))!=((6'sb110000)+(5'sb11111)):(ctrl[4]?$unsigned(1'sb0):$signed(s1)))):$signed(-(1'sb0))))<(s2))>>>(($signed((6'sb110100)<<<(($signed(s6))-(-(&(s6))))))<<(($signed(((-(1'sb1))<(-(u0)))>>>(((ctrl[2]?6'sb101000:6'sb110010))<<($unsigned(6'b011010)))))>=((s5)^~(+((ctrl[0]?+(s5):s0))))));
  assign y1 = -((ctrl[0]?$signed(u6):$signed(s1)));
  assign y2 = $signed((4'sb0010)<<((s2)^(s1)));
  assign y3 = ((-((((s4)<<<(u5))+((ctrl[0]?s3:2'sb11)))!=(3'sb010)))<=((ctrl[5]?+($unsigned((6'sb000101)-(s5))):((-(2'sb10))>>($unsigned(s4)))<<((4'sb1100)<<<((s0)+(6'sb110101))))))<<<((s0)-($signed($signed(3'b011))));
  assign y4 = (-((ctrl[7]?4'sb0110:(ctrl[5]?(2'sb01)<<(3'sb010):+((ctrl[6]?$signed(1'b0):2'sb11))))))<<((((ctrl[7]?-(1'b0):(s6)<<($signed($unsigned(((ctrl[0]?5'sb11010:2'sb01))&(s3))))))<(3'sb000))>>>(-(($signed(({((ctrl[1]?5'sb11100:s6))>>((3'sb000)<<<(1'sb0)),^($signed(1'sb1)),((1'sb0)>=(s7))<<((4'sb0001)^~(s4))})>>({2{3'sb000}})))==(-((&(((ctrl[5]?1'sb1:6'sb101111))>>(+(4'sb0110))))|((4'sb1001)<<<({(s4)|(s7),(4'sb1110)^(1'sb1)})))))));
  assign y5 = ($unsigned(((+({4{u1}}))>>(($signed(u7))<<<(4'sb0000)))-($signed(u3))))^~({s1});
  assign y6 = {(1'b0)|(s7),s2,6'b110001,($signed((u1)<<(6'sb110111)))<<<((((ctrl[0]?~(($signed(s0))+(+(1'sb0))):{2{s4}}))<<($signed(s5)))-($signed(+(((ctrl[5]?s3:$signed(3'sb000)))&(((6'sb110011)>>(5'b11110))<<<((s7)<=(5'sb11101)))))))};
  assign y7 = (^(6'sb001101))>>>(3'sb000);
endmodule
