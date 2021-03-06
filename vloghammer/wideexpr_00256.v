module wideexpr_00256(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[4]?{{4{(-(!((!(s5))|({s1,s5,u2,3'sb111}))))>((ctrl[1]?s2:(ctrl[4]?6'sb110000:$signed((ctrl[3]?1'b0:u2)))))}},6'sb001100,$signed((^((ctrl[1]?s7:((ctrl[6]?s7:1'sb0))>>>((2'sb00)+(s2)))))^~({$unsigned((ctrl[2]?3'b001:(1'sb1)<<<(5'sb01111)))})),(ctrl[0]?-($signed((($unsigned(u4))==((ctrl[7]?2'b00:s0)))+($signed(u7)))):(s6)<<(~^((s1)>>>((2'b11)>((s6)^~(s3))))))}:1'b1))<<<(s6);
  assign y1 = u1;
  assign y2 = s5;
  assign y3 = s1;
  assign y4 = +(u2);
  assign y5 = ((ctrl[1]?s4:4'sb0001))>((ctrl[2]?(($signed(u6))-(+(5'sb10110)))>>((+((5'sb00100)|(5'sb10111)))>>((ctrl[1]?(s0)<=(3'sb100):s3))):$signed((4'sb0011)<<((ctrl[7]?(ctrl[7]?2'sb11:5'sb11100):(u7)>>(2'sb00))))));
  assign y6 = s1;
  assign y7 = $signed((({4{{4{(ctrl[0]?5'sb01110:6'b011000)}}}})&((ctrl[2]?u1:{2{+(2'sb01)}})))>>>(((ctrl[7]?(5'sb11101)^(+(s5)):s5))+((2'sb10)>>(($signed(1'sb1))==(s5)))));
endmodule
