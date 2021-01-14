module wideexpr_00443(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((3'sb111)-({2{((+(2'sb10))>>({((4'sb0110)&(s2))>>(s2),(+(5'b00100))<<<({2{u3}}),({4'sb0101,u0,s0})>>>((2'sb11)>>>(s5)),(-(s1))-((4'sb0000)&(3'sb011))}))&($signed(((ctrl[7]?5'sb01111:2'sb11))-(((ctrl[2]?6'sb001001:1'sb0))<<((3'sb011)!=(3'b100)))))}}))<<<($signed($signed((ctrl[4]?$unsigned(6'sb011110):{-({2'sb01,(4'b1101)-(s1)}),$signed(({2{1'sb1}})<<<(+(5'b01101))),(6'sb100001)<<<({s5,$signed(s0)}),{4{(ctrl[5]?5'sb10001:$unsigned(u5))}}}))));
  assign y1 = ((s6)+(+((5'b01110)<<<(+((ctrl[5]?(6'sb011100)+(1'sb1):s4))))))&((-($signed({-((u0)<(1'sb1)),(6'sb100111)^~(5'sb11110)})))<<<({((ctrl[1]?+((u2)<<(2'b00)):s4))&(-(+((3'b101)<<<(s1)))),4'b1111}));
  assign y2 = +({({-(((ctrl[0]?{s1,s0,s2,s3}:-(5'sb11100)))<<<(((ctrl[0]?4'sb1110:4'sb0100))>>((1'sb1)>>(s5))))})-(u3),((s4)>>>(-((((ctrl[3]?u4:3'sb111))|(s3))<((1'sb1)&((u4)>(1'b1))))))<<(u3),((ctrl[6]?(((6'sb001001)&({s3,u0,s5}))^~({-(u2),5'sb11110,(s6)+(s0)}))>({6'b010010,s3,2'sb00}):(|((ctrl[0]?(ctrl[2]?s5:s5):+(s4))))>>(+(((5'sb11101)|(s2))&(4'sb0101)))))<<((s2)^~(3'sb001)),(|((ctrl[7]?+({2{$unsigned(3'sb001)}}):(s4)>>(({4{2'sb10}})>=({s6,s2})))))^(2'sb00)});
  assign y3 = u0;
  assign y4 = u0;
  assign y5 = $signed(($signed((ctrl[4]?{2{s4}}:(6'b100101)&(s7))))>=(u1));
  assign y6 = -((1'sb0)<=(4'sb0000));
  assign y7 = {4{$signed((ctrl[3]?$unsigned(({3{(($unsigned(2'sb01))<<($signed(3'sb101)))<<<({(ctrl[3]?2'b00:3'b010),+(s0),-(u7),(3'sb000)>>(s5)})}})<<<(s0)):$unsigned(6'sb010100)))}};
endmodule
