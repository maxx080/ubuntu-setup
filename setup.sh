#Strat with the basics
sudo apt update && sudo apt upgrade -y

#Copy sshd config over from cfg
sudo cp cfg/sshd_config /etc/ssh/sshd_config

#Reload sshd config now
sudo systemctl reload sshd

sudo apt install ufw fail2ban net-tools neofetch rkhunter ntp -y

#Copy NTP config with UK servers set
sudo cp cfg/ntp.conf /etc/ntp.conf

#disable IPv6 with ufw
sudo cp cfg/ufw /etc/default/ufw

#ufw rules
sudo ufw allow 53
sudo ufw limit 22
sudo ufw allow 80
sudo ufw allow 443

#Enable ufw
sudo ufw --force enable

#Copy fail2ban config file
sudo cp cfg/jail.local /etc/fail2ban/jail.local

sudo systemctl enable fail2ban

sudo systemctl start fail2ban

sudo systemctl enable ntp

echo $'\n'$"All configs copied! Please reboot as soon as possible."
