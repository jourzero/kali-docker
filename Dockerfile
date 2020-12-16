FROM kalilinux/kali-linux-docker

RUN apt-get -yqq update && apt-get -yqq dist-upgrade 

# Choose metapackages. Ref.: https://tools.kali.org/kali-metapackages
RUN apt-get -y install kali-linux
#RUN apt-get -y install kali-linux-all
#RUN apt-get -y install kali-linux-forensic 
#RUN apt-get -y install kali-linux-full
#RUN apt-get -y install kali-linux-gpu
#RUN apt-get -y install kali-linux-pwtools
#RUN apt-get -y install kali-linux-rfid
#RUN apt-get -y install kali-linux-sdr
#RUN apt-get -y install kali-linux-top10
#RUN apt-get -y install kali-linux-voip
RUN apt-get -y install kali-linux-web
#RUN apt-get -y install kali-linux-wireless

# Hand-pick more tools. Ref.: https://tools.kali.org/tools-listing
#RUN apt-get -y install arachni
#RUN apt-get -y install lsof
#RUN apt-get -y install metasploit-framework && service postgresql start && msfdb init
#RUN apt-get -y install nikto
#RUN apt-get -y install nmap
#RUN apt-get -y install netcat-traditional
#RUN apt-get -y install p0f
#RUN apt-get -y install proxychains
#RUN apt-get -y install recon-ng
#RUN apt-get -y install set
#RUN apt-get -y install sqlmap
#RUN apt-get -y install tshark

# Clean-up by auto-removing unneeded software and by cleaning the install cache.
RUN apt-get -yqq autoremove && apt-get clean

# Expose needed ports
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 3306/tcp
EXPOSE 5432/tcp
EXPOSE 8080/tcp
EXPOSE 9090/tcp
EXPOSE 8081/tcp
EXPOSE 8082/tcp
EXPOSE 8443/tcp

CMD [ "/bin/bash" ]
