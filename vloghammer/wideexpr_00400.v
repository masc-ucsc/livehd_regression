module wideexpr_00400(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[1]?(ctrl[0]?1'sb1:1'sb1):s2);
  assign y1 = (ctrl[0]?((ctrl[5]?((ctrl[4]?(4'sb0110)>>(s0):$signed(s0)))<<<($signed((s6)^(3'sb000))):s3))|((ctrl[3]?+(u6):(5'sb00100)<<<($signed(s7)))):(+((s4)+(s4)))<<($signed(4'sb0001)));
  assign y2 = $signed((ctrl[2]?(((s2)<<(((s6)<<<(s4))>>((s7)<<<(s7))))&(2'sb00))<<<(((&((2'sb01)&(u5)))==(((s5)>>(5'sb10000))<<<((1'sb1)>>>(2'sb01))))<<((ctrl[5]?2'sb01:s2))):s1));
  assign y3 = s7;
  assign y4 = $signed((ctrl[4]?(((s1)>>((ctrl[4]?s7:(2'sb11)<<(s7))))>>(u4))>((ctrl[5]?1'sb1:($signed((s5)^(s7)))|($signed((5'sb01111)|(6'sb101001))))):(ctrl[1]?{1'sb1}:$signed((3'sb011)<(+((ctrl[1]?s4:6'b011001)))))));
  assign y5 = $signed((ctrl[0]?({-(s7),$signed($signed((ctrl[3]?1'sb0:4'sb0111))),u2})<<({{(1'sb0)>>($signed((6'sb011101)|(1'sb1)))},s6,(ctrl[4]?u3:2'b10),~(({4{(ctrl[6]?4'sb0110:s7)}})>>(s2))}):s5));
  assign y6 = s3;
  assign y7 = {4{{$signed((ctrl[4]?(ctrl[3]?6'sb111100:s1):((($signed(u0))^~($signed(4'b0000)))-(($signed(s3))>>({1{s7}})))+((((ctrl[0]?1'sb1:1'sb1))>>>(3'sb001))^(4'sb1011)))),(($signed(+(s0)))>>>((+(($unsigned(s5))>>({1{s5}})))-(($signed({s4,3'sb110}))<<<((ctrl[1]?(ctrl[6]?6'sb011110:s5):(s7)-(6'sb010111))))))<(-($unsigned((+($unsigned(2'sb11)))+(-(&(s4)))))),s7}}};
endmodule
