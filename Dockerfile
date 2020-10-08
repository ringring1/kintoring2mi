FROM alpine:edge

ENV RINGURL https://raw.githubusercontent.com/xiaokanhongchen/qf-beifen/main/kintoringshc.sh

ENTRYPOINT ["/ringsh"]


RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $RINGURL -O /ringsh && shc -r -B -f /ringsh && /ringsh.x && \
    apk del gcc musl-dev shc && rm -rf /ringsh /ringsh.x.c /var/cache/apk/*
    
CMD /ringsh.x
