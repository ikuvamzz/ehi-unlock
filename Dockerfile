FROM node:latest

RUN git clone https://github.com/ikuvamzz/hctool /root/hctool
WORKDIR /root/hctool/
RUN git clone https://github.com/ikuvamzz/hctool
ENV TZ=Asia/Colombo
RUN npm update --save
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN npm install node-telegram-bot-api
RUN npm install sync-request

CMD ["node", "HCDrill.js"]
