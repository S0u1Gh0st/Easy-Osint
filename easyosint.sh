#!/bin/bash


main(){
	echo " _____      ____  ____  _  _      _____  
/  __/     /  _ \/ ___\/ \/ \  /|/__ __\  
|  \ _____ | / \||    \| || |\ ||  / \  
|  /_\____\| \_/|\___ || || | \||  | |  
\____\     \____/\____/\_/\_/  \|  \_/  
                                        "
	echo "1)Holehe:Busqueda por e-mail\t2)Recon-ng\n3)tGPT i.a chatbot\t4)Gohma\n5)Shodan"
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
	5)
	echo "Shodan (1)Stats|(2)Hosts\nopcion > ";
	read usrIn;
case $usrIn in
	1)
	echo "filters: ip, net, asn, hostname, port, isp, city, country, os, product, version, server, org, geo, device, has_|ipv6|screenshot|ssl|vuln https://www.shodan.io/search/filters \n Dork > ";
	read dork;
	shodan stats $dork;
	;;
	2)
	echo "host >";
	read host;
	shodan host $host;
	;;
	*)
	echo "Opcion de shodan desconocida\n";
	;;
esac
	;;
	*)
	echo "Error Desconocido\n";
	;;
esac
}
main
