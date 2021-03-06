module wideexpr_00496(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 1'sb0;
  assign y1 = ($unsigned(2'sb10))-({1{4'sb0101}});
  assign y2 = (ctrl[7]?{4'sb0000}:(+(1'sb1))<(+((ctrl[7]?(s0)>=((ctrl[3]?s5:s0)):(ctrl[2]?{u4,s5,4'sb0011,3'sb101}:(s0)&(s3))))));
  assign y3 = s0;
  assign y4 = {2{({4{6'sb100110}})-(((({$signed(6'sb011100),(ctrl[1]?$signed({6'b101100,2'sb11,2'sb10}):s6)})|({((+(s1))<=((s2)>>>(s2)))|((ctrl[7]?{2'sb10,2'sb11,2'sb01}:{5'sb10011,s5}))}))<<((ctrl[6]?u3:{{-((s1)>(1'b1)),2'b10,((5'sb11100)^(2'sb10))>>>((ctrl[7]?s4:2'sb00)),((6'sb100101)<<(5'b10000))<<<((4'sb1100)|(2'sb00))}})))<({$signed((s3)<<(({^(s4),+(2'sb00),$signed(1'sb0)})^~(~($signed(5'sb11001)))))}))}};
  assign y5 = (-((ctrl[4]?$signed((-({4{{3{5'b10111}}}}))>>>(4'b0111)):(ctrl[4]?((ctrl[2]?+(s0):$signed((2'sb00)<<(s4))))>>>(s7):s0))))!=(-({1{(ctrl[5]?6'sb011001:$signed({4{+(6'sb001101)}}))}}));
  assign y6 = 1'sb1;
  assign y7 = u1;
endmodule
