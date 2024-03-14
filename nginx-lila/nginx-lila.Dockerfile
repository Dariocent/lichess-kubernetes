FROM nginx

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY ./lila/public /lila/public

COPY ./nginx /nginx