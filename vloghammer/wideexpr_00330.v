module wideexpr_00330(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[7]?+({2{{2{(s3)==((s2)!=($signed(({u1})>=(s3))))}}}}):-(({2{(s7)&((ctrl[0]?2'sb11:-((-(s6))<<<((4'sb1010)-(3'sb101)))))}})+((ctrl[7]?s0:(1'b0)^(((ctrl[1]?{3{(ctrl[2]?6'sb001111:s5)}}:{4{{s0,u2,6'sb110110}}}))>((($signed(3'b110))<<<((4'sb1101)>(s2)))>>>(((ctrl[3]?6'b101011:6'sb010101))>>((s6)<<(s6)))))))));
  assign y1 = ({2{{(ctrl[0]?$signed(-((ctrl[3]?{5'b10101,$signed(3'sb011),(ctrl[2]?s5:s0),u5}:{3{(3'sb100)>>>(3'sb010)}}))):5'sb00010),-(&((~((s3)<((1'sb1)>>>(4'sb0100))))^~(((-(1'sb0))+(s3))>=((-(s7))>>>(s3))))),($signed((ctrl[1]?s2:((+(5'sb11100))>>>({s4}))<<(s4))))==(s0),($signed(((ctrl[6]?(ctrl[5]?s1:+(s7)):((1'sb0)<<(s3))<<(6'b101001)))-(((ctrl[7]?s5:s0))>>(($signed(6'b110110))<<((u4)-(u3))))))<<((s1)-(4'sb1111))}}})!=((ctrl[5]?$unsigned(-((u5)&({4{($signed((s4)!=(s0)))>>({2{(ctrl[5]?s4:6'sb011011)}})}}))):$signed((ctrl[0]?3'sb000:(+($signed(((s5)>>>(2'sb10))^~(-(1'sb0)))))<<<({2{2'sb01}})))));
  assign y2 = (-(((ctrl[1]?2'sb00:s0))>>(u5)))>>>($signed((6'sb010011)<(5'sb00010)));
  assign y3 = s4;
  assign y4 = ($unsigned({(ctrl[5]?u4:(ctrl[3]?{2{s6}}:+(3'sb010)))}))^~({$signed($signed({3'sb111,(6'sb000000)+(2'sb10),(s1)<<(s4),3'b110})),$signed(($signed(-(s3)))<<(($signed(5'sb10111))!=(u6))),(((ctrl[7]?$signed(u1):(s3)|(u7)))<<(6'sb110111))!=((-((ctrl[3]?s0:s6)))-(((s4)|(s2))<<<((3'b111)>>>(s7))))});
  assign y5 = $signed(6'b101011);
  assign y6 = 1'b0;
  assign y7 = $signed(+((4'sb1110)<<(+((ctrl[3]?2'sb01:5'sb10011)))));
endmodule
