module wideexpr_00873(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +(~&((ctrl[5]?~^({3{((ctrl[1]?1'sb0:6'sb110110))-($signed(u5))}}):{2'sb10,2'sb00,$signed(+((ctrl[5]?5'sb01000:s7)))})));
  assign y1 = (ctrl[4]?6'sb111111:u4);
  assign y2 = s1;
  assign y3 = {1{{6'sb100100,+((6'sb010011)>=(2'sb01))}}};
  assign y4 = ((ctrl[0]?(ctrl[0]?-($signed(-(u1))):(s5)<<((ctrl[5]?(u5)&(s6):$signed(s3)))):(ctrl[3]?($signed(|(1'sb0)))&($signed(-(u4))):(6'sb001110)<<<(((s3)<=(s2))>>((ctrl[1]?3'sb100:2'sb00))))))|(3'sb010);
  assign y5 = -((5'sb10010)<<<(($unsigned((s0)^(($signed((5'sb11011)==(s2)))<<({4{s0}}))))^((ctrl[1]?((ctrl[6]?-(^(s3)):1'sb0))>>({4{$unsigned({s0,3'b110,1'sb0,s5})}}):-(4'sb0011)))));
  assign y6 = {2{$signed((ctrl[7]?$signed((s6)<(s1)):s5))}};
  assign y7 = $signed((s2)!=(-((!(s1))-((3'b001)|(u5)))));
endmodule
