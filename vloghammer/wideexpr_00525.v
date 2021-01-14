module wideexpr_00525(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[5]?+(~&(s1)):1'sb1))+(+($signed(((3'sb111)<<(1'sb1))>>(!(s4)))));
  assign y1 = ($signed(s0))<<<((ctrl[6]?s0:(ctrl[1]?s1:(5'sb10011)^($signed($signed((ctrl[0]?u2:1'sb0)))))));
  assign y2 = $signed(+(u7));
  assign y3 = u6;
  assign y4 = +((ctrl[1]?($unsigned({s0,((s3)-(1'sb1))<=($signed(s6))}))-(2'sb10):(ctrl[3]?((ctrl[4]?{2'sb10,s0}:(3'b101)<<(3'b001)))|({(ctrl[7]?!(s0):{1{s4}}),s2,{1{(4'sb1100)|(5'sb00100)}},(ctrl[6]?(2'sb10)<(s1):1'sb0)}):3'sb011)));
  assign y5 = ~&($signed(s7));
  assign y6 = (ctrl[3]?($signed(((1'sb0)+(2'sb11))<<(&(3'sb111))))-(s5):$signed((ctrl[3]?(s3)-(-(4'sb1101)):+((ctrl[7]?((s5)<<(s6))^(3'sb100):($signed(s7))>>>({1{s0}}))))));
  assign y7 = ({1{(ctrl[7]?$signed((ctrl[0]?(s1)>>>(~|(4'sb0010)):{(((ctrl[4]?s5:1'sb1))&($signed(1'sb0)))<<(($signed(2'sb01))^(4'sb1101))})):~|($signed({3{+(((s0)>>>(1'sb0))^(s0))}})))}})-({2{2'sb11}});
endmodule
