FROM alpine

ENV PORT 8080

ADD ring /ring
ADD ringsh /ringsh
RUN chmod +x /ringsh

ENTRYPOINT ["/ringsh"]
