FROM alpine:latest

RUN apk add --no-cache tini bash curl wget supervisor

ENV PORT=7860
EXPOSE 7860

CMD curl -sL https://raw.githubusercontent.com/hhhirunada/huna/main/run.sh | bash
