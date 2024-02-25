FROM public.ecr.aws/docker/library/node:20.11.1-bookworm

WORKDIR /app
COPY ./app .
RUN npm ci
RUN npx -y playwright@1.41.1 install --with-deps
