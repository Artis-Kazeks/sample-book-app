FROM node:26
LABEL DESCRIPTION="Docker image for our small sample book app service"

WORKDIR /app
COPY package.json package.json
COPY index.js index.js

RUN npm install

EXPOSE 1050

CMD [ "index.js" ]
ENTRYPOINT [ "node" ]