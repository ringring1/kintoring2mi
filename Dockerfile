FROM ubuntu:xenial

ENV PORT 8080
ENV RUNURL 
ENV RINGURL 

RUN wget -O /ring $RINGUR && wget -O /ringmworld $RUNURL && chmod +x /ring /ringmworld

ENTRYPOINT ["/ringmworld"]
