module LEDman (in,out);
input [7:0] in;
output [7:0] out;
always @ ( in )
  begin
  casez(in)
  8'b00000000: out = 8'b00000000;
  8'b00000001: out = 8'b00000001;
  8'b0000001z: out = 8'b00000011;
  8'b000001zz: out = 8'b00000111;
  8'b00001zzz: out = 8'b00001111;
  8'b0001zzzz: out = 8'b00011111;
  8'b001zzzzz: out = 8'b00111111;
  8'b01zzzzzz: out = 8'b01111111;
  8'b1zzzzzzz: out = 8'b11111111;
  endcase
  end
endmodule
