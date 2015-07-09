FROM asosso/maxscale
MAINTAINER Yoshikawa Ryota <yoshikawa@rrreeeyyy.com>

ENV MAXSCALE_HOME /usr/local/skysql/maxscale
ADD MaxScale.cnf /usr/local/skysql/maxscale/etc/

EXPOSE 4006
EXPOSE 4008
EXPOSE 4442 
EXPOSE 6603 

ENTRYPOINT ["/usr/local/skysql/maxscale/bin/maxscale", "-d"]
