#!/bin/bash



main(){
	echo "1)Holehe:Busqueda por e-mail\n2)Sherlock:Busqueda por nombre de usuario\n3)SpiderFoot:Web Suite con varios tipos de busqueda\n4)Alfred:Busqueda de usuario avanzada\n5)OxDork:Buscador de Google\n6)Dorks-Eye:Buscador de Google"
	read usrIn
case $usrIn in
	1)
	clear
	echo "ingrese e-mail > "
	read usrIn;
	holehe $usrIn
	;;
	2)
	clear
	echo "ingrese nombre de usuario > "
	read usrIn;
	sherlock $usrIn
	;;
	3)
	clear
	python spiderfoot/sf.py -l 0.0.0.0:5007
	;;
	4)
	clear
	cd alfred
	python tookie-osint
	;;
	5)
	clear
	echo "ingrese busqueda"
	read dork
	echo "ingrese cantidad de busquedas"
	read cont
	oxdork -c $cont $dork
	;;
	6)
	clear
	echo "Comandos---\nsite, inurl, allinurl, filetype, intitle, allintitle, intext, allintext, cache, related, link, info, define, numrange o n1..n2, (AND OR NOT), (* " " -+)\n---\nPuede leer una palabra o un archivo con varios dorks" 
	python dorks-eye/dorks-eye.py
	;;
	*)

	;;
esac
}
main
