FROM node:16
WORKDIR /app
COPY . /app
RUN npm install
RUN npm build
CMD ["npm","start"]