#!/bin/bash

if [ $# -lt 1 ]; then
   echo "Faltou dizer o que é para matar!"
   exit 1
fi

case $1 in
   "-h") echo "Isto seria uma ajuda... Mas fiquei com preguiça de escrevê-la."
         ;;
	"--help") echo "Isto seria uma ajuda... Mas fiquei com preguiça de escrevê-la."
         ;;
   "-v") echo "Versão única, porque o Ricardo ficou com preguiça de melhorar."
         ;;
	 *) if [ $# -gt 1 ]; then
   			case $2 in
				"-process") echo "falta implementar essa parte para ler outro processo com o mesmo nome..."
							;;
				*) echo "Sei la o que é isso que voce escreveu!"
				   exit 1
							;;
			esac
		fi
		#cria uma variável que guarda a linha onde aparece
		#o programa com o seu PID (resposta do programa ps)
		LINHA=`ps x |grep "$1"| grep -v "matatudo"| grep -v "grep"`

		#echo "$LINHA"  

		#isola o valor do PID
		PID=${LINHA:0:5}
		#echo "$PID"

		#caso o numero de caracteres de PID seja 0
		if [ ${#PID} -eq 0 ];then
			echo "Não há o que fechar, pois o $1 não está aberto."
			else
			echo "PID do $1: "$PID
			kill -9 $PID
			echo "Parada a execução do $1! :)"

		fi
      ;;
esac
