iverilog -o tb_somador tb_somador.v somador.v
./tb_somador > somador.out
diff somador.out somador.ok
