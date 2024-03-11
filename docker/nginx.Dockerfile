FROM nginx

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./repos/lila/public /lila/public

COPY ./nginx /nginx