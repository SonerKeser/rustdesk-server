FROM debian:stable-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
COPY hbbs /usr/bin/hbbs
COPY hbbr /usr/bin/hbbr
RUN chmod +x /usr/bin/hbbs /usr/bin/hbbr
WORKDIR /root
EXPOSE 21115 21116 21116/udp 21117 21118 21119
