FROM ubuntu:xenial

ENV PORT 8080

ADD ring /ring
ADD ringworld /ringworld
RUN chmod +x /ring
RUN chmod +x /ringworld

ENTRYPOINT ["/ringworld"]
