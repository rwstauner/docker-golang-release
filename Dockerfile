FROM golang:alpine
MAINTAINER Randy Stauner <randy@magnificent-tears.com>

RUN apk --update add \
    ca-certificates \
# repo meta
    git \
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

RUN go get github.com/mitchellh/gox

CMD ["/bin/bash"]
