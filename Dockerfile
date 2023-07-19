FROM alpine:3.18

# Install NTP package
RUN apk add chrony=4.3-r4 \
    && apk add --no-cache bash \
    && apk add openrc --no-cache

# Copy custom NTP configuration
COPY chrony.conf /etc/chrony/chrony.conf

#RUN chronyd -f /etc/chrony/chrony.conf
#ENTRYPOINT ["/etc/init.d/chrony"]
# Set the entry point to start NTP service

