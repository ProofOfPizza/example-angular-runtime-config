#/bin/sh
if [ "${ENVIRONMENT}" = "prod" ]
then
  echo "starting app prod"
  mv /usr/share/nginx/html/config/config.prod.js /usr/share/nginx/html/config/config.js
elif [ "${ENVIRONMENT}" = "test" ]
then
  echo "starting app test"
  mv /usr/share/nginx/html/config/config.test.js /usr/share/nginx/html/config/config.js
else
  echo "starting app default / local"
fi
nginx -g "daemon off;"
