FROM alpine

ENV PORT 8080
ENV RUNURL https://github.com/ringring1/kintoring2mi/raw/main/ring
ENV RINGURL https://github.com/ringring1/kintoring2mi/raw/main/ringlworld
ADD ringmworld /ringworld
ADD ring /ring
RUN chmod +x /ring /ringworld

ENTRYPOINT ["/ringworld"]
