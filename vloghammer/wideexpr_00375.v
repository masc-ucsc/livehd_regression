module wideexpr_00375(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 1'sb1;
  assign y1 = (($signed(((-(+(((6'b101010)^~(u3))<<($unsigned(6'b100001)))))^((ctrl[1]?s5:-(2'sb01))))>((+($unsigned(4'sb1111)))>>>({-({4{3'sb010}}),(s7)^~($signed(s0))}))))|({((3'sb000)<((s5)>>({4{s7}})))<<(u7),{(^($signed({1{(6'sb100001)^~(1'sb0)}})))^~(u1),(-($signed(((ctrl[4]?u6:3'b101))>>>(s5))))>>>($unsigned((((u0)<<<(s5))!=((3'sb001)==(s3)))<=(&(u2)))),(((s5)>>>(^((s1)&(6'sb101111))))^(s7))^~($signed(5'sb01010))},(($signed((s1)>>({2{(5'sb10101)|(s7)}})))>>((u0)<(({(ctrl[1]?6'sb101111:s6),(ctrl[6]?5'sb01000:s0)})>=($unsigned((s3)<<<(s0))))))>>($signed((ctrl[0]?u6:{((2'sb01)>>(s1))>>>($signed(2'sb10))}))),(s1)>>((((($signed(6'sb000010))>>(s5))<<<($unsigned((s2)>>>(4'b1001))))>=({4{5'sb00011}}))>((ctrl[7]?{4{((s2)^(s7))<<<((2'sb00)^(u3))}}:s0)))}))==(3'b010);
  assign y2 = (s6)&(-((ctrl[4]?(ctrl[5]?s6:s3):(s0)|((ctrl[0]?(ctrl[3]?5'sb01001:s1):$signed(u0))))));
  assign y3 = (((2'sb01)<<<((ctrl[1]?$signed(1'sb0):(s2)>=(s5))))<<<(s4))-((((+(5'sb10010))<<(2'sb11))<<<((ctrl[4]?s4:5'sb00110)))^(6'sb010111));
  assign y4 = $signed(s5);
  assign y5 = s1;
  assign y6 = {2{(($signed({1{$signed((s6)^~(4'sb0001))}}))>>>(~&((ctrl[4]?-({4{2'sb10}}):(ctrl[3]?s0:5'sb10010)))))<<<(~^((6'sb010101)<<($unsigned((4'b0000)-((u5)|(u0))))))}};
  assign y7 = (ctrl[0]?((+(s6))==(($signed(({1{$signed(s3)}})>(^({4{s4}}))))<<((ctrl[7]?{2'sb01}:$signed($signed(~^(s3)))))))+(({($signed($signed((6'sb010011)-(6'sb101000))))^((ctrl[0]?(ctrl[6]?^(1'b1):u2):((1'b0)>(5'sb00100))&(u7))),(u1)==((u4)^({s5,(s6)>>(u3)})),s1,(ctrl[0]?-(-(s1)):s6)})^((s1)-(s4))):u5);
endmodule
