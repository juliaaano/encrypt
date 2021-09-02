FROM docker.io/debian:stable-slim

ARG CREATED_AT
ARG GITHUB_SHA

LABEL org.opencontainers.image.created="$CREATED_AT"
LABEL org.opencontainers.image.revision="$GITHUB_SHA"

LABEL org.opencontainers.image.title="GPG Docker Encryption"
LABEL org.opencontainers.image.description="Encrypt messages and data to juliaaano using GPG and Docker."
LABEL org.opencontainers.image.url="https://github/juliaaano/encrypt"
LABEL org.opencontainers.image.source="git@github.com:juliaaano/encrypt"
LABEL org.opencontainers.image.documentation="https://www.juliaaano.com/blog/2020/02/18/encryption-pgp-docker/"
LABEL org.opencontainers.image.authors="juliaaano"
LABEL org.opencontainers.image.vendor="juliaaano"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="1.0.0"

RUN apt-get update && apt-get install -y gnupg2 curl

RUN curl -sSL https://www.juliaaano.com/key.asc | gpg --import -

ENTRYPOINT ["gpg", "--trust-model", "always", "--encrypt", "--armor", "--output", "-", "--recipient", "juliaaano"]
