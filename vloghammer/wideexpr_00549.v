module wideexpr_00549(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ($signed((-(6'sb011010))|($signed((ctrl[0]?$signed(s5):$signed(4'sb1011))))))>>((s6)+($signed((1'sb0)<<<(s5))));
  assign y1 = {(ctrl[4]?(ctrl[2]?(ctrl[1]?(ctrl[0]?$signed(s3):(ctrl[3]?s1:2'sb11)):-({2'sb10,s5})):(2'sb11)>>>(5'b10110)):(ctrl[5]?(((ctrl[3]?4'sb0010:2'sb01))+(s5))-(((6'sb100100)>>>(4'b1101))|(5'sb01011)):(ctrl[6]?($signed(s5))>>((u7)-(2'b11)):+(s2)))),((ctrl[5]?(({s4,u2,5'sb00100})==($signed(s4)))<<({-(s3),(s2)>>(s2),6'sb101011,s1}):(ctrl[6]?(|(s4))>>>(+(u0)):3'sb011)))|({(((s1)>>>(s2))^(s4))+($signed((ctrl[4]?s7:s0))),{{$unsigned(1'sb1)},{5'sb01001,(s4)>>>(s5),(ctrl[6]?5'b11001:5'sb01001)},(ctrl[2]?{4{u1}}:{s0,s1,5'sb00000,s6}),u0},s4,$signed(((ctrl[0]?1'sb1:s7))^((s2)-(5'sb11001)))}),$signed(~|($unsigned(2'b01)))};
  assign y2 = (ctrl[7]?(((+(~&(2'b01)))<<<((ctrl[1]?(1'sb1)>>($unsigned((|(s6))<<<(u3))):$signed(2'sb11))))>($signed((((4'sb0101)>>>(4'b1000))|(s6))!=(-({3{s3}})))))<<<({({4{{4{{1{((ctrl[1]?2'sb00:s0))<=((s7)<<<(4'sb1101))}}}}}})>=((ctrl[2]?{4{3'b000}}:s3)),-(u4),(ctrl[1]?(($signed((ctrl[5]?4'sb0111:s5)))+(2'sb00))-((ctrl[4]?(ctrl[4]?(ctrl[5]?(4'sb1000)+(s5):$signed(u0)):(ctrl[5]?(ctrl[4]?6'sb000000:s3):(ctrl[4]?s5:s3))):+(+(u5)))):-(+((ctrl[1]?(ctrl[5]?(s3)>>>(s4):4'sb1010):6'sb001000)))),-((-((ctrl[0]?s4:-((ctrl[3]?3'sb011:s6)))))<<({1{(ctrl[4]?(ctrl[3]?{s5,s0,u4}:u6):4'sb1011)}}))}):$unsigned(({4{(ctrl[6]?(ctrl[5]?$signed(((3'sb111)==(2'sb01))>>(^(5'sb01001))):(s2)^~(-((s7)>=(s4)))):s4)}})>>(+($signed((ctrl[6]?$signed(4'sb0100):(-(1'sb0))-(5'sb11111)))))));
  assign y3 = 2'sb10;
  assign y4 = -($signed(s0));
  assign y5 = +($signed(s5));
  assign y6 = 4'b0011;
  assign y7 = {s5,!(((((ctrl[3]?((ctrl[7]?2'sb01:1'sb1))>>>(s6):(ctrl[3]?(5'sb11101)<<<(u6):(s0)>>(1'sb0))))<<($signed({3{$unsigned(3'sb010)}})))<<<(1'sb0))^~(4'sb0000)),(ctrl[1]?({$signed(((ctrl[7]?(s3)^~(s1):s4))^~((-(2'sb01))>>>(^(5'sb01001))))})>=((({$signed(s3),$signed(+(4'sb1011))})>>>($signed($signed((s2)>>(s3)))))<=((ctrl[7]?!(1'b0):u1))):6'b000000),$unsigned(({2'sb01,$signed(1'sb1),({1{((6'b000100)<<<(5'sb10001))!=(6'sb000111)}})^($signed(((s6)<<<(s4))>>(2'sb10)))})==((s7)<=(((u1)&(^((ctrl[4]?3'sb000:6'sb101100))))+($unsigned({2{(s0)<<(s0)}})))))};
endmodule
