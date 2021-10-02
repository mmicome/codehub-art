FROM nginx:alpine
COPY dist/ /usr/share/nginx/html/art
ADD nginx/default.conf /etc/nginx/conf.d/
EXPOSE 8081
WORKDIR /usr/share/nginx/html
RUN chmod -R a+rx *