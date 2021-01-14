module wideexpr_00292(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (s1)<<<(((ctrl[4]?-({{3{1'sb1}},-(s7),(ctrl[0]?(ctrl[0]?6'sb111111:$signed(3'sb111)):((ctrl[7]?5'sb11100:4'sb1010))-((s5)<<(s4)))}):(ctrl[6]?2'sb00:-((ctrl[4]?(s0)>>>($unsigned(2'sb00)):{2'sb00,{2{s1}}})))))>>>(+(s3)));
  assign y1 = ({2{(ctrl[7]?!({3{-(s7)}}):($signed(s0))!=((2'sb00)<<((s5)>>>({1{4'b1100}}))))}})>>((+(~((5'sb01110)|(s1))))+($signed(((1'b1)<<<({1{^(s2)}}))-((+(+((5'sb00000)<<<(3'b100))))!=(+(+((4'sb0011)+(2'sb10))))))));
  assign y2 = (ctrl[7]?$signed(s2):3'sb010);
  assign y3 = ((((s7)<<<(u0))<<<((ctrl[1]?u6:3'sb100)))>>>(s4))>>>(+((s0)>(((ctrl[2]?4'sb0100:6'sb110001))>>>($signed($signed(1'b1))))));
  assign y4 = -((s6)<=(6'sb010110));
  assign y5 = (ctrl[6]?(ctrl[0]?({(ctrl[1]?-({(+(u6))-((5'sb11010)<<<(s6))}):3'sb010),(((ctrl[0]?u1:(ctrl[4]?s5:(ctrl[3]?u1:4'b0011))))>>>(~&(^({1{5'sb01001}}))))-((ctrl[5]?u7:!({(ctrl[1]?s5:s5),3'sb001,$signed(5'sb11101)})))})^~({1{(ctrl[7]?((ctrl[7]?(ctrl[6]?$signed(6'sb011101):3'sb010):(+(u5))&(+(s4))))+(((ctrl[3]?$signed(s1):(ctrl[0]?s3:6'sb111100)))>>>(-((ctrl[7]?s7:s6)))):(ctrl[3]?$signed(u0):($signed(6'b001011))^($signed((ctrl[2]?5'sb00100:u4)))))}}):s3):($signed(s4))<($signed(3'sb101)));
  assign y6 = ($signed(-(5'b00000)))<<<(($unsigned((ctrl[5]?6'sb100110:(6'sb101011)<<<((-(3'sb111))^~((s3)&(2'sb01))))))<<<((+(|(+($signed(2'sb10)))))^((((ctrl[6]?6'sb111100:(ctrl[2]?4'sb1011:3'sb110)))|(3'sb111))^~($signed(|({3{2'b11}}))))));
  assign y7 = 5'sb01101;
endmodule
