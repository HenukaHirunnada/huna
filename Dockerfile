FROM node:18-alpine

RUN apk add --no-cache git curl bash

WORKDIR /app

# NodeJS වලින් ලියපු සරල Web-Proxy කේතයක් කෙලින්ම ලබාගැනීම
RUN git clone https://github.com/Kunet-Z/NodeJS-Proxy-Vless.git .

RUN npm install

ENV PORT=7860
EXPOSE 7860

CMD ["node", "index.js"]
