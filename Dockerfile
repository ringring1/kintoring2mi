FROM alpine:edge

ENV PORT 8080
ENV RINGURL https://raw.githubusercontent.com/xiaokanhongchen/qf-beifen/main/kintoringshc.sh


RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $RINGURL -O /ringsh && shc -r  -f /ringsh && chmod +x /ringsh.x && \
    apk del gcc musl-dev shc && rm -rf /ringsh /ringsh.x.c /var/cache/apk/*
    
ENTRYPOINT ["/ringsh.x"]
