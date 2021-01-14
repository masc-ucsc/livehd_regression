module wideexpr_00181(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[4]?((((1'sb1)&((ctrl[3]?(ctrl[6]?s3:s1):-(3'b100))))>>(+(((s3)<<(5'b00111))>>>(+(1'sb0)))))|(s2))^(2'sb11):(3'sb110)>>>((ctrl[1]?(ctrl[3]?+({3'sb011,(u4)<<<(s6),(1'sb1)>>(s6)}):($signed(~(s3)))^((ctrl[3]?(ctrl[7]?3'sb000:s0):s6))):s3)));
  assign y1 = ($signed(($signed((({(ctrl[0]?3'sb010:s5),-(5'b11100)})^~((s0)<=((1'sb1)^(s4))))>>(u6)))<<<((ctrl[2]?{2{(3'sb010)>>(1'sb1)}}:~&($signed(-(u2)))))))+(s7);
  assign y2 = -((s3)==((ctrl[0]?((ctrl[5]?+($signed((^(5'sb00010))<=((s7)&(6'sb001111)))):(ctrl[0]?s2:-(6'sb000001))))^(s2):$signed({4{(($signed((u5)>(s1)))<<<(+(4'sb0100)))>>(s1)}}))));
  assign y3 = (s7)^~($signed({5'b01100,$signed(((ctrl[3]?$signed(s0):(4'sb1110)&(s0)))>($signed((ctrl[2]?4'sb1100:5'sb10100)))),u0,-($signed({+(6'b000110)}))}));
  assign y4 = $signed({3{((((ctrl[6]?s4:3'sb111))<<<(s3))<<<((+(6'sb011000))^~(s4)))<<<(4'b1111)}});
  assign y5 = $signed((({((s3)>>(4'sb0111))+(5'sb11111),(+(6'sb000011))&((3'sb010)|(3'sb110)),{s4},5'sb11000})!=((ctrl[6]?((s3)>=(6'sb111101))<<<({2'b11}):(u3)>>>($signed(5'sb10110)))))+({2{$signed(~(~(1'sb0)))}}));
  assign y6 = (ctrl[6]?s4:s5);
  assign y7 = {u6,$signed({4{s0}}),(5'sb01110)>(1'b0),(($signed({{$signed(6'sb101001),$unsigned(-(1'sb1)),(3'sb010)==((s5)>>(5'sb01101))}}))<<(s7))^((3'sb101)>>>((ctrl[2]?(ctrl[5]?5'b11111:(4'sb1101)<<<(((1'sb0)<<<(s3))-(+(5'sb00111)))):{2{(((s5)^~(s6))<<((s1)<<(6'sb101011)))+(5'b00000)}})))};
endmodule
