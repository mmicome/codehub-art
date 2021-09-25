FROM node:14-alpine as builder

ENV PROJECT_ENV production
# ENV NODE_ENV production

WORKDIR /code

ADD . /code
RUN npm ci && npm run build

# 选择更小体积的基础镜像
FROM nginx:alpine
COPY --from=builder /code/dist /usr/share/nginx/html
ADD ./nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
WORKDIR /usr/share/nginx/html
RUN chmod -R a+rx *