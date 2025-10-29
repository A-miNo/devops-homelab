On your internet connected device downloaded your dependencies (Packages will be stored in /var/cache/apt/archives)
- sudo apt-get install --download-only isc-dhcp-server
-   dpkg -i isc-dhcp-common
-   dpkg -i isc-dhcp-server
- wget https://github.com/siderolabs/talos/releases/download/v1.11.3/talosctl-linux-amd64 -O /tmp/talosctl-linux-amd64
- chmod +x /tmp/talosctl-linux-amd64
- sudo cp /tmp/talosctl-linux-amd64 /usr/local/bin/talosctl

- sudo apt-get install --download-only docker.io
- echo registry:2 > image_list.txt
- talosctl image default >> image_list.txt
- ./docker-image-puller.sh image_list.txt
- docker run -d -p 6000:5000 --restart always --name registry-airgapped registry:2
- for image in `talosctl image default`; do docker pull $image; done
- for image in `talosctl image default`; do \
    docker save $image -o $image.tar; \
  done
- for image in `talosctl image default`; do \
    docker tag $image `echo $image | sed -E 's#^[^/]+/#127.0.0.1:6000/#'`; \
  done
- for image in `talosctl image default`; do \
    docker push `echo $image | sed -E 's#^[^/]+/#127.0.0.1:6000/#'`; \
  done
