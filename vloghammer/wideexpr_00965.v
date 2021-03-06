module wideexpr_00965(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (1'sb0)^~(((ctrl[5]?-((ctrl[2]?(s4)<<(s5):s2)):(ctrl[0]?$signed({4{s5}}):((3'sb011)<<(u4))|(-(4'sb1000)))))<<(4'sb0011));
  assign y1 = ~^((s6)>=(2'sb00));
  assign y2 = $signed({s4,{(~&(6'b100010))==(4'sb0111),s7,(ctrl[6]?s6:$signed(s7))},$signed((ctrl[2]?$signed(s1):(ctrl[4]?s7:6'sb001011))),((ctrl[3]?+(s3):-(s2)))^($unsigned({3{4'b0111}}))});
  assign y3 = (ctrl[1]?((ctrl[2]?$signed(+($signed(4'b0010))):(+((u2)&(6'sb111000)))>>>(((s1)|(3'sb101))^~((ctrl[5]?s7:s7)))))==((ctrl[6]?+((ctrl[2]?s3:4'sb0101)):2'sb10)):(({((3'sb001)<<(s0))|((ctrl[3]?s2:5'sb00100)),{3{(ctrl[0]?5'sb10011:s7)}},|(~|(s2))})>=(({1{-(s2)}})==($signed(|(4'sb1101)))))-({4{~|(((ctrl[2]?6'sb000010:s7))<<((s3)>=(u7)))}}));
  assign y4 = 3'sb001;
  assign y5 = -((s0)>>>((s5)^~(s3)));
  assign y6 = (({3{(1'b1)+(({({4{u6}})<=((3'sb010)&(u0)),s1})<<({(ctrl[2]?1'sb0:(s7)<<<(1'sb1)),-(6'sb110111),((ctrl[5]?5'sb11110:3'sb101))>>($signed(u2))}))}})<=({6'sb110101,s3,((ctrl[2]?(({2{2'sb01}})+((4'sb1000)>>(3'sb100)))^(^({5'sb11111,5'sb00000,2'sb01,1'sb0})):~&((ctrl[2]?{3{u5}}:~|(2'sb11)))))<<<((s7)-((ctrl[2]?(1'sb0)>>(~|(4'sb1000)):-(3'b000))))}))==((ctrl[1]?$unsigned(s0):5'sb01011));
  assign y7 = ~&(s3);
endmodule
