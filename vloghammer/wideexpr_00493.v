module wideexpr_00493(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ($unsigned(s4))>>>($unsigned(+(&((((5'b01011)<<<(6'sb111000))<<(6'sb101010))-(({1'sb1,1'b0,s5})^({2{u2}}))))));
  assign y1 = {1{((5'sb11001)!=(((+(s5))<<<(2'sb01))>>(s4)))^({3{(((s1)<<<(1'sb1))^~((s0)<<(s3)))>>>(((s3)!=(s3))>=({4{s2}}))}})}};
  assign y2 = $unsigned((ctrl[7]?s0:((ctrl[5]?6'sb000011:(-($signed(2'sb00)))^($signed((ctrl[6]?u6:4'b1111)))))-(-((ctrl[5]?{3'sb101,(1'sb0)<<<(u7),(s4)==(2'sb11),$signed(s7)}:+((ctrl[3]?5'sb11000:u4)))))));
  assign y3 = (({2{+((ctrl[5]?$signed({2{(s4)>=(4'sb1111)}}):s4))}})-({(s0)<<<((!($signed(5'sb10110)))<<<({2{^((s4)>>(s5))}})),(ctrl[2]?-(4'sb1111):(($signed({4'b0000,u4,s0,s1}))&(((5'sb00000)^~(4'sb0011))>>>(s4)))^(+(s3))),(-(((ctrl[5]?s3:+(s7)))<<<((ctrl[5]?(3'sb110)<<<(1'b1):s6))))>>(($unsigned(($signed(s4))|(s2)))>($signed(((ctrl[6]?2'sb11:1'sb1))>(s6)))),($signed((2'sb01)|(s3)))|($signed({!($unsigned(s2)),(~(u1))-((s7)>>(3'sb011))}))}))-({2{(s3)&(-(~^($signed(((ctrl[5]?2'sb00:4'sb1101))^~((1'b0)^(5'sb01101))))))}});
  assign y4 = s6;
  assign y5 = (6'sb001100)>>>(((s0)>>>(+(+(s5))))|(4'sb1110));
  assign y6 = 1'sb1;
  assign y7 = ({2{(-(((6'sb101101)^~(1'b1))<<<(s2)))>>((($signed(s4))-((ctrl[3]?3'sb100:s6)))>>((5'sb11111)<=(2'sb11)))}})>=((ctrl[1]?$signed(4'sb1100):{1{{1{(ctrl[4]?(2'sb01)<<<(4'sb1010):(ctrl[3]?4'sb0110:s1))}}}}));
endmodule
