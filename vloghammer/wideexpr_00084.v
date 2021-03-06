module wideexpr_00084(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 6'b100011;
  assign y1 = (s1)^~(+({4{u1}}));
  assign y2 = {(+((ctrl[2]?$signed(({5'sb01001,(ctrl[4]?(ctrl[4]?s4:s5):4'b0101)})>>((ctrl[5]?$signed($signed(s0)):~|((6'b100001)>>(s4))))):5'sb11000)))>=((ctrl[4]?(ctrl[2]?$signed(u5):-(s6)):-(($signed($unsigned(&($unsigned(5'sb10000)))))>>>({4{(ctrl[3]?-((s3)-(s0)):-($signed(3'sb101)))}}))))};
  assign y3 = $signed(s6);
  assign y4 = ((ctrl[2]?-((s2)==((3'b110)>>>(6'sb010010))):((ctrl[5]?(4'sb0101)>>>(s0):+(2'sb11)))^~($signed((s2)^(1'sb1)))))-((ctrl[4]?s0:-((ctrl[1]?(1'b1)>>(u0):(3'sb001)>>(4'sb0110)))));
  assign y5 = -((($signed((u4)>>(s7)))+(1'b1))^({3{6'sb000101}}));
  assign y6 = 6'sb000001;
  assign y7 = (((3'sb001)|(((ctrl[7]?(1'sb1)^(s0):$signed(s6)))>>>((&(s0))>=(2'b10))))!=($signed($signed(4'sb1110))))<<<(1'sb0);
endmodule
