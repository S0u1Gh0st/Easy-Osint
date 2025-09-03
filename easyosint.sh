#!/bin/bash


main(){
	echo " _____      ____  ____  _  _      _____  
/  __/     /  _ \/ ___\/ \/ \  /|/__ __\  
|  \ _____ | / \||    \| || |\ ||  / \  
|  /_\____\| \_/|\___ || || | \||  | |  
\____\     \____/\____/\_/\_/  \|  \_/  
                                        "
	echo "1)Holehe:Busqueda por e-mail\n3)Recon-ng\n4)tGPT i.a chatbot\n5)Gohma"
	read usrIn
case $usrIn in
	1)
	clear
	echo "ingrese e-mail > "
	read usrIn;
	holehe $usrIn
	;;
	2)
	python ../recon-ng/recon-ng
	;;
	3)
	clear
	echo "preguntale a la ia > "
	read ask
	tgpt "$ask"
	;;
	4)
	clear
	python serpa1.py
	;;
	*)

	;;
esac
}
main
