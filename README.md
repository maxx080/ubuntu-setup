# ubuntu-setup
Basic Ubuntu setup with some hardening. UFW, Fail2ban, rkhunter and NTP <br> <br>

## How to use:

 - Make a new folder with a name you want
 - $mkdir %FolderNameHere%

 - Clone the repo into the folder
 - $git clone %RepoAddressHere%

CD into the folder 
$cd %FolderNameHere%/

Set the setup.sh to executable <br>
$sudo chmod +x setup.sh <br>

Run the script and await completion <br>
$ ./setup.sh <br> <br>

Reboot once completed. <br> <br>

Changes made: <br>

SSH: <br>

Max Auth tried have been set to 3<br>
Max sessions set to 4<br>
Premit root login has been disabled<br>
Permit empty passwords has been set to No <br> 
X11 forwarding has been switched to No  <br>
MOTD has been turned on along with last log <br>
Client Alive interval changed to 1200 <br>
Password Authentication set to Yes <br>
SSH Protocol version has been changed to 2 <br>

UFW: <br>

IPv6 has been disabled <br>
All outbound traffic is allowed <br>
All Inbound traffic is disallowed other than: <br>
22 limit #change this if you change the ssh port <br>
80 allow <br>
443 allow <br>
53 allow <br>

Fail2ban: <br>

Bantime set to 60m <br>
Max retry has been set to 3 <br>

NTP: <br>

Changed the servers to UK time <br>
