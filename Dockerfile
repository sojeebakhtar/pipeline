FROM node:13.12.0-alpine
WORKDIR /app
ENV PORT=80
COPY public/ /app/public
COPY src/ /app/src
COPY package.json .
COPY package-lock.json .
RUN npm install --silent
EXPOSE $PORT
CMD ["npm", "start"]