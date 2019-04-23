# README for kali-docker

Simple Dockerfile for running Kali Linux inside of a Docker container.

Example build command that takes advantage of the Dockerfile which creates a local Kali image named "kali-docker" with Metasploit and Recon-NG:
``` bash
docker build -t ${PWD##*/} .
```

Example run command which creates a container named "kali-docker" and exposes port 4242 for any container to host publishing and file sharing:
``` bash
HOST_SHARE="/private/var/tmp/share"
CTR_SHARE="/share"
mkdir "$HOST_SHARE" 2>/dev/null
docker run -it -p "127.0.0.1:4242:4242" --mount "type=bind,source=${HOST_SHARE},target=${CTR_SHARE}" --name ${PWD##*/} ${PWD##*/} 2>&1
```
