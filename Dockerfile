FROM node:10-alpine
COPY . .
RUN npm install
EXPOSE 5000
CMD [ "node", "index.js" ]