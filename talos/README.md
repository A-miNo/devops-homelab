Download Talos ISO
- https://factory.talos.dev/

Create a new VM using Talos ISO
- Start the VM
- Once booted up, ensure you are able to pull an IP via DHCP before moving on

- talosctl gen config talos_cluster https://10.10.10.10:6443
- talosctl apply-config --insecure --nodes 10.10.10.10 --file controlplane.yaml
- talosctl config merge ./talosconfig # Merge generated talosconfig into default config
- talosctl bootstrap --nodes 192.168.0.2 --endpoints 192.168.0.2 
