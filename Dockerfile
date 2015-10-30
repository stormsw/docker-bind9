FROM ubuntu
MAINTAINER Alexander.Varchenko@gmail.com
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends\
      apt-transport-https \
      bind9 \
      dnsutils \
      build-essential \
      curl \
      ca-certificates \
      lsb-release && rm -rf /var/lib/apt/lists/*;
ADD named.* /tmp/etc/bind/
ADD zones/* /tmp/etc/bind/zones/
RUN cp -rf /tmp/etc/bind/. /etc/bind/ && chown -R bind:bind /etc/bind
USER bind
EXPOSE 53/udp
VOLUME ["/etc/bind"]
CMD ["named","-g","-d","5"]
