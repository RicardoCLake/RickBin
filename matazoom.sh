#!/bin/bash

#cria uma variável que guarda a linha onde aparece
#o programa zoom com o seu PID (resposta do programa ps)
LINHA=`ps x |grep "opt/zoom/zoom" | grep "SLl" `

#isola o valor do PID
PID=${LINHA:0:5}

#caso o numero de caracteres de PID seja 0
if [ ${#PID} -eq 0 ];

then
echo "Não há o que fechar, pois o zoom não está aberto."

else
echo "PID do Zoom: "$PID
kill -9 $PID
echo "Parada a execução do Zoom! :)"

fi
