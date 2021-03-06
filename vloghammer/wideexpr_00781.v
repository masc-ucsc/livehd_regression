module wideexpr_00781(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s1;
  assign y1 = (-(s7))>>((6'b001011)<<((s6)-(s6)));
  assign y2 = (ctrl[5]?(s6)<<<({((3'sb000)|($signed(s1)))-(4'sb0001)}):(3'sb000)<<({2{$signed(($signed($signed(+(s1))))&($signed((6'sb100111)^(s4))))}}));
  assign y3 = 2'b01;
  assign y4 = ((ctrl[6]?(ctrl[4]?2'sb00:(($signed((((s5)>>(6'sb001111))>>((ctrl[4]?u1:s0)))+((+(6'sb010010))-(+(4'sb0001)))))<<<($signed((+((u2)<<<(5'sb00100)))<<(-(s3)))))>>>($signed(({($unsigned(s5))>>($unsigned(s6)),(1'sb1)>>>((ctrl[0]?3'sb101:5'sb00001))})-($unsigned(s5))))):s5))>>>(($signed(u6))>((ctrl[3]?($signed(((ctrl[5]?($signed(4'b1111))^~((5'sb01110)>>(s2)):((ctrl[7]?2'sb00:1'sb0))^~((s0)<<<(u5))))+(s4)))<<(s6):$signed(1'sb0))));
  assign y5 = !($signed(5'b00011));
  assign y6 = $signed((($signed(((ctrl[2]?u2:({4{5'sb01010}})>>>((6'sb100010)|(3'sb001))))&(&((ctrl[6]?$signed(u1):(6'sb010001)^(5'sb00111))))))<<<((($signed($signed({2{6'sb001100}})))|(($signed(s4))^((ctrl[4]?(ctrl[3]?s0:5'sb10110):(s7)|(5'sb11011)))))<<<(s6)))<<<(({3{($signed((s4)^(-(5'b01011))))<<<((ctrl[4]?^($signed(4'sb1010)):{(s0)^~(s2),(5'sb00010)^(u5),{u4},(ctrl[7]?2'sb01:1'sb0)}))}})>>((~&({((ctrl[6]?s2:s0))>>>($signed(6'b010001)),6'sb001011}))<=(({3{3'sb100}})>>({4{((s3)&(5'sb11110))>>(1'sb1)}})))));
  assign y7 = $signed({({4{-($signed(($unsigned(3'sb000))&({u3,s0})))}})>>(($unsigned(s4))^~(u3)),(ctrl[4]?6'sb011000:(6'sb111110)>>((s5)>>>((ctrl[7]?s6:(s4)<<(+(2'sb10)))))),$signed((ctrl[4]?((ctrl[3]?($signed(2'b11))>((5'sb00010)+(4'sb1001)):6'sb101110))<((s1)>=((s5)+(+(s5)))):2'sb11))});
endmodule
