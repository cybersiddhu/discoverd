FROM flynn/busybox
MAINTAINER Siddhartha Basu <sidd.basu@gmail.com>

ADD ./build/discoverd /bin/discoverd
ADD run.sh /bin/run
RUN chmod +x /bin/run
EXPOSE 1111

CMD ["/bin/run"]
