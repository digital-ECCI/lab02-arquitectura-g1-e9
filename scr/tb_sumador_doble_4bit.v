`timescale 1ns/1ps
`include "sumador_doble_4bit.v"

module test_tb;

  reg [3:0] A, B;
  reg sel;  // 0 = suma, 1 = resta
  wire [3:0] resultado;
  wire co_final;

  sumador_doble_4bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .resultado(resultado),
    .co_final(co_final)
  );

  initial begin
    A = 4'd7;  // ejemplo inicial
    B = 4'd5;

    // Prueba de suma
    sel = 1'b0;  
    #5 $display("SUMA: %d + %d = %d (Co=%b)", A, B, {co_final,resultado});

    // Prueba de resta
    sel = 1'b1;  
    #5 $display("RESTA: %d - %d = %d (Co=%b)", A, B, {co_final,resultado});

    // Recorriendo varios valores
    for (A = 0; A < 8; A = A + 1) begin
      for (B = 0; B < 8; B = B + 1) begin
        sel = 1'b0; #5 $display("SUMA:  A=%d  B=%d  -> %d", A, B, {co_final,resultado});
        sel = 1'b1; #5 $display("RESTA: A=%d  B=%d  -> %d", A, B, {co_final,resultado});
      end
    end
  end

  initial begin: TEST_CASE
    $dumpfile("test_tb_sum_rst.vcd");
    $dumpvars(-1, uut);
    #5000 $finish;
  end

endmodule