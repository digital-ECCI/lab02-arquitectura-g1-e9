
module sum_cuatro_bit(
    input [3:0]a,
    input [3:0]b,
    input ci,
    output co,
    output [3:0]so
);
wire C1,C2,C3;

sum_un_bit_uno sum_uno(
    .A(a[0]),
    .B(b[0]),
    .Ci(ci),
    .Co(C1),
    .So(so[0])
);

sum_un_bit_uno sum_dos(
    .A(a[1]),
    .B(b[1]),
    .Ci(C1),
    .Co(C2),
    .So(so[1])
);

sum_un_bit_uno sum_tres(
    .A(a[2]),
    .B(b[2]),
    .Ci(C2),
    .Co(C3),
    .So(so[2])
);

sum_un_bit_uno sum_cuatro(
    .A(a[3]),
    .B(b[3]),
    .Ci(C3),
    .Co(co),
    .So(so[3])
);


endmodule