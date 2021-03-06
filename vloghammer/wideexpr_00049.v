module wideexpr_00049(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = +(($signed((5'sb10001)<<<(-(s7))))&(5'sb00000));
  assign y1 = (ctrl[0]?2'sb01:((ctrl[7]?(($signed(s0))&($signed(+(u6))))<<(({(6'sb011110)^(s0),(s3)&(1'sb1),-(u2)})<<(s7)):($signed($signed($signed(1'b1))))^(s1)))|(s7));
  assign y2 = (ctrl[0]?(s2)>>>(5'sb11101):((((s0)&($signed(s6)))-(s6))|(+(+((2'sb00)-(u4)))))>>>($signed(((ctrl[2]?{3{s6}}:(2'sb01)<=(5'sb11111)))<<(((s5)&(5'sb11110))>=(-(s6))))));
  assign y3 = s6;
  assign y4 = (u6)<=((ctrl[7]?$signed((3'sb110)<<<({(ctrl[7]?(+(u2))>>>((6'sb010111)-(3'sb111)):$signed((s0)^(1'sb0))),(((ctrl[7]?6'sb000111:4'sb0011))>>((4'sb1100)|(s2)))|($signed({4{s2}})),(ctrl[4]?$signed((s5)&(s1)):$signed(s4))})):u3));
  assign y5 = ((ctrl[5]?(s7)>>>($signed($unsigned(2'sb11))):u0))^((({2'sb01,(ctrl[0]?~^(($signed(2'sb01))^~((s3)<<<(2'sb10))):({u6})>>(5'sb00010)),((6'sb010000)<<(+((ctrl[3]?3'sb001:s1))))>>((ctrl[0]?+(6'sb001001):+((s1)>>(4'sb1010)))),((ctrl[0]?((s0)|(1'sb1))|((2'sb01)>>>(4'b0111)):(s6)|($signed(s1))))^(-((ctrl[4]?$unsigned(6'sb111011):(ctrl[2]?2'b00:s3))))})==((ctrl[4]?$unsigned((+((6'b010100)>>>(1'sb1)))<<(-((s1)==(s3)))):{1{6'sb010100}})))-({(ctrl[0]?s1:(ctrl[0]?4'sb1001:(+(1'sb0))>>>(($signed(s2))|($signed(s3)))))}));
  assign y6 = {2{(ctrl[5]?2'sb01:s0)}};
  assign y7 = (-((($signed((ctrl[6]?6'b101100:s6)))-(((s2)>>(4'b1110))&((6'sb111011)^(4'sb0010))))<<<({$signed(+(s0)),{u5},(s7)-((s3)+(s3))})))!=((-((s2)^~(6'sb110011)))&((ctrl[4]?(ctrl[0]?+((u0)>>(4'sb0011)):+(u5)):$signed($unsigned($signed(s3))))));
endmodule
