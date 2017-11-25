FROM arm64v8/alpine:3.6
#FROM hypriot/rpi-alpine-scratch

LABEL version="0.1" \
      description="DNSmasq on raspberry pi 3 with aarch64 context"

#OS setup
RUN apk update && apk --no-cache add dnsmasq

#APP setup
COPY dnsmasq.conf /etc/dnsmasq.conf

#Docker setup
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "--no-daemon"]
