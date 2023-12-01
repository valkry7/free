#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
# // color
GREENBO="\e[92;1m"
NC='\e[0m' # penutup
BGGREEN="\033[42;37m" # hijau
BGRED="\033[41;37m" # merah
BGYELLOW="\033[43;37m" # kuning
BGPURPLE="\033[45;37m" # ungu
PR="\033[1;35m"

clear
echo -e "${PR}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BGGREEN}       • SSH & OVPN MENU •        ${NC}"
echo -e "${PR}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo -e " [\e[36m•1\e[0m] Create SSH&OPENVPN "
echo -e " [\e[36m•2\e[0m] Triall SSH&OPENVPN"
echo -e " [\e[36m•3\e[0m] Reneww SSH&OPENVPN"
echo -e " [\e[36m•4\e[0m] Delete SSH&OPENVPN"
echo -e " [\e[36m•5\e[0m] Check login SSH&OPENVPN"
echo -e " [\e[36m•6\e[0m] Member SSH&OPENVPN "
echo -e " [\e[36m•7\e[0m] Delete User Exp SSH&OPENVPN"
echo -e " [\e[36m•8\e[0m] Set up Autokill SSH "
echo -e " [\e[36m•9\e[0m] Cek Multi Login SSH&OPENVPN"
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo ""
echo -e "${PR}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
