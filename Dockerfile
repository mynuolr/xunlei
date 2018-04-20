FROM alpine:latest
WORKDIR /xware
ADD xunblei.tar.gz /xware
ADD thunder_mounts.cfg /usr/local/thunder/
RUN apk add --no-cache bash
RUN ip a
VOLUME /data
ADD monitor.sh /xware
RUN chmod u+x monitor.sh
RUN ls /xware
CMD ["./monitor.sh"]