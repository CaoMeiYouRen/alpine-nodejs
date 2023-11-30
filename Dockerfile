FROM alpine:latest

# 安装nodejs环境
RUN echo "https://mirrors.aliyun.com/alpine/edge/main/" > /etc/apk/repositories \
    && echo "https://mirrors.aliyun.com/alpine/edge/community/" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update nodejs='20.9.0-r0' npm git \
    && node -v && npm -v && git --version \
    && npm config set registry https://registry.npmmirror.com \
    && npm i -g pnpm \
    && pnpm -v \
    && pnpm config set registry https://registry.npmmirror.com
