FROM ubuntu

RUN apt-get update
RUN apt-get install -y software-properties-common wget dpkg openjdk-8-jdk openjdk-8-jre
CMD ["/install_ooffice.sh"]

RUN ls /opt/

EXPOSE 8100
CMD soffice --headless --accept="socket,port=8100;urp;" --nofirststartwizard
