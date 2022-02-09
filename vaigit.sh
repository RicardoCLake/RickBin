#! /bin/bash

if [ $# -lt 1 ]; then
   echo "ATENCAO: Adicione como parametro a mensagem do commit ;)"
   exit 0;
fi
case $1 in
   *)
   git add .
   git commit -m "$1"
   git push
   #TODO: Case help
   #Case "add" not all
esac
