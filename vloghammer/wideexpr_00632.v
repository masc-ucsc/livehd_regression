module wideexpr_00632(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[7]?$unsigned((+((5'sb11101)<<<(u7)))|(s0)):((((s3)^~(4'sb1011))==(+(5'sb11001)))>=((ctrl[3]?{2{3'sb011}}:(2'sb00)-(u7))))^((((1'sb0)<=(2'b10))>>>((ctrl[1]?5'b00000:3'sb011)))>>((4'sb1111)^(s5)))))|(~((4'b1011)<((2'sb01)==({6'sb101001}))));
  assign y1 = $signed($unsigned(+(-(s1))));
  assign y2 = ~|((ctrl[0]?((ctrl[4]?u4:!({3{3'sb011}})))<<<($signed(4'sb1001)):(~^(+($unsigned(3'sb010))))^(($signed((3'sb110)-(s2)))+(&((3'sb111)|(1'sb1))))));
  assign y3 = (((ctrl[0]?({1{{1{s3}}}})<=($signed((ctrl[2]?(s7)+((s1)-(-(1'b0))):5'sb10010))):$signed(1'sb1)))<<((ctrl[0]?u3:(ctrl[3]?{4{(ctrl[1]?+({(ctrl[5]?s4:s1)}):((ctrl[2]?s6:(s5)<<(s4)))+($signed((2'sb00)<<<(1'sb0))))}}:6'sb001011))))|(s7);
  assign y4 = {(ctrl[3]?(ctrl[1]?+(((((5'sb10111)+((ctrl[6]?4'sb1011:s3)))-(+(u0)))|($signed((-(5'sb10111))>>>((6'b111000)==(u7)))))-(((ctrl[5]?s5:(2'sb00)>>((s1)&(6'b101000))))^~(s2))):$signed(6'sb011101)):4'sb0011),s0,$signed({3{s0}})};
  assign y5 = s0;
  assign y6 = {(ctrl[4]?($unsigned(((ctrl[1]?(u5)>>(3'sb100):(2'b11)<<<(s1)))+((ctrl[7]?1'b1:{s1,s5,1'sb0}))))<<((ctrl[3]?{4{4'sb1110}}:6'sb101110)):s4),u0,{4{{3'sb010,(ctrl[1]?((ctrl[7]?(s6)>>(4'sb0110):3'sb100))^((ctrl[7]?(ctrl[0]?3'sb101:6'sb101001):(4'sb1000)>>(5'sb11101))):4'sb0011)}}}};
  assign y7 = (ctrl[0]?{1'b0,((1'sb0)>>>(($signed(4'b1001))>>(-(2'sb01))))>>(s0)}:{3{$signed(+($signed((3'b001)-(3'b110))))}});
endmodule
