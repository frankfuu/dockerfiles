FROM redis:5-alpine

RUN apk add stunnel

COPY start.sh /start.sh
COPY startinteractive.sh /startinteractive.sh

ENTRYPOINT ["/start.sh"]