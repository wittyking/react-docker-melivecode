# https://www.youtube.com/watch?v=MNmWPZ6PdMs
# docker build -t react-docker-melivecode .
# docker run -d -p 3000:3000 --name react-docker-melivecode react-docker-melivecode
FROM node:20

WORKDIR  /app

COPY . /app

RUN npm ci

RUN  npm run build

EXPOSE 3000

CMD [ "npx", "serve", "-s", "dist", "--no-clipboard" ]
# CMD [ "npx", "serve", "-s", "build", "--no-clipboard" ]

# apt-get update
# apt-get install -y xsel