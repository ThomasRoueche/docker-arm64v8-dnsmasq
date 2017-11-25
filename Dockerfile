FROM arm64v8/alpine:3.6
#FROM hypriot/rpi-alpine-scratch
RUN apk update
RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
