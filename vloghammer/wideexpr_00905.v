module wideexpr_00905(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((u2)&((($signed(3'sb011))==(+(6'sb110100)))<<<(({s1,6'sb001000,u0,s0})<<<(~&(s3)))))+(u4);
  assign y1 = ~&((ctrl[3]?{((2'sb00)>>>($unsigned(&(6'sb011110))))-(-(-(u2))),{s5,$signed(s7),(ctrl[4]?-(|(s5)):((1'sb1)>>>(s1))>>($signed(s1)))},(ctrl[3]?(s0)>=((s4)==(s7)):|((ctrl[4]?s6:(s5)^~(u5))))}:(ctrl[3]?~(s5):((6'sb011010)<(-({4{s1}})))^~(~($unsigned(s5))))));
  assign y2 = $signed((ctrl[0]?$unsigned((ctrl[1]?((ctrl[0]?((4'sb1110)>>>(5'sb00101))>>>(s6):$signed((3'sb000)<=(5'sb01001))))<<<(($signed((4'sb0111)>>(u2)))!=((3'sb000)<<<($signed(u6)))):(ctrl[4]?2'sb00:$signed(+((s4)<<<(2'b00)))))):{$unsigned(s0),u2,s2,((s7)&({1'b0}))>>(s2)}));
  assign y3 = 6'sb111111;
  assign y4 = 5'sb11100;
  assign y5 = (s6)+(2'sb11);
  assign y6 = 2'sb01;
  assign y7 = (ctrl[1]?{($unsigned({2{$signed(4'sb1000)}}))>>>((3'sb010)^((ctrl[7]?6'sb100010:-((3'b110)==(5'b10001))))),s6}:((ctrl[5]?(ctrl[1]?u3:($unsigned((u6)>>>(6'sb011101)))==(u5)):{3{(ctrl[6]?$signed((4'sb0000)>=(s2)):-(6'sb000110))}}))>>>((ctrl[2]?+({2{{3{2'sb01}}}}):+((ctrl[5]?$signed($signed(3'sb100)):(s2)|(s7))))));
endmodule
