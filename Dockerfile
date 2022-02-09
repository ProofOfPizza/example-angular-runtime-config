
FROM node:14-alpine as build

# copy code and run build
WORKDIR /app
COPY ./*.json ./
COPY ./src ./src
RUN npm install && npm run build

# run app with nginx
FROM nginx:stable-alpine
COPY --from=build /app/dist/example-angular-runtime-config /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
WORKDIR /start
COPY ./start-app.sh .
CMD [ "sh", "start-app.sh" ]

