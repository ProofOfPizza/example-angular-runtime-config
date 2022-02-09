FROM nginx:stable-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
WORKDIR start
COPY ./start-app.sh .
EXPOSE 80
CMD [ "sh", "start-app.sh" ]
