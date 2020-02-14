FROM debian:stable-slim

LABEL maintainer="juliaaano@gmail.com"

RUN apt-get update && apt-get install -y gnupg2 curl

RUN curl -sSL https://www.juliaaano.com/key.asc | gpg --import -

ENTRYPOINT ["gpg", "--trust-model", "always", "--encrypt", "--armor", "--output", "-", "--recipient", "juliaaano"]

