module tb_somador;

  reg [3:0] a, b; // registradores auxiliares a e b 
  wire [3:0] soma; // sinal extra para coletar o resultado

  somador uut(
    .a(a),
    .b(b),
    .soma(soma)
  );

  initial begin
    $monitor("a = %b, b = %b, soma = %b", a, b, soma);
    a = 0;
    b = 1;
    #1;
    a = 2;
    b = 3;
    #1;
    a = 6;
    b = 8;
    #1;
    a = 10;
    b = 5;
    #1;
    a = 8;
    b = 8;
    #1;
    a = 0;
    b = 0;
    #1;
    a = 15;
    b = 1;
    #1;
    a = 9;
    b = 8;
    #1;
    $finish;
  end;
endmodule
