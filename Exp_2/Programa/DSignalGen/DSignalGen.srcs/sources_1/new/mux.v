module signal_mux(
  input feed [23:0],
  input selector [1:0],
  output senal [7:0]
);

wire triang [7:0] = feed [23:16];
wire square [7:0] = feed [16:8];
wire sin [7:0] = feed [7:0];

always @ (selector);
begin
  case (selector)
    2'b00 : senal = triang;
    2'b01 : senal = square;
    2'b10 : senal = sin;
    default: senal = triang;
  endcase
end
endmodule // 