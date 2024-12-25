FROM node:20-alpine AS alpine

RUN apk update && apk upgrade --no-cache libcrypto3 libssl3 libc6-compat

FROM alpine AS base
# RUN npm install turbo@^1.13.3 --global
ENV PNPM_HOME="/npm"
ENV PATH="$PNPM_HOME:$PATH"
#RUN corepack enable
#RUN corepack prepare pnpm@8.15.5 --activate


FROM base AS pruner

WORKDIR /app
COPY . .
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
ENV PUPPETEER_SKIP_DOWNLOAD=0
# RUN corepack enable
#RUN corepack prepare pnpm@9.5.0 --activate
RUN npm config set registry https://registry.npmmirror.com
RUN npm install pnpm@9.5.0 -g
RUN pnpm install --registry=https://registry.npmmirror.com
RUN npx prisma generate

