FROM redis:5-alpine

RUN apk add stunnel

COPY start.sh /start.sh

ENTRYPOINT ["/start.sh"]