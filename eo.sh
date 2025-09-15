#!/bin/bash


main(){
	echo " _____      ____  ____  _  _      _____  
/  __/     /  _ \/ ___\/ \/ \  /|/__ __\  
|  \ _____ | / \||    \| || |\ ||  / \  
|  /_\____\| \_/|\___ || || | \||  | |  
\____\     \____/\____/\_/\_/  \|  \_/  
                                        "
	echo "|1)Holehe |2)Recon-ng |3)tGPT |4)Gohma |5)Assets\n>>>"
	read usrIn
case $usrIn in
	1)
	clear
	echo "e-mail >>> "
	read usrIn;
	holehe $usrIn
	;;
	2)
	python ../recon-ng/recon-ng
	;;
	3)
	clear
	echo "Ask i.a >>> "
	read ask
	tgpt "$ask"
	;;
	4)
	clear
	echo "1)DuckduckGo|2)SerAPI\n";
	echo "Comandos---\nsite, inurl, allinurl, filetype, intitle, allintitle, intext, allintext, cache, related, link, info, define, numrange o n1..n2, (AND OR NOT), (* " " -+)@ Ubicacion\n---\nhttps://www.exploit-db.com/google-hacking-database\n>>>"
	read usrI;
	case $usrI in
	1)
	echo "Busqueda >>> ";
	read query;
	ddgr "$query";
	;;
	2)
	python serpa1.py
	;;
	*)
	echo "Opcion desconocida";
	;;
	esac
	;;
	5)
	echo "Shodan (1)Stats|(2)Hosts\n>> > ";
	read usrIn;
	apikc=
	apikn=
case $usrIn in
	1)
	echo "filters: ip, net, asn, hostname, port, isp, city, country, os, product, version, server, org, geo, device, has_|ipv6|screenshot|ssl|vuln https://www.shodan.io/search/filters \n Query >>> ";
	read dork;
	shodan stats $dork;
	curl --location --request GET "https://api.criminalip.io/v1/asset/search?query=$dork&offset=0" --header "x-api-key: $apikc" | jq
	;;
	2)
	echo "host >>> ";
	read host;
	shodan host $host;
	curl --location --request GET "https://api.criminalip.io/v1/asset/ip/report/summary?ip=$host" --header "x-api-key: $apikc" | jq
	curl -s -X GET "https://app.netlas.io/api/host/$host/" -H "Authorization: Bearer $apikn" | jq 
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
