Install dhcp server from offline_prep
- sudo dpkg -i /var/cache/apt/archives/isc-dhcp-common_4.4.3-P1-4ubuntu2_amd64.deb
- sudo dpkg -i /var/cache/apt/archives/isc-dhcp-server_4.4.3-P1-4ubuntu2_amd64.deb

Configure the dhcp server
- sudo vim /etc/dhcp/dhcpd.conf
- sudo vim /etc/default/isc-dhcp-server

Restart the dhcp service
- sudo systemctl restart isc-dhcp-server.service
