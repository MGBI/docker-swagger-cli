FROM node:alpine

ENV SWAGGER_CLI_VERSION 4.0.4

RUN npm install -g swagger-cli@${SWAGGER_CLI_VERSION}

ENTRYPOINT ["swagger-cli"]
CMD ["--help"]
