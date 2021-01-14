module wideexpr_00193(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 6'sb011001;
  assign y1 = ((ctrl[1]?(ctrl[1]?s3:$signed(s7)):(ctrl[3]?($signed((ctrl[5]?6'sb111010:2'sb00)))|(+(+($signed((4'b1111)<=(u2))))):$signed(2'sb00))))<=((((ctrl[5]?s2:-({s5,(+(6'sb000111))<<<((s3)>=(u3)),6'sb001001,$signed((ctrl[5]?s1:4'sb1101))})))>>>({2{{+(((3'sb111)==(2'sb11))<<<(6'sb111010)),(((1'sb0)^~(s7))|(s2))<<(((u4)>>>(s2))-((u6)!=(s4))),-(~&((s6)|(s5))),(~&((ctrl[4]?u0:s0)))^~(-((2'sb00)>>>(6'b010100)))}}}))&((((s6)>>(((^(6'b100111))^(2'b11))>(({3{2'sb00}})<=({s5,s4,5'b01101,4'b0111}))))|((ctrl[7]?($signed(s1))&($signed((s3)<<<(u1))):-(($signed(s5))!=(+(5'b00111))))))>>>((($signed(((s0)+(1'sb1))-($signed(3'sb101))))^~(+(s4)))>>>(({2{+((ctrl[4]?4'sb1111:s5))}})&(((s3)|(s4))!=({$signed(2'sb00),(1'b0)^(s2),!(s4),3'b111}))))));
  assign y2 = -($signed((ctrl[2]?$signed({$signed(s5)}):-((s1)<<<(5'b01101)))));
  assign y3 = $signed($signed(2'sb01));
  assign y4 = +(((ctrl[3]?+(!(4'b0100)):$signed({3{$signed((ctrl[2]?({1'sb0,4'sb1101})+(u2):$unsigned(6'sb010001)))}})))==($signed(s2)));
  assign y5 = ((s2)+((($signed(((1'sb1)^~(s4))<<($unsigned(6'b110111))))>>(({3{4'sb0011}})<<<(4'sb1001)))^~(2'sb10)))-(2'sb10);
  assign y6 = (ctrl[7]?s2:((((ctrl[2]?s1:((s1)&(s2))<<(1'b1)))+(1'sb1))>>($signed((ctrl[6]?((ctrl[0]?s0:4'sb1011))-(s2):6'sb100110))))^~(((ctrl[5]?((ctrl[1]?(s7)^~(6'sb011110):(3'sb111)<<(s2)))+((ctrl[6]?$signed(2'sb10):$signed(6'sb010010))):s4))<<(1'sb1)));
  assign y7 = ({1'b1})<<<($signed($unsigned({(ctrl[4]?$unsigned(4'sb1110):1'b1),s1,({4{6'sb001101}})^~(~^(5'sb10011)),(-(u4))&(+(5'sb01011))})));
endmodule
