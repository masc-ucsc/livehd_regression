module wideexpr_00897(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {((s1)==($signed((ctrl[6]?1'sb0:s6))))<=((($signed(4'b1000))>>>((2'sb10)<<(3'b110)))+((4'sb1111)^((ctrl[4]?s4:s2)))),1'b0,(ctrl[1]?+((ctrl[5]?+(1'sb0):6'sb101011)):$signed({2{-(s2)}}))};
  assign y1 = ($signed(4'sb0011))-($signed({2{2'sb10}}));
  assign y2 = {(6'sb100011)|((ctrl[7]?4'sb1100:3'sb010)),(6'sb010010)^(+(((s7)|(2'sb11))|(6'sb000011)))};
  assign y3 = 3'sb010;
  assign y4 = (ctrl[3]?u0:(ctrl[3]?(ctrl[2]?(s1)>(s2):(ctrl[3]?($signed($signed(!(s2))))>(s5):u3)):(((ctrl[0]?(($unsigned(1'sb1))>>>(1'sb1))|(6'sb000011):{(-(4'sb1110))==(s1),~|(s6),6'b111010,(ctrl[2]?(5'sb00001)<<(1'sb0):(3'sb010)-(s1))}))<<(4'sb0001))>>((+($signed(s7)))-(+(((ctrl[5]?(ctrl[2]?s7:3'sb111):(ctrl[7]?s7:u5)))|(|((s7)^~(4'b1000))))))));
  assign y5 = 5'sb11001;
  assign y6 = (ctrl[7]?(ctrl[0]?$signed(({1'sb1,~(s0)})|(((ctrl[3]?s2:6'sb100101))+(u2))):4'sb1001):$signed(2'sb11));
  assign y7 = 5'sb10110;
endmodule
