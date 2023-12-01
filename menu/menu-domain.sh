#!/bin/bash
# // izin
MYIP=$(wget -qO- ipinfo.io/ip);
# // color
GREENBO="\e[92;1m"
NC='\e[0m' # penutup
BGGREEN="\033[42;37m" # hijau
BGRED="\033[41;37m" # merah
BGYELLOW="\033[43;37m" # kuning
BGPURPLE="\033[45;37m" # ungu

clear 
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m        • DOMAIN MENU •            \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "" 
echo -e " [\e[36m•1\e[0m] CHANGE DOMAIN VPS"
echo -e " [\e[36m•2\e[0m] Renew Certificate DOMAIN"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e   ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; add-host ;;
2) clear ; certv2ray ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan" ; sleep 1 ; menu-domain ;;
esac
