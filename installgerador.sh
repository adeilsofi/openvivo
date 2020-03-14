#!/bin/bash
declare -A cor=( [0]="\033[1;37m" [1]="\033[1;34m" [2]="\033[1;32m" [3]="\033[1;36m" [4]="\033[1;31m" [5]="\033[1;33m" )
barra="\033[0m\e[34m======================================================\033[1;37m"

fun_bar () {
comando="$1"
 _=$(
$comando > /dev/null 2>&1
) & > /dev/null
pid=$!
while [[ -d /proc/$pid ]]; do
echo -ne " \033[1;33m["
   for((i=0; i<10; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.2
   done
echo -ne "\033[1;33m]"
sleep 1s
echo
tput cuu1 && tput dl1
done
echo -e " \033[1;33m[\033[1;31m####################\033[1;33m] - \033[1;32m100%\033[0m"
sleep 1s
}

rm /root/installgerador.sh > /dev/null 2>&1
rm /bin/gerar > /dev/null 2>&1
cd /bin/
wget http://painelweb.tk/mkey/gerar > /dev/null 2>&1
chmod +x /bin/gerar
sed -i -e 's/\r$//' gerar
cd
rm /root/installgerador.sh > /dev/null 2>&1
#######################################################
rm /root/pkeyv23 > /dev/null 2>&1
rm $HOME/pkeyv23 > /dev/null 2>&1
rm /bin/keyv23 > /dev/null 2>&1
rm /var/www/html/installll > /dev/null 2>&1
rm /home/instttt > /dev/null 2>&1
rm /home/BD-Painel-v23.sql > /dev/null 2>&1
rm /home/painelwv23.zip > /dev/null 2>&1
#######################################################
rm /root/pkey > /dev/null 2>&1
rm $HOME/pkey > /dev/null 2>&1
rm /bin/key > /dev/null 2>&1
rm /var/www/html/install > /dev/null 2>&1
rm /home/inst > /dev/null 2>&1
rm /home/BD-Painel-v15.sql > /dev/null 2>&1
rm /home/painel15.zip > /dev/null 2>&1
#######################################################
rm /root/pkeyssh > /dev/null 2>&1
rm $HOME/pkeyssh > /dev/null 2>&1
rm /bin/keyssh > /dev/null 2>&1
rm /var/www/html/installl > /dev/null 2>&1
rm /home/instt > /dev/null 2>&1
rm /home/vip-vps.sh > /dev/null 2>&1
#######################################################
clear
echo ""
echo -e "$barra"
echo -e "\033[1;36m INICIANDO INSTALACAO"
echo ""
echo -e "\033[1;33m AGUARDE...UPDATE"
echo -e "\033[1;33m ATUALIZANDO LINUX PODE DEMORAR"
echo -e "$barra"
apt-get update > /dev/null 2>&1
# apt-get upgrade -y > /dev/null 2>&1
echo ""
#######################################################
echo -e "$barra"
echo -e "\033[1;36m INSTALANDO O APACHE2\033[0m"
echo ""
echo -e "\033[1;33m AGUARDE..."
echo -e "$barra"
apt-get install apache2 -y > /dev/null 2>&1
sleep 1s
echo ""
#######################################################
echo -e "$barra"
echo -e "\033[1;36m INSTALANDO SISTEMAS KEY\033[0m"
echo ""
echo -e "\033[1;33m AGUARDE..."
echo -e "$barra"
cd /var/www/html
wget http://painelweb.tk/install > /dev/null 2>&1
chmod +x /var/www/html/install
wget http://painelweb.tk/vip-key/installl > /dev/null 2>&1
chmod +x /var/www/html/installl
wget http://painelweb.tk/installll > /dev/null 2>&1
chmod +x /var/www/html/installll
cd
#######################################################
cd /bin/
wget http://painelweb.tk/key > /dev/null 2>&1
chmod +x /bin/key
wget http://painelweb.tk/vip-key/keyssh > /dev/null 2>&1
chmod +x /bin/keyssh
wget http://painelweb.tk/keyv23 > /dev/null 2>&1
chmod +x /bin/keyv23

#######################################################
cd /home/
wget http://painelweb.tk/inst > /dev/null 2>&1
chmod +x /home/inst
wget http://painelweb.tk/BD-Painel-v15.sql > /dev/null 2>&1
wget http://painelweb.tk/painel15.zip > /dev/null 2>&1

wget http://painelweb.tk/vip-key/instt > /dev/null 2>&1
chmod +x /home/instt

wget http://painelweb.tk/vipssh/vip-vps.sh > /dev/null 2>&1
chmod +x /home/vip-vps.sh
sed -i -e 's/\r$//' vip-vps.sh

wget http://painelweb.tk/instttt > /dev/null 2>&1
chmod +x /home/instttt
wget http://painelweb.tk/BD-Painel-v23.sql > /dev/null 2>&1
wget http://painelweb.tk/painelwv23.zip > /dev/null 2>&1
cd
sleep 1s
echo ""
cat /dev/null > ~/.bash_history && history -c
#######################################################
echo -e "$barra"
echo -e "       \033[1;31m ATENCAO"
echo -e "\033[1;36m MONTANDO O SEU LINK-IP\033[0m"
echo ""
echo -e "\033[1;33m AGUARDE..."
echo -e "$barra"
IP=$(wget -qO- ipv4.icanhazip.com)
if [[ -e "/var/www/html/install" ]]; then
sed -i "s;SEU-IP-AKI;$IP;g" /var/www/html/install > /dev/null 2>&1
fi
if [[ -e "/var/www/html/installl" ]]; then
sed -i "s;SEU-IP-AKI;$IP;g" /var/www/html/installl > /dev/null 2>&1
fi
if [[ -e "/var/www/html/installll" ]]; then
sed -i "s;SEU-IP-AKI;$IP;g" /var/www/html/installll > /dev/null 2>&1
fi
sleep 1s
clear
#######################################################
echo ""
echo -e "$barra"
echo -e "\033[1;32m PAINEL KEY INSTALADO COM SUCESSO!"

echo -e "$barra"
echo -e "\033[1;32m 5 SEGUNDOS ABRIRA O PAINEL KEY!"
echo -e "$barra"
sleep 5s
gerar

cat /dev/null > ~/.bash_history && history -c
rm /root/installgerador.sh > /dev/null 2>&1
rm /root/pkeyv23 > /dev/null 2>&1
rm $HOME/pkeyv23 > /dev/null 2>&1
rm /root/pkey > /dev/null 2>&1
rm $HOME/pkey > /dev/null 2>&1
rm /root/pkeyssh > /dev/null 2>&1
rm $HOME/pkeyssh > /dev/null 2>&1
echo 'gerar' >> /root/.bashrc
cat /dev/null > ~/.bash_history && history -c
