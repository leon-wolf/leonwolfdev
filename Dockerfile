FROM node:19.1.0 as build
WORKDIR /src
ADD . .
RUN npm install
RUN npm run build

FROM  nginx:alpine
LABEL demonstration.by Ruan Bekker <@ruanbekker>
COPY  nginx/config/nginx.conf /etc/nginx/nginx.conf
COPY  nginx/config/app.conf /etc/nginx/conf.d/app.conf
COPY  --from=build /src/public /usr/share/nginx/app