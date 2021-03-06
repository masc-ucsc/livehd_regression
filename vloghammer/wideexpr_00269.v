module wideexpr_00269(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = &((ctrl[0]?((s1)^(5'sb00010))<<((ctrl[0]?((ctrl[6]?s0:$signed(s7)))>>({2{~(s6)}}):s6)):(((ctrl[2]?(4'sb0111)&(+(s0)):(ctrl[6]?(ctrl[6]?(s0)<<<(s0):-(s2)):6'sb111110)))<<(($unsigned(((ctrl[5]?s1:s4))>>({1{s4}})))>>>((ctrl[1]?(+(u0))+($signed(s0)):(s0)<<<((5'sb01101)-(s0))))))^~(2'sb01)));
  assign y1 = (ctrl[1]?((s6)>>(2'sb00))==((-(4'sb0011))>>(4'sb0000)):(ctrl[7]?{1{-((ctrl[7]?~&(+($signed({2{s2}}))):(ctrl[7]?+(s5):{1{+(2'sb01)}})))}}:{4{s1}}));
  assign y2 = s4;
  assign y3 = {s1,{3{(({3{$signed((2'sb01)^~(s6))}})+($unsigned($signed(s3))))&((ctrl[7]?{4{$signed(1'b0)}}:({$signed(u3),6'sb011010,2'sb10,(ctrl[5]?u5:5'sb11100)})+(~&({1{s0}}))))}}};
  assign y4 = 5'b00101;
  assign y5 = (+((s2)<<<(+($signed(5'sb00000)))))&($unsigned({2{{4{($signed((2'b10)^(5'sb00100)))&(($signed(s7))-((ctrl[3]?3'sb010:s3)))}}}}));
  assign y6 = ((s1)<=(($signed(s1))<<<({$signed((ctrl[6]?{1{$signed(s0)}}:1'b0)),3'sb001})))<<((($signed((ctrl[1]?(ctrl[6]?u7:$unsigned((ctrl[1]?-(s2):(ctrl[5]?s6:2'sb10)))):1'b1)))^(1'sb1))>>(~^((({(ctrl[0]?($unsigned(s2))-(s2):-(2'sb00)),(ctrl[4]?(ctrl[3]?(5'sb11010)>>>(6'sb000011):(ctrl[5]?2'sb11:s4)):s2)})!=({((ctrl[4]?s3:(ctrl[1]?4'sb0101:3'sb100)))-((3'sb001)^~((s2)>>>(1'b0)))}))&({$signed($signed(s0))}))));
  assign y7 = s0;
endmodule
