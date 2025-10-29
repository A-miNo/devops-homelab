On your internet connected device downloaded your dependencies (Packages will be stored in /var/cache/apt/archives)
- sudo apt-get install --download-only isc-dhcp-server
-   dpkg -i isc-dhcp-common
-   dpkg -i isc-dhcp-server
- wget https://github.com/siderolabs/talos/releases/download/v1.11.3/talosctl-linux-amd64 -O /tmp/talosctl-linux-amd64
- chmod +x /tmp/talosctl-linux-amd64
- sudo cp /tmp/talosctl-linux-amd64 /usr/local/bin/talosctl
