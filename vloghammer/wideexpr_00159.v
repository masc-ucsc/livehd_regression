module wideexpr_00159(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = -(~($signed((ctrl[1]?(ctrl[3]?(ctrl[7]?(3'sb001)^~(s1):+(s6)):s0):5'sb01001))));
  assign y1 = $unsigned(s4);
  assign y2 = $unsigned(s4);
  assign y3 = {|((|((ctrl[4]?6'sb011010:((5'sb11010)-(5'sb01101))|((ctrl[0]?s7:s4)))))&(2'b00)),s3,-(-(s1)),({3{s2}})<=((ctrl[2]?{4{$signed(1'sb0)}}:{|((!(4'b0110))>>(4'sb0011)),(ctrl[7]?(s1)+((u5)>(6'sb011100)):u3),u4,{s7,($signed(2'sb11))^(-(3'b100))}}))};
  assign y4 = !(($signed(($signed((u1)>>>(((u5)<<<(u1))-(s1))))-(((-((u4)>>(u7)))<<($signed($signed(3'sb111))))^(-(s5)))))+({({4{$signed(2'sb11)}})<<<(+(($signed(2'b00))>>>((s7)>>((ctrl[1]?3'b100:s2)))))}));
  assign y5 = 5'sb00101;
  assign y6 = ((2'sb10)<<<(($signed(4'b1001))-((s3)&((s3)^~(s4)))))<<<(($signed($signed(s6)))>>(s3));
  assign y7 = +(s7);
endmodule
