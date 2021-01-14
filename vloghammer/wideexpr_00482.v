module wideexpr_00482(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[6]?(s6)>>(-(2'sb11)):((-(s3))^($signed((1'sb0)!=(-({s5,3'sb001})))))^(5'sb11001)))<<<(s3);
  assign y1 = 2'b01;
  assign y2 = u2;
  assign y3 = ($signed(1'sb0))+((ctrl[7]?-(-((~&(+(4'sb1001)))<<<(($signed(s5))^(+($signed((6'sb011100)>=(5'sb10011))))))):$signed(((-((ctrl[0]?2'sb00:(ctrl[2]?(s1)<<(1'b0):(ctrl[6]?1'sb1:1'sb1)))))<<(u7))<<(u0))));
  assign y4 = (6'sb110001)>>>((s3)-(3'sb111));
  assign y5 = (ctrl[7]?-(((ctrl[5]?(s0)+(3'sb101):-(3'b110)))>>({3{|(s7)}})):(ctrl[6]?1'sb0:($signed((ctrl[0]?u4:3'b001)))>>>(+(1'sb1))));
  assign y6 = ($signed(({3{s1}})<<<($signed((ctrl[4]?{s4,s1}:{1{u3}})))))+((s6)|(((ctrl[7]?(ctrl[6]?(s5)<<(2'sb01):+(s1)):2'sb11))<<(6'sb011000)));
  assign y7 = $signed((+($signed(s3)))>>((((ctrl[5]?s5:6'sb000000))+($signed(-(s7))))|(+(s0))));
endmodule
