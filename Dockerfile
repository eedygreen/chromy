FROM alpine:3.18

# Install NTP package
RUN apk add chrony=4.3-r4 \
    && apk add --no-cache bash \
    && apk add openrc --no-cache

# Copy custom NTP configuration
COPY chrony.conf /etc/chrony/chrony.conf
LABEL org.opencontainers.image.source https://github.com/eedygreen/chrony