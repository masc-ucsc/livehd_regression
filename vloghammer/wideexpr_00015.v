module wideexpr_00015(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[7]?s5:(ctrl[4]?6'sb001010:((-(&((s2)-(3'sb111))))+((ctrl[3]?(ctrl[3]?$signed(u4):s3):+((s3)<<<(2'sb00)))))-(((s0)|($signed((5'sb10110)+(3'b011))))>>((($signed(4'sb0111))==((1'sb0)&(3'sb000)))&(((6'sb000101)<<(s4))>>>((3'sb001)^~(1'sb0))))))))|($signed((&($signed(3'sb011)))^($unsigned(!(-(($signed(6'b011100))<<($unsigned(5'sb00111))))))));
  assign y1 = (ctrl[5]?{+({s6,s6,(ctrl[5]?(s0)-(u2):(5'b01100)==(4'sb0010))})}:{s3,$signed(s4),(s5)<<({(ctrl[0]?$signed(1'sb0):$signed(s5)),2'sb11,((1'sb1)^~(s0))<((s3)&(s1)),((ctrl[2]?s4:s7))>>>((2'sb11)<<<(6'sb010110))}),((((s0)>>>(s1))&((3'sb000)+(3'sb100)))<<((-(u0))^~(s4)))-((((s7)<<<(1'sb1))^(+(5'sb11101)))|($signed((s7)>>(u3))))});
  assign y2 = u3;
  assign y3 = $signed($signed(s2));
  assign y4 = $unsigned({2{{1'sb0,s7,((u5)<=((6'b110000)<<(u5)))^(4'sb1100)}}});
  assign y5 = {1{((+(1'sb0))<<($signed(1'sb0)))!=(-($unsigned(1'sb1)))}};
  assign y6 = 5'sb11101;
  assign y7 = 3'sb101;
endmodule
