module wideexpr_00731(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {u1,(ctrl[6]?+(5'sb11010):{(({s2,s0,s0,2'sb01})<<<(!(u2)))>>>(1'sb0)}),3'sb100,2'sb00};
  assign y1 = (ctrl[0]?s0:6'sb010000);
  assign y2 = {$unsigned(s7),($signed(({1{(ctrl[3]?s5:5'sb11000)}})<<<(({2{($signed($signed(1'sb1)))<<((ctrl[4]?s5:(ctrl[7]?s3:3'sb000)))}})<<((5'b01110)^(4'sb1010)))))==({({4{((ctrl[2]?$signed((1'sb0)>>(6'sb010101)):(-(5'sb10001))>>((s6)!=(1'sb1))))^~(($signed((s7)<<<(4'sb1010)))<<<({1{(3'sb011)>>(s5)}}))}})>=((ctrl[3]?(({(6'sb100001)>>(u2)})&(~^(5'sb11001)))^($signed(^(s6))):{4{1'sb0}})),(ctrl[6]?u1:((s4)==(({3{(ctrl[7]?s7:s4)}})<<<(((s0)-(s4))^~($signed(u3)))))!=(s6)),-(s6),4'sb1110})};
  assign y3 = $signed((+((ctrl[4]?s2:s7)))>>>($unsigned(s7)));
  assign y4 = (ctrl[2]?($signed((ctrl[1]?s6:(5'sb00100)^((ctrl[3]?(-(s6))<<(~^(1'sb1)):(+(s5))<<((s3)>>(3'sb111)))))))+((s3)<<<((ctrl[0]?3'sb000:-(+(!((s0)>>(u7))))))):((ctrl[0]?(4'sb1110)>>>(((-(-(6'sb001010)))^~(($signed(s4))-((ctrl[4]?3'sb110:s2))))|(-(($signed(3'sb111))-((ctrl[2]?1'sb0:s7))))):6'sb011111))|(+((ctrl[5]?s5:{5'sb11011,{3{$signed((4'sb0110)<(s3))}}}))));
  assign y5 = (ctrl[4]?{2{$unsigned({1{3'sb111}})}}:(s6)|((u1)<=(((4'sb1110)^(2'sb10))>((ctrl[3]?s7:2'sb01)))));
  assign y6 = (-($unsigned({-(s4),(s5)<<(2'b00)})))^(s6);
  assign y7 = 1'sb1;
endmodule
