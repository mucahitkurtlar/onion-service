FROM alpine:latest

COPY ./torrc /tmp/
RUN mkdir /tmp/website
COPY ./index.html /tmp/website/
COPY ./run.sh /run.sh

RUN apk --no-cache add tor python3 \
 && chmod a+w /tmp/torrc

USER tor

CMD ["/run.sh"]
