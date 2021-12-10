# ubuntu-setup
Basic Ubuntu setup with some hardening. UFW, Fail2ban, rkhunter and NTP <br> <br>

# How to use:


 - Clone the repo
```
git clone https://github.com/maxx080/ubuntu-setup.git
```
 - CD into the folder 
```
cd ubuntu-setup/
```
 - Set the setup.sh to executable
```
sudo chmod +x setup.sh
```
 - Run the script and await completion
```
./setup.sh
```
 - Reboot once completed.

# Changes made:

## SSH: 

- Max Auth tried have been set to 3
- Max sessions set to 4
- Premit root login has been disabled
- Permit empty passwords has been set to No
- X11 forwarding has been switched to No
- MOTD has been turned on along with last log
- Client Alive interval changed to 1200
- Password Authentication set to Yes
- SSH Protocol version has been changed to 2

## UFW:

- IPv6 has been disabled
- All outbound traffic is allowed
- All Inbound traffic is disallowed other than:
- 22 limit - SSH- change this if you change the ssh port
- 80 allow - HTTP
- 443 allow - HTTPS
- 53 allow - DNS

## Fail2ban:

- Bantime set to 60m
- Max retry has been set to 3

## NTP:

- Changed the servers to UK time
