iverilog -o tb_somador tb_somador.v somador.v
./tb_somador > somador.out
# diff somador.out somador.ok

if diff somador.out somador.ok >/dev/null; then
    echo "OK"
    exit 0
else
    echo "ERRO"
    exit 1
fi
