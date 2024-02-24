FROM public.ecr.aws/docker/library/node:20.11.1-bookworm

COPY ./app /app
WORKDIR /app
RUN npm i && npx -y playwright@1.41.1 install --with-deps
