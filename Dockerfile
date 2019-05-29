FROM kalilinux/kali-linux-docker

RUN apt-get -y update 
RUN apt-get -y install metasploit-framework
RUN service postgresql start && msfdb init
RUN apt-get -y install recon-ng
RUN apt-get -y install tshark

EXPOSE 4242/tcp

CMD [ "/bin/bash" ]

