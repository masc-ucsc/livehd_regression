module wideexpr_00017(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed($signed((ctrl[3]?(ctrl[7]?{(($signed(4'sb0100))^~($signed(s1)))>>>(((ctrl[1]?5'b01011:5'sb01001))!=((6'sb001111)>(s0))),(5'b10111)>>({-(6'sb000001)})}:$unsigned(-(-($signed(s6))))):4'sb1110)));
  assign y1 = (((5'sb00011)&((ctrl[0]?(s6)<<((ctrl[1]?1'sb0:6'sb110100)):(3'sb010)<<<({u1}))))|($signed(6'sb111000)))<<<({4{(4'sb0100)<=(({1{-(6'sb110101)}})<<<(+(~&(1'sb0))))}});
  assign y2 = {&(3'sb011),(4'sb0000)^~(2'b10),((ctrl[4]?+({(3'sb101)<<(s1)}):s7))>>>((ctrl[7]?(ctrl[6]?s2:(ctrl[7]?$signed(u3):(ctrl[2]?6'sb101111:s6))):2'sb10))};
  assign y3 = ((ctrl[3]?$signed($signed((3'sb111)>>((3'sb010)<<(3'sb000)))):$signed(+($signed((ctrl[5]?2'b00:u6))))))>=((-((s4)<<<(($signed(s3))>=((s4)&(3'sb001)))))<<<(4'sb1101));
  assign y4 = (ctrl[7]?$unsigned({2{((ctrl[1]?3'sb000:s7))>($signed(s2))}}):4'b1100);
  assign y5 = !((ctrl[1]?((ctrl[0]?(5'sb10001)+((((2'sb00)<<<(1'sb0))>>(~&(u1)))^(+(1'sb0))):$signed($signed(u1))))!=(s0):((({(ctrl[4]?{3{4'sb0110}}:{1{s6}})})<=({(s3)|(+(4'sb1010)),s7,s5,$signed($signed(2'sb01))}))-(((ctrl[0]?^(2'sb11):s1))>((u3)<<<(((ctrl[6]?s0:5'b11011))-(s3)))))<(u3)));
  assign y6 = s3;
  assign y7 = +(3'sb011);
endmodule
