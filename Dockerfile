FROM kalilinux/kali-linux-docker

RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq dist-upgrade \
    && apt-get clean

# Add metapackages. Ref.: https://www.kali.org/news/kali-linux-metapackages/
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

# Add individual tools as needed. Ref.: https://tools.kali.org/tools-listing
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
