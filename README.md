# Swagger/OpenAPI CLI Docker image

[![Docker Pulls](https://img.shields.io/docker/pulls/mgbi/swagger-cli.svg?maxAge=8600)][hub]
[![License](https://img.shields.io/github/license/mgbi/docker-swagger-cli.svg?maxAge=8600)]()

[hub]: https://hub.docker.com/r/mgbi/swagger-cli/

Docker image for [Swagger CLI](https://github.com/APIDevTools/swagger-cli).

It allows you to validate Swagger files or bundle them into a combined file.

## Installation

```
docker pull mgbi/swagger-cli
```

## Usage

See help.
```shell script
docker run --rm mgbi/swagger-cli
```

Validate schema from URL or a file.
```shell script
docker run --rm mgbi/swagger-cli validate YOUR_URL
docker run --rm -v $PWD/YOUR_FILE.yaml:/mnt/swagger.yaml mgbi/swagger-cli validate /mnt/swagger.yaml
```

Bundle a YAML file embedding referenced files:
```shell script
docker run --rm -v $PWD:/mnt mgbi/swagger-cli bundle --type yaml --output /mnt/swagger-bundle.yaml /mnt/swagger.yaml
```

## ReDoc HTML file

See how to bundle your Swagger docs into a zero-dependency HTML file:

https://github.com/MGBI/docker-redoc-cli

## More help?

See https://github.com/APIDevTools/swagger-cli for further information.
