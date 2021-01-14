module wideexpr_00858(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s4;
  assign y1 = s0;
  assign y2 = +(+(((ctrl[2]?4'sb1110:s3))^~((s5)&(-(s6)))));
  assign y3 = (-((ctrl[6]?((3'sb101)+(+((ctrl[5]?5'sb00111:(5'sb01010)^~(-(s1))))))^~(s6):s6)))|(-({s3,(((ctrl[1]?5'sb10110:($signed((u6)&(s5)))>>((1'sb1)|((ctrl[0]?s4:4'sb0000)))))|(+((1'sb1)^~(3'sb111))))>>>((+((((s1)<<(5'sb11001))<<<($signed(u7)))<<({1{u3}})))>=($signed((2'b11)&({4'sb0000,(ctrl[6]?s5:3'sb010),3'sb001,$signed(1'sb0)}))))}));
  assign y4 = (ctrl[7]?4'sb1011:(-((ctrl[7]?(3'sb110)>>>(s7):6'sb101000)))>>>(s7));
  assign y5 = &((ctrl[3]?(ctrl[2]?+({-(2'b00)}):-((2'sb10)>>>($signed(2'sb00)))):6'sb001111));
  assign y6 = (ctrl[6]?(3'sb110)+(s5):$signed((ctrl[4]?$signed(5'sb00100):-((ctrl[0]?(((6'sb100010)==(s0))-({1'b1,s7,s0,3'sb110}))>>>($signed((3'b001)|(u4))):^((ctrl[1]?(1'sb0)<<(1'sb0):^(s6))))))));
  assign y7 = 2'sb00;
endmodule
