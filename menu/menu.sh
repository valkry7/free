#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)

# // color
GR="\e[92;1m"
YY="\033[1;33m"
NC='\e[0m' # penutup
BGGREEN="\033[42;37m" # hijau
BGRED="\033[41;37m" # merah
BGYELLOW="\033[43;37m" # kuning
BGPURPLE="\033[45;37m" # ungu
# // Domain
domain=$(cat /etc/xray/domain)

# // system Information
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
tram=$( free -m | awk 'NR==2 {print $2}' )
IPVPS=$(curl -s ipinfo.io/ip )
uptime="$(uptime -p | cut -d " " -f 2-10)"


#Status certificate
#modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
#modifyTime1=$(date +%s -d "${modifyTime}")
#currentTime=$(date +%s)
#stampDiff=$(expr ${currentTime} - ${modifyTime1})
#days=$(expr ${stampDiff} / 86400)
#remainingDays=$(expr 90 - ${days})
#tlsStatus=${remainingDays}
#if [[ ${remainingDays} -le 0 ]]; then
#	tlsStatus="expired"
#fi
# OS Uptime
# Download
#Download/Upload today
#dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
#utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
#ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
#dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
#uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
#tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
#dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
#umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
#tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
#Getting CPU Information
#cpu_usage+=" %"
#CITY=$(curl -s ipinfo.io/city )
#WKT=$(curl -s ipinfo.io/timezone )
#DAY=$(date +%A)
#DATE=$(date +%m/%d/%Y)
#cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
#cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
#freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
#uram=$( free -m | awk 'NR==2 {print $3}' )
#fram=$( free -m | awk 'NR==2 {print $4}' )
clear 
echo ""
echo -e "                           ${PR}┌─────────────────────────────────────────────────────┐${NC}"
echo -e "                           ${PR}│${NC}   Operating System   ${NC}:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`	
echo -e "                           ${PR}│${NC}   Total RAM                ${NC}:  $tram MB"
echo -e "                           ${PR}│${NC}   System Uptime        ${NC}:  $uptime "
echo -e "                           ${PR}│${NC}   Isp Name                  ${NC}:  $ISP"
echo -e "                           ${PR}│${NC}   Domain                     ${NC}:  $domain"	
echo -e "                           ${PR}│${NC}   Ip Vps                        ${NC}:  $IPVPS"	
echo -e "                           ${PR}│${NC}   Swap cpu                  ${NC}:  $cpu_usage %"	
echo -e "                           ${PR}└─────────────────────────────────────────────────────┘${NC}"
echo -e "                                                 ${PR}┌───────────────────────────────────┐${NC}"
echo -e "                                                 ${PR}│${NC} ${GR}1.)${NC}  SSH&OPENVPN      ${GR}6.)${NC}  RUNNING"
echo -e "                                                 ${PR}│${NC} ${GR}2.)${NC}  VMESS                      ${GR}7.)${NC}  BACKUP / RESTORE"
echo -e "                                                 ${PR}│${NC} ${GR}3.)${NC}  VLESS                       ${GR}8.)${NC}  CHANGE BANNER"
echo -e "                                                 ${PR}│${NC} ${GR}4.)${NC}  TROJAN-GO            ${GR}9.)${NC}  OTHER MANAGER"   
echo -e "                                                 ${PR}│${NC} ${GR}5.)${NC}  TROJAN GFW         ${YY}x.)${NC}  EXIT"               
echo -e "                                                 ${PR}└───────────────────────────────────┘${NC}" 
echo -e   ""
echo -e   ""
read -p " chose options [ 1 / 9 or x  ]  :  "  Lt
echo -e   ""
case $Lt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trgo ;;
5) clear ; menu-trojan ;;
6) clear ; running ;;
7) clear ; menu-backup ;;
8) clear ; nano /etc/issue.net ; exit ;;
9) clear ; menu-set
x) exit ;;
esac
