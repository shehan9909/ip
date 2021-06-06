re='\e[1;31m'
white='\e[1;37m'
blue='\e[1;34m'
Escape="\033";
ref="${Escape}[31m";
gf="${Escape}[32m";
lgf="${Escape}[92m"
yf="${Escape}[33m";
bf="${Escape}[34m";
cf="${Escape}[36m";
ee="${Escape}[0m";
pu='\033[1;35m'
cy='\e[0;36m'
lg='\e[1;32m'
ye='\e[1;33m'
function pcheak(){
lg='\e[1;32m'
ye='\e[1;33m'
blue='\e[1;34m'
re='\e[1;31m'
clear
echo " "
echo -e $lg " +-------------------------------------------+"
echo -e "  |         ${ye}TERMUX IP Tracer  Basic-Setup    ${lg} |"
echo -e $lg	" +-------------------------------------------+"
which sl-whatsapp > /dev/null 2>&1
if [ "$?" -eq "0" ]
then
echo " "
echo -e $ye "[${re}  【✔】${ye}]......................${lg}[ whatsapp ]"
echo " "
sleep 2
else
echo -e $lg "[¤] sl-whatsapp Is Not Install"
sleep 1
echo -e $blue " [ ! ] Installing whatsapp........."
pip install sl-whatsapp -y > /dev/null 2>&1
echo " "
fi
which curl > /dev/null 2>&1
if [ "$?" -eq "0" ]
then
echo -e $ye "[ ${re} 【✔】${ye}]......................${lg}[  CURL  ]"
which twilio > /dev/null 2>&1
echo ""
sleep 2
else
echo ""
echo "   [-] curl  not found. Installing curl "
fi
which toilet > /dev/null 2>&1
if [ "$?" -eq "0" ]
then
echo -e $ye "[ ${re} 【✔】${ye}]......................${lg}[ Toilet ]"
which toilet > /dev/null 2>&1
echo ""
sleep 2
else
echo ""
echo "   [-] url_requests  not found. Installing curl "
fi
which curl > /dev/null 2>&1
if [ "$?" -eq "0" ]
then
echo -e $ye "[ ${re} 【✔】${ye}]......................${lg}[ Lolcat ]"
which lolcat > /dev/null 2>&1
echo ""
sleep 2
else
echo ""
echo "   [-] lolcat  not found. Installing lolcat "
fi
echo " "
echo -e $ye "[${re} ¤ ${ye}] This Could Take 2-3 Minutes "
echo "       Installing pakegs"
echo " "
apt install toilet -y 
gem install lolcat 
pip install twilio
clear
pip install tabulate
pkg install termimage -y
pip install pillow
pip install tqdm
pip install qrcode



echo -e $lg ""
figlet -f small "Installation"
figlet -f small " Completed " | lolcat
echo -e $blue " "
echo -n " Press enter to continue............."
read fil
clear
bash hack.sh
}
function chei(){
clear
figlet -f smmono9 "IP TRACER" | lolcat
echo -e $lg " [¥] Checking your Internet Connection "
echo " "
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
then
echo -e $ye " [-] Internet:${re} FAILED"
echo ""
echo -e $lgf "  Active A Internet Connection"
echo ""
echo -e $ye "                Updating Fall"
echo "Exit" | lolcat
sleep 2
exit
else
echo -e $ye " [√] Internet:${lg} CONNECTED"
sleep 2
fi
}
requests
chei
pcheak

