# Generated.

FROM golang:alpine
MAINTAINER Randy Stauner <randy@r4s6.net>

RUN apk --update add \
    ca-certificates \
# repo meta
    git \
    gnupg \
# build
    make \
# cli tests
    bash \
    bats \
# better ps for testing
    procps \
# packaging releases
    zip \
  && rm -rf /var/cache/apk/*

RUN go get -u \
    github.com/mitchellh/gox \
    golang.org/x/lint/golint \
  && cp /go/bin/* /usr/local/bin/

CMD ["/bin/bash"]
