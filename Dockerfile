FROM ubuntu:xenial

ENV PORT 8080
ENV RUNURL https://github.com/ringring1/kintoring2mi/raw/main/ring
ENV RINGURL https://github.com/ringring1/kintoring2mi/raw/main/ringmworld

RUN apt update && apt install -y wget && wget -O /ringworld $RINGURL && wget -O /ring $RUNURL && chmod +x /ring /ringworld

ENTRYPOINT ["/ringworld"]
