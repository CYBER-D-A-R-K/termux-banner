termux-setup-storage -y
pkg install neofetch  -y
pkg install pv -y
cd /data/data/com.termux/files/usr/share/figlet
git clone https://github.com/CodeMyHub/my-banner.oi
cd my-banner.oi
chmod +x *
./banner.c
clear
cd $HOME
white='\e[1;37m'
green="\033[32m"
blue='\e[1;34m'
red='\e[1;31m'
yellow='\e[1;33m'
banner () {
echo -e "${red}
██████╗  █████╗ ██████╗ ██╗  ██╗     ██████╗ ██████╗  ██████╗
██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝     ██╔══██╗██╔══██╗██╔═══██╗
██║  ██║███████║██████╔╝█████╔╝█████╗██████╔╝██████╔╝██║   ██║
██║  ██║██╔══██║██╔══██╗██╔═██╗╚════╝██╔═══╝ ██╔══██╗██║   ██║
██████╔╝██║  ██║██║  ██║██║  ██╗     ██║     ██║  ██║╚██████╔╝
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝     ╚═╝     ╚═╝  ╚═╝ ╚═════╝"
echo -e "${red} coded : CYBER-D-A-R-K"
}
banner
install_kali () {
cd $PREFIX/etc
rm -rf motd
rm -rf motd-playstore
rm -rf motd-playstore.dpkg-old
rm -rf motd.dpkg-old
rm -rf bash.bashrc
apt update
apt upgrade -y
clear
touch bash.bashrc
echo -p ${Y}"please enter your banner name:"
sleep 1.0
read varbanner
echo "figlet -f 'ANSI Shadow.flf'  '      $varbanner' |lolcat -t " >> toolx.txt
cat "toolx.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cd $HOME/termux-banner/bann
cat "kali" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
cd $HOME
bash
}
installl_blackarch () {
cd $PREFIX/etc
rm -rf motd
rm -rf motd-playstore
rm -rf motd-playstore.dpkg-old
rm -rf motd.dpkg-old
rm -rf bash.bashrc
apt update
apt upgrade -y
clear
touch bash.bashrc
echo -p ${Y}"please enter your banner name:"
sleep 1.0
read varbanner

echo "figlet -f 'ANSI Shadow.flf' '      $varbanner' |lolcat -t " >> toolx.txt
cat "toolx.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cd $HOME/termux-banner/bann
cat "blackarc" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
cd $HOME
bash
}
echo -e "${red}[1]" "${yellow}kali linux"
echo -e "${red}[2]" "${yellow}blackarch "
echo -e "${red}[9]" "${yellow}Exit "
echo ""
read -p " Enter Your Choice : " option
sleep 1.0


if [[ $option == "1" ]]; then
     echo ${Y}"[*] Installing kali..."
     sleep 1.0
     echo
     install_kali
 elif [[ $option == "2" ]]; then
     echo ${Y}"[*] Installing blackarch..."
     sleep 1.0
     echo
     installl_blackarch 
elif [[ $option = "00" ]]; then
clear
ls
exit
else
echo ${R}"[*] Error, Select a option from the above list"
        echo
fi
