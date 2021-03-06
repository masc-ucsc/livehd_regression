module wideexpr_00701(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s7;
  assign y1 = $signed(s4);
  assign y2 = {s0,+(((ctrl[3]?((ctrl[4]?6'sb000111:+(($signed(5'sb01001))|(s5))))>>>($signed((ctrl[4]?($unsigned(s4))+((ctrl[1]?1'b0:6'b111010)):u3))):($signed(((ctrl[7]?+(3'sb100):$signed(1'sb1)))>>>(s1)))&($signed((ctrl[4]?{+(u6),(3'sb000)==(2'sb01),(1'sb0)<<<(6'sb010010),$signed(s4)}:$unsigned((ctrl[5]?3'sb110:s0)))))))|((s2)&((((+($signed(s0)))^~(4'sb1011))^~(-((s0)<<<((u5)^(u5)))))<<((+(1'b1))^((((ctrl[5]?2'sb10:s0))^~(+(u6)))<<((ctrl[2]?3'sb110:(s5)+(s6)))))))),$signed((s7)>>(-(s5)))};
  assign y3 = -((($signed(s0))<<<(+(u0)))|(-(($unsigned(5'sb00000))<<<({s3}))));
  assign y4 = ($unsigned(2'sb10))|((+((ctrl[3]?+(4'sb0011):s3)))&(({+(s0)})<<<($unsigned($signed(u6)))));
  assign y5 = 1'sb1;
  assign y6 = ((ctrl[7]?((ctrl[7]?((ctrl[0]?s3:3'sb101))<<<((s1)==(5'sb01000)):((3'sb100)^(s0))>>(s1)))^~((-($signed(3'sb111)))>>>((s2)>>>((s3)>=(s7)))):$signed((ctrl[0]?(s3)+((1'sb0)<<(5'sb11111)):+(2'sb10)))))|($signed(s3));
  assign y7 = &(s7);
endmodule
