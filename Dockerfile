FROM alpine:latest

WORKDIR /xray

COPY config.json .
COPY start.sh .
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh"]
