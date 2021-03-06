module wideexpr_00142(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[7]?(((s4)<((ctrl[7]?$signed(3'sb000):(s6)&(s4))))>>(2'sb00))^~(u4):1'sb1);
  assign y1 = 6'b000000;
  assign y2 = (ctrl[5]?(s3)<<((((1'sb0)>>((u5)>(3'sb001)))>>(s6))<<<(s4)):(ctrl[2]?((-((s0)>>>(u2)))<<<(2'sb11))+((ctrl[0]?s5:6'sb110001)):-(2'sb11)));
  assign y3 = 3'b010;
  assign y4 = (ctrl[5]?$unsigned(~({(ctrl[7]?+({1{((ctrl[0]?u4:5'sb00100))&((ctrl[6]?1'b0:3'b011))}}):$signed($unsigned((ctrl[3]?(ctrl[6]?2'sb10:s0):+(u7))))),4'sb1101,(ctrl[1]?(ctrl[6]?+(({1{5'sb11001}})|(4'b1110)):(ctrl[2]?s7:-($signed(5'b00001)))):5'sb11110)})):{{{1{{(s1)>>>(-((ctrl[3]?s7:$signed(s6)))),(ctrl[5]?~(+((ctrl[3]?1'sb1:s7))):{4{(2'sb11)>>>(~^(s6))}}),s3}}},(ctrl[7]?+((ctrl[2]?($signed((3'sb010)<(2'sb10)))|($signed((ctrl[7]?1'sb1:u0))):6'sb010000)):$signed((s1)<<(s1))),(ctrl[5]?$signed(+(6'sb101101)):s0),($signed(5'b00100))>>>($signed(4'sb1110))},s7,(({$unsigned(((ctrl[6]?(1'sb1)<<<(4'sb0001):(ctrl[2]?s6:s4)))^~($signed((4'sb0001)<<<(4'sb0100)))),(ctrl[1]?((3'sb011)^~((1'sb1)&(s4)))>>>((ctrl[2]?(3'sb101)>>>(5'b10011):(3'sb101)|(4'sb0110))):-(($signed(s5))==($signed(4'sb1001)))),u0})>>(+(-($signed(5'sb00111)))))^((ctrl[1]?{+({4{6'b000010}}),$signed(s0),~(-(s5)),(4'sb1010)^~(-(s1))}:(s5)>(-(4'sb1010)))),(-((s7)<({1{$signed(&((ctrl[4]?6'sb101000:1'sb0)))}})))&(2'sb10)});
  assign y5 = s4;
  assign y6 = (ctrl[2]?$signed(6'sb010110):(s4)-((ctrl[0]?s1:($signed((2'sb11)>>((ctrl[1]?$signed(u1):(ctrl[4]?s2:1'sb0)))))>>>((6'b110001)>>>(1'sb1)))));
  assign y7 = (ctrl[1]?({(ctrl[1]?(s2)<<<(s5):(3'sb001)^~(s4))})<=({{(s5)<<<(s4),$signed(4'sb1000)},6'sb101101,(ctrl[6]?5'sb01000:+(1'b1))}):1'b1);
endmodule
