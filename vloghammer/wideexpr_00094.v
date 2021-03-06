module wideexpr_00094(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 5'sb10000;
  assign y1 = ((ctrl[0]?(-((6'sb011001)>=(6'b000010)))-((ctrl[2]?4'sb0010:(ctrl[4]?$signed(-(s1)):(6'sb010010)^(4'sb1000)))):(ctrl[1]?4'sb0010:(ctrl[4]?($signed(-(((1'sb1)==(3'sb101))<<((ctrl[4]?1'b1:u2)))))<<(u3):s2))))<<((s2)-(2'sb00));
  assign y2 = (ctrl[7]?(ctrl[0]?6'sb011011:-($signed((ctrl[0]?{(s5)+(((3'sb111)-(s4))+(5'sb00011)),($signed((s0)<(6'sb101011)))>=((ctrl[4]?$unsigned(u0):{4{s2}})),(s5)+(s5),u7}:(ctrl[4]?6'sb000110:s6))))):s1);
  assign y3 = -(+($unsigned((($signed($signed({(3'sb100)^(4'sb0100)})))&(s5))>>($signed(+(~&((ctrl[0]?(ctrl[1]?5'sb00010:6'sb010100):$unsigned(5'sb11110)))))))));
  assign y4 = $signed(($signed(($signed((($unsigned((2'sb11)^(s4)))|(((ctrl[3]?u4:u2))>>>((u0)<<(2'b10))))|($unsigned((ctrl[6]?(4'sb1011)>>(2'sb11):2'b00)))))^~(1'sb1)))>($signed((({(ctrl[7]?{(3'b101)^(s3),$signed(1'sb1),$signed(u5)}:({5'b10101,u3,s0,5'sb10100})^({1{5'sb10010}})),s2,($signed((s2)-(3'sb010)))>>>($unsigned(+(u4)))})<<<({1{((ctrl[5]?$signed(1'b0):$signed(s5)))>>>(~|(+(u4)))}}))<(({4{(((s1)<<(s4))&((s0)^(2'sb00)))>>>(($signed(s1))^~(s1))}})-((ctrl[5]?6'b111010:{s5,(ctrl[7]?$signed(1'b0):+(s0)),s2,$signed((4'sb1101)<<<(3'sb011))}))))));
  assign y5 = ((ctrl[3]?((ctrl[0]?{2{$signed(1'sb1)}}:((5'b11000)|(1'b1))<<(-((-(-(s3)))>>>(((ctrl[6]?s0:6'sb100111))+(5'sb01111))))))-(s2):6'b100111))^(((ctrl[4]?(5'sb11011)<<<(1'sb1):(s4)>(s0)))|({1{{3{5'sb00010}}}}));
  assign y6 = (-(-((ctrl[0]?{2{s0}}:(5'b10010)==(s3)))))|(s7);
  assign y7 = ((s6)&((+(5'sb11001))<<(+(-(s2)))))<<<(4'sb1011);
endmodule
