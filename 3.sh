#!/bin/bash

arq=x

while true; do
	
	echo -e "\nMenu"
	echo "===================================================
              r - Digite o nome de um arquivo que será processado.
	      b - Remova todos os dígitos do arquivo.
	      c - Substitua todos os caracteres que não são letras e nem dígitos do arquivo por ~
	      q - Saia do script."

	read -p "Escolha uma opção: " option

	case $option in	
		r)
			read -p "Informe o nome do arquivo: " $arq
			;;
		a)
			sed -E "s/[a-zA-Z]//g" $arq
			;;
		b)
			sed -E "s/[0-9]//g" $arq
			;;
		c)
			sed -E "s/[^a-zA-Z0-9]/~/g" $arq
			;;
		q)
				break
				;;
		*)
			echo "ERRO: Opção incorreta! Por favor, tente novamente!"
			;;
	esac
done	

