FROM alpine:latest
RUN apk --update add redis

RUN ls
COPY ./file.sh /
# RUN chmod +x /file.sh

ENTRYPOINT ["/file.sh"]
# CMD []