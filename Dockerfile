FROM ubuntu

ENV PORT 8080

ADD ring /ring
ADD ringsh /ringsh
RUN chmod +x /ringsh
RUN chmod +x /ring

ENTRYPOINT ["/ringsh"]
