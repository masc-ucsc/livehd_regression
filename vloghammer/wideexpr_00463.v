module wideexpr_00463(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u3;
  assign y1 = 5'sb10010;
  assign y2 = 1'sb1;
  assign y3 = $unsigned(($signed((ctrl[5]?1'sb1:{2{u0}})))<<<({+($signed(3'sb000))}));
  assign y4 = {{$signed($signed((ctrl[0]?(ctrl[7]?(ctrl[1]?1'sb1:1'sb0):(6'sb110010)<<(u3)):s0)))},{2{{((ctrl[3]?{4{|(5'b11101)}}:s2))^((ctrl[3]?($signed(s4))&((ctrl[7]?3'sb011:2'sb10)):$unsigned({4{s6}})))}}},{3{-(((s6)^~($signed((ctrl[7]?u1:5'sb00001))))&(4'sb1110))}},(u6)>>(((1'sb0)>>>(s3))>>>(($signed(~&(u2)))+(s0)))};
  assign y5 = ((({+({4{s5}}),(ctrl[7]?!(4'sb0001):&(($signed(u6))<<<(($signed(s6))+((s6)>>(4'b1101))))),-({s7,|(((ctrl[6]?s3:5'sb01110))<=(5'b01010)),(1'sb1)-((4'sb1001)>>({4'sb0101,u6,s3})),(ctrl[0]?((4'b1001)!=(s6))-({s5,u2,1'b1,s4}):$signed(~|(s6)))}),$signed($signed((s4)<<((ctrl[4]?(s7)^(4'sb0101):+(s6)))))})^(~(+(s0))))>>>((s0)>>(-((((+((s7)>>>(s0)))>>>((-(5'b11111))<<((ctrl[3]?s6:3'sb110))))^~(-((ctrl[3]?$signed(2'sb11):$signed(s4)))))|($signed((s3)<<(s4)))))))<<<({3{(ctrl[4]?3'sb101:$signed(({4'sb1000,{2{~^((4'b1100)+(u4))}}})^~((u5)>>(1'b0))))}});
  assign y6 = $unsigned(+(((ctrl[1]?(($signed(s4))^((2'sb01)^~(5'sb10001)))<<((3'sb101)>>((ctrl[0]?s4:s5))):(ctrl[6]?1'sb0:4'sb0111)))<<(s4)));
  assign y7 = (s0)<<($signed($signed(({2{s2}})>>((4'sb1000)>>>(1'sb1)))));
endmodule
