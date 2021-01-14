module wideexpr_00720(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s6;
  assign y1 = u1;
  assign y2 = s3;
  assign y3 = ($unsigned(~|((^($signed(((-(s1))^(s2))>=((ctrl[0]?$signed(6'b101001):(ctrl[0]?1'sb1:3'sb111))))))-(~&(-($signed(+((s7)<<<(1'sb0)))))))))+(((ctrl[2]?2'sb01:!((ctrl[7]?{{3{$signed((6'sb100111)<<(1'sb1))}},(u6)<(1'sb0)}:{2{s3}}))))^(|(((ctrl[1]?$signed($signed((s2)>>(+(4'sb0100)))):{2{s2}}))|(+({2{(4'sb0011)>>>((-(4'sb0101))==(s6))}})))));
  assign y4 = (ctrl[6]?5'sb00001:($signed(s2))>>>({({4{u6}})>>>($signed(1'sb0))}));
  assign y5 = ({(-(~(s0)))^(s3),s1,(s4)-(s6)})!=(u4);
  assign y6 = (({2{{u2,4'sb1101}}})>>(s0))|($unsigned((1'sb0)-((s3)&($signed((ctrl[6]?(ctrl[0]?2'sb11:s2):$signed(2'b11)))))));
  assign y7 = {3{((ctrl[6]?(ctrl[5]?s2:s7):(ctrl[0]?(s0)^~(s3):s1)))>>>(((ctrl[3]?$signed(3'sb111):s1))|((1'sb1)^((3'sb000)<<(3'sb001))))}};
endmodule
