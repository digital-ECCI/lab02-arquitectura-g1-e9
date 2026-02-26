
module sumador_doble_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input        sel,   // 0 = suma, 1 = resta
    output [3:0] resultado,
    output       co_final,
    output       signo
);

wire [3:0] B_xor;      // B modificado para resta
wire [3:0] S1, S2;
wire Co1, enable_fix;

// Complemento a 1 si sel = 1
assign B_xor = B ^ {4{sel}};

// Primer sumador
sum_cuatro_bit SUM1 (
    .a(A),
    .b(B_xor),
    .ci(sel),  // si resta, añade +1 (complemento a dos)
    .co(Co1),
    .so(S1)
);

// Lógica de detección: NOT(Co1) AND sel
assign enable_fix = (~Co1) & sel;

// Entrada A del segundo sumador: si enable_fix=1 -> 0001, si no -> 0000
wire [3:0] A2 = {3'b000, enable_fix};

// Segundo sumador: corrige resultado si era negativo
sum_cuatro_bit SUM2 (
    .a(A2),
    .b(S1),
    .ci(1'b0),
   // .co(co_final),
    .so(S2)
);

// Resultado final
assign resultado = S2;
assign co_final = (sel==0) ? Co1:1'b0;
assign signo = enable_fix;

endmodule