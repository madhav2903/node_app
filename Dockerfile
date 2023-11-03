FROM node:10-alpine

RUN mkdir -p /home/fs-lp-madhav/node_project/node_modules && chown -R node:node /home/fs-lp-madhav/node_project

WORKDIR /home/fs-lp-madhav/node_project

COPY package*.json ./

USER fs-lp-madhav

RUN npm install

COPY --chown=node:node . .

EXPOSE 8082

CMD [ "node", "app.js" ]
