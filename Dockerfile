FROM alpine

ENV PORT 8080
ENV RUNURL https://github.com/ringring1/kintoring2mi/raw/main/ring
ENV RINGURL https://github.com/ringring1/kintoring2mi/raw/main/ringmworld

RUN wget -O /ring $RINGUR && wget -O /ringworld $RUNURL && chmod +x /ring /ringworld

ENTRYPOINT ["/ringworld"]
