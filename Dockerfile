FROM debian:stretch-slim

WORKDIR /feeder

RUN apt-get update \
    && apt-get install -y wget \
    && wget https://repo-feed.flightradar24.com/linux_x86_64_binaries/fr24feed_1.0.18-5_amd64.tgz \
    && tar -xvzf *amd64.tgz \
    && mv fr24feed_amd64/fr24feed /usr/bin/fr24feed \
    && apt-get clean 



EXPOSE 8754

ENTRYPOINT ["/usr/bin/fr24feed"]
