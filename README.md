# devops-homelab

Objective
- Build an airgapped Devops homelab network using Kubernetes

Requirements
- Deploy a 3 node Kubernetes cluster using Talos
- Harbor server for container registry
- Gitlab server for version control
- metallb for access to the Gitlab/Harbor servers
- DHCP server to manage address space
- traefik as a CNI
- DNS server to manage namespace
- CEPH as CSI
