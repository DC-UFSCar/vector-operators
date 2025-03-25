cd tests
iverilog -o tb *.v ../*.v
./tb > saida.out

if diff saida.out saida.ok >/dev/null; then
    echo "OK"
    exit 0
else
    echo "ERRO"
    exit 1
fi
