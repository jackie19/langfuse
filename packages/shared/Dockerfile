FROM node:20-alpine AS alpine

RUN apk update && apk upgrade --no-cache libcrypto3 libssl3 libc6-compat

FROM alpine AS base
RUN npm install turbo@^1.13.3 --global
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
RUN corepack prepare pnpm@8.15.5 --activate


FROM base AS pruner

WORKDIR /app
COPY . .

RUN pnpm install
RUN pnpm run db:generate:local



# Generate the prisma-client-for-langfuse-linux
# docker build -t shared .
# docker create --name shared-ins shared
# docker cp shared-ins:/app/src/ ./tmp/
# docker rm shared-ins
# docker image rm shared -f
# 