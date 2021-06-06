!/bin/bash
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
echo ""
clear

function main(){
clear
echo -e $red"                ◆━━━━━━━▣✦▣━━━━━━━━◆◆━━━━━━━▣✦▣━━━━━━━━◆"
echo -e "           " $ylo"        [1] upload.     "           
echo -e "           " $red"        [2] dowmload.  "
echo -e $red"                ◆━━━━━━━▣✦▣━━━━━━━━◆◆━━━━━━━▣✦▣━━━━━━━━◆"
echo -e -n $red"I"$cy"N"$ylo"P"$blue"U"$pink"T"$ylo">:"
read finput
case $finput in
     1) clear
        cd $HOME
	cd /data/data/com.termux/files/home/Ip-Trace/__init__
	python upload-files.py
     ;;
     2) clear
	cd $HOME
        cd /data/data/com.termux/files/home/Ip-Trace/__init__
	python downloder.py
     ;;
      
     *) figlet -f big "      Invalid" | lolcat
        figlet -f big "       INPUT " | lolcat
        main
     ;;

esac
}
main
