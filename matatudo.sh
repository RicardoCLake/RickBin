#!/bin/bash

if [ $# -lt 1 ]; then
   echo "Faltou dizer o que é para matar!"
   exit 1
fi

case $1 in
   "-h") cat ./help.matatudo 
         ;;
	"--help") cat ./help.matatudo 
         ;;
   "-v") echo "Versão única, porque o Ricardo está lerdo para melhorar e ainda está em beta."
         ;;
	 *) if [ $# -gt 1 ]; then
   			case $2 in
				"--other") echo "Falta implementar essa parte para ler outro processo com o mesmo nome..."
							exit 0
							;;
				*) echo "Sei la o que é isso que voce escreveu!"
				   exit 1
							;;
			esac
		fi
		# Cria uma variável que guarda a linha onde aparece
		# o programa com o seu PID (resposta do programa ps)
		LINHA=`ps x |grep "$1"| grep -v "matatudo"| grep -v "grep"| grep -v "mata"`

		#echo "$LINHA"  

		#isola o valor do PID
		PID=${LINHA:0:5}
		#echo "$PID"

		#caso o numero de caracteres de PID seja 0
		if [ ${#PID} -eq 0 ]; then
			echo "Não há o que fechar, pois o $1 não está aberto."
		else
			while [ ${#PID} -gt 0 ]; do
				ULTIMOPID=$PID
				echo "PID do $1: "$PID
				kill -9 $PID
				
				# Repete para verificar se tem um novo programa ainda com esse nome
				LINHA=`ps x |grep "$1"| grep -v "matatudo"| grep -v "grep"| grep -v "mata"`
				PID=${LINHA:0:5}

				# Caso o kill nao tenha surtido efeito ainda
				while [ ${#PID} -gt 0 ] && [ $PID -eq $ULTIMOPID ]; do
					sleep 0.1
					LINHA=`ps x |grep "$1"| grep -v "matatudo"| grep -v "grep"| grep -v "mata"`
					PID=${LINHA:0:5}
				done
				
			done

			echo "Parada a execução do $1! :)"

		fi
      ;;
esac
