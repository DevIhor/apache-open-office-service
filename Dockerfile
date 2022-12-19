FROM ubuntu

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y openjdk-8-jdk openjdk-8-jre
RUN wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.12/binaries/en-US/Apache_OpenOffice_4.1.12_Linux_x86-64_install-deb_en-US.tar.gz
RUN tar -zxvf Apache_OpenOffice_4.1.12_Linux_x86-64_install-deb_en-US.tar.gz
RUN cd en-US/DEBS/
RUN dpkg -i *.deb
RUN cd desktop-integration
RUN dpkg -i *.deb
RUN apt clean

RUN ls /opt/

EXPOSE 8100
CMD soffice --headless --accept="socket,port=8100;urp;" --nofirststartwizard
