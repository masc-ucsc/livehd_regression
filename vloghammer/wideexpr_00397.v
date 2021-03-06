module wideexpr_00397(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s3;
  assign y1 = $unsigned((ctrl[5]?((s5)>>((ctrl[3]?s5:$signed(s1))))!=((1'sb0)&((-(6'b110001))<<<({s2,s1,s5,s5}))):{($signed({4'sb1010}))<<<((ctrl[7]?+(4'sb0111):(4'sb1111)|(s0))),(ctrl[1]?{1{{2{s1}}}}:s5)}));
  assign y2 = $unsigned((1'sb0)|((ctrl[3]?(($signed($signed(&(2'sb01))))>>>(((-(s4))-((s5)<<(s7)))|($signed((6'sb001010)>>(s3)))))>>>(((($signed(s5))>=(1'sb0))>>>(-((ctrl[6]?s7:6'sb100010))))|($signed((ctrl[2]?2'sb01:(ctrl[1]?s1:u1))))):((4'sb1001)>>(3'sb100))<<<({~(((u5)>>(6'sb001011))>=(u6)),4'sb1001,5'sb11100,(3'sb101)<(6'sb011010)}))));
  assign y3 = (5'b01010)+(({((ctrl[3]?s7:2'sb00))>>((2'sb10)^~(s3))})^~(3'b101));
  assign y4 = (&(((s6)>>>((ctrl[2]?s6:((s6)&(4'sb1110))^~((ctrl[0]?3'sb011:s6)))))<<(&((((5'sb01100)|(s5))<<<($signed(6'sb111011)))<<<(+($signed(s0)))))))^({(ctrl[3]?(ctrl[1]?s7:+(4'sb1110)):s1),s0,1'sb1});
  assign y5 = +(3'b100);
  assign y6 = +(s3);
  assign y7 = (3'sb010)&(($signed((ctrl[3]?6'sb001010:(((s2)<<<(3'sb001))<<((6'sb001000)>>(4'b1100)))<<<((|(s6))>>((6'sb010001)+(1'sb0))))))+($signed(+((ctrl[7]?2'b01:(ctrl[3]?1'b1:1'sb0))))));
endmodule
