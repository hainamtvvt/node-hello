FROM node:12
WORKDIR /app
ADD index.js *.json /app/
RUN npm install
EXPOSE 3000
CMD npm start